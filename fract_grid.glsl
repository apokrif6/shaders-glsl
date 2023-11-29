//Write a shader that draws a grid. Each cell in the grid should be 50x50 pixels in size, with a margin of 10 pixels between cells.

//The shader should avoid using branching or conditional statements in its code, and instead rely on the fract and step functions to determine the color of each pixel.

void main() {
    float cellSize = 50.0;
    float margin = 10.0;
  
    vec2 cell = gl_FragCoord.xy / (cellSize + margin);
  
    float cells = step(margin / (cellSize + margin), fract(cell.x));
    cells *= step(margin / (cellSize + margin), fract(cell.y));

    gl_FragColor = vec4(cells, 0.0, 0.0, 1.0);
}
