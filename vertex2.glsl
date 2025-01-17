precision mediump float;
#define pi 3.14
attribute vec2 vPosition;
attribute vec3 vColor;
varying vec3 fColor; // fragment shader
uniform float theta;
uniform float scale;

void main() {
  fColor = vColor;
  gl_Position = vec4(vPosition, 0.0, 1.0); //wajib diisi

  mat4 translasi = mat4(
    1.0, 0.0, 0.0, -0.35,   // dx = -0.35
    0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );

  mat4 rotasi = mat4(
    cos(theta), -sin(theta), 0.0, 0.0,
    sin(theta), cos(theta), 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = gl_Position * rotasi * translasi;
}
