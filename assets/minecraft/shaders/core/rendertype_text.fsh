#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

float easeInOutQuad(float x) {
    return x < 0.5 ? 2 * x * x : 1 - pow(-2 * x + 2, 2) / 2;
}

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
    
    vec4 shader_check = round(texture(Sampler0,texCoord0)*255);
    bool special_shader = false;
    // cinematic thing is 99,179,45
    if (shader_check.rgb == vec3(99,179,45)) {
        special_shader = true;
        vec2 uv = gl_FragCoord.xy / ScreenSize;
        uv = uv * 2 - 1;
        float cutoff = (1-fragColor.a);
        if (round(vertexColor.b) == 1) {
            if (abs(uv.y) < max(vertexColor.r, easeInOutQuad(cutoff))) {
                discard;
            } 
        } else {
            if (abs(uv.y) < min(vertexColor.r, easeInOutQuad(1-cutoff))) {
                discard;
            } 
        }
        fragColor = vec4(vertexColor.ggg,1);
    }

    if (color.a < 0.1 && !special_shader) {
        discard;
    }
    
}
