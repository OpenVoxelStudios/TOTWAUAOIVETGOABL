#version 330

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:sample_lightmap.glsl>
#moj_import <minecraft:perlin.glsl>
#moj_import <minecraft:vines.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec3 pos;
flat out int vines;
out vec4 raw_vertexColor;

void main() {
    raw_vertexColor = Color;
    pos = Position;
    vines = 0;
    vec4 shader_check = round(texture(Sampler0,UV0)*255);
    if (shader_check.rgb == vec3(146,87,142)) {
        //vines
        vines = 1;
        pos = vines_vertex(pos,1-Color.r);
    }

    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
    

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);

    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * sample_lightmap(Sampler2, UV2);

    texCoord0 = UV0;
    
}
