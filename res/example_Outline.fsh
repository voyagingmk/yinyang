varying vec2 v_texCoord;
varying vec4 v_fragmentColor;

uniform vec3 u_outlineColor;
uniform float u_threshold;
uniform float u_radius;


void main()
{
    vec4 normal = texture2D(CC_Texture0, vec2(v_texCoord.x, v_texCoord.y));
    normal.r = 1.0 - normal.r;
    normal.g = 1.0 - normal.g;
    normal.b = 1.0 - normal.b;
    normal = normal * normal.a;
    gl_FragColor = v_fragmentColor * normal;
   

}
