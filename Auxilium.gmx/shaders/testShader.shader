 //
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 resolution;
float circle(vec2 pos, float size){
    size  = 1./size;
    size *= 10.;
    
    float aspect = resolution.x/resolution.y;
    vec2 normCoord = vec2((gl_FragCoord.x/resolution.x)*aspect, (gl_FragCoord.y/resolution.y));
    float colour = distance(normCoord, pos);
    
    return smoothstep(colour * size, colour * size + 0.02, 1.);
}
void main()
{
    vec4 test = vec4(1.0,1.0,1.0,1.0);
    float testCircle = circle(vec2(0.5, 0.5), 1.);
    vec4 passThrough = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = vec4(testCircle, passThrough.yzw);
    //gl_FragColor = test;
}

