//Find the sum of three vectors in the program (blueChannel, redChannel, alphaChannel), and print the result using gl_FragColor variable.

void main() {
  vec4 blueChannel = vec4(0.0, 0.0, 0.75, 0.0);
  vec4 redChannel = vec4(0.5, 0.0, 0.0, 0.0);
  vec4 alphaChannel = vec4(0.0, 0.0, 0.0, 1.0);
  
  gl_FragColor = vec4(redChannel.r, 0.0, blueChannel.b, alphaChannel.a);
}
