#version 330

#moj_import <minecraft:globals.glsl>

layout(std140) uniform LightmapInfo {
    float SkyFactor;
    float BlockFactor;
    float NightVisionFactor;
    float DarknessScale;
    float BossOverlayWorldDarkeningFactor;
    float BrightnessFactor;
    vec3 BlockLightTint;
    vec3 SkyLightColor;
    vec3 AmbientColor;
    vec3 NightVisionColor;
} lightmapInfo;

in vec2 texCoord;

out vec4 fragColor;

float get_brightness(float level) {
    return level / (4.0 - 3.0 * level);
}

vec3 notGamma(vec3 color) {
    float maxComponent = max(max(color.x, color.y), color.z);
    float maxInverted = 1.0f - maxComponent;
    float maxScaled = 1.0f - maxInverted * maxInverted * maxInverted * maxInverted;
    return color * (maxScaled / maxComponent);
}

float parabolicMixFactor(float level) {
    return (2.0 * level - 1.0) * (2.0 * level - 1.0);
}

void main() {
    // Calculate block and sky brightness levels based on texture coordinates
    float block_level = floor(texCoord.x * 16) / 15;
    float sky_level = floor(texCoord.y * 16) / 15;

    // Curved brightness response
    float block_brightness = pow(get_brightness(block_level), 1.35) * lightmapInfo.BlockFactor;
    float sky_brightness = pow(get_brightness(sky_level), 1.2) * lightmapInfo.SkyFactor;

    // Ambient + night vision
    vec3 nightVisionColor = lightmapInfo.NightVisionColor * lightmapInfo.NightVisionFactor;
    vec3 color = max(lightmapInfo.AmbientColor, nightVisionColor);


    // Warm sunset skylight
    vec3 skyTint = vec3(1.10, 0.98, 0.78);
    color += lightmapInfo.SkyLightColor * sky_brightness * skyTint;

    // Warm sunset block light
    vec3 warmBlockLight = vec3(1.0);

    // Smooth curved mix for brighter blocks
    vec3 BlockLightColor = mix(
        warmBlockLight,
        vec3(1.0),
        pow(parabolicMixFactor(block_level), 1.25)
    );

    //3 -53 12 -32 -48 3
    //-6 -48 12 -32 -53 18
    if (
        (all(greaterThan(CameraBlockPos - CameraOffset, vec3(-32, -53, 3))) &&
        all(lessThan(CameraBlockPos - CameraOffset, vec3(3, -47, 15))))
        ||
        (all(greaterThan(CameraBlockPos - CameraOffset, vec3(-32, -53, 12))) &&
        all(lessThan(CameraBlockPos - CameraOffset, vec3(-6, -47, 18))))
        ||
        (all(greaterThan(CameraBlockPos - CameraOffset, vec3(-23, -55, -68))) &&
        all(lessThan(CameraBlockPos - CameraOffset, vec3(24, -50, -21))))
    ) {
        BlockLightColor = vec3(0.8, 0.2, 0.2);
    }

    color += BlockLightColor * block_brightness;

    // Faint golden sunset wash
    color *= vec3(1.04, 0.98, 0.82);

    // Slight cinematic contrast curve
    color = pow(color, vec3(1.15));

    // Apply boss overlay darkening effect
    color = mix(color, color * vec3(0.7, 0.75, 0.85), lightmapInfo.BossOverlayWorldDarkeningFactor);

    // Apply darkness effect scale
    color = color - vec3(lightmapInfo.DarknessScale);

    // Clamp before gamma
    color = clamp(color, 0.0, 1.0);

    vec3 notGammaColor = notGamma(color);
    color = mix(color, notGammaColor, lightmapInfo.BrightnessFactor);

    fragColor = vec4(color, 1.0);
}