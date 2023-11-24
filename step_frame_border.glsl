//Create a shader program that draws a rectangular frame border around the screen. The width of the top and bottom borders should be 0.2 in normalized coordinates, while the width of the right and left borders should be 0.1. The color of the border should be red.

//The shader should avoid using branching or conditional statements in its code, and instead rely on the step function to determine the color of each pixel.

uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  float left = uv.x;
  float right = 1.0 - uv.x;
  float top = 1.0 - uv.y;
  float bottom = uv.y;

  float borderLeft = step(0.1, left);
  float borderRight = step(0.1, right);
  float borderTop = step(0.2, top);
  float borderBottom = step(0.2, bottom);

  float border = min(min(borderLeft, borderRight), min(borderTop, borderBottom));
  vec3 backgroundColor = vec3(0.0);
  vec3 borderColor = vec3(1.0, 0.0, 0.0);
  vec3 finalColor = mix(borderColor, backgroundColor, border);
  
  gl_FragColor = vec4(finalColor, 1.0);
}
