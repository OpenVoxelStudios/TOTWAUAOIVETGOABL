#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>
#moj_import <minecraft:perlin.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec3 pos;

out vec4 fragColor;

void main() {
    vec3 camera_pos = CameraBlockPos - CameraOffset;
    vec3 global_pos = camera_pos + pos;

    vec4 color = texture(Sampler0, texCoord0);

    color *= vertexColor * ColorModulator;
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);



    vec4 shader_check = round(texture(Sampler0, texCoord0 + (vec2(2,0) / textureSize(Sampler0,0)))*255);
    bool special_shader = false;

    if (shader_check.rgb == vec3(52, 139, 97)) {
        special_shader = true;
        fragColor = texture(Sampler0, texCoord0) + cnoise(global_pos/30)/10;
    }


    shader_check = round(texture(Sampler0, texCoord0 + (vec2(128,0) / textureSize(Sampler0,0)))*255);
    if (shader_check.rgb == vec3(69, 105, 107)) {
        special_shader = true;
        vec3 godray_color = vec3(255,230,166)/255;
        fragColor = vec4(godray_color,texture(Sampler0, texCoord0).r/0.9);
        if (fragColor.a < 0.001) discard;
    }
    #ifdef ALPHA_CUTOUT
    if (color.a < ALPHA_CUTOUT && !special_shader) {
        discard;
    }
    #endif
}
