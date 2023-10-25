//A shader is a set of instructions that are executed simultaneously for each pixel on the screen.
//It can produce different color result depending on the pixel data such as position on the screen. So try to use the normalized coordinates of the pixel to get the horizontal gradient from black to red.

uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  gl_FragColor = vec4(uv.x, 0.0, 0.0, 1.0);
}
