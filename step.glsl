//Write a shader that splits the screen into two parts: the left half should be black and the right half should be red. Your shader should work for any screen resolution. Consider using the iResolution uniform variable and gl_FragColor to control the position of the split.

//The shader should avoid using branching or conditional statements in its code, and instead rely on the step function to determine the color of each pixel.

uniform vec2 iResolution;

void main() {
  gl_FragColor = vec4(step(iResolution.x / 2.0, gl_FragCoord.x), 0.0, 0.0, 1.0);
}
