uniform vec2 texturetexelsize;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    vec4 omliggendekleuren[4];
    omliggendekleuren[0] = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x - texturetexelsize.x, v_vTexcoord.y) );
    omliggendekleuren[1] = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x + texturetexelsize.x, v_vTexcoord.y) );
    omliggendekleuren[2] = texture2D( gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y -texturetexelsize.y) );
    omliggendekleuren[3] = texture2D( gm_BaseTexture,  vec2(v_vTexcoord.x, v_vTexcoord.y + texturetexelsize.y) );
    gl_FragColor = omliggendekleuren[0] * 0.2 + omliggendekleuren[1] * 0.2 + omliggendekleuren[2] * 0.2 + omliggendekleuren[3] * 0.2 + gl_FragColor * 0.2;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

