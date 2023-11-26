//Create a shader program that divides the normalized coordinate range of [0, 1] into 10 equal intervals across the entire width of the texture. Each interval should be 0.1 in normalized coordinates. The left half of each interval should be black, and the right half should be red. As a result, the program should produce a sequence of alternating black and red intervals across the entire width of the texture.

//The shader should avoid using branching or conditional statements in its code, and instead rely on the fract and step functions to determine the color of each pixel.

uniform vec2 iResolution;

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = gl_FragCoord.xy / iResolution.xy;

  float fracted = fract(uv.x * 10.0);
  float intervals = step(0.5, fracted);
  
  gl_FragColor = vec4(intervals, 0.0, 0.0, 1.0);
}
