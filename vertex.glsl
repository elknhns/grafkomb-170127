precision mediump float;
#define pi 3.14
attribute vec2 vPosition;
uniform float theta;
uniform float scale;

void main() {
  gl_Position = vec4(vPosition, 0.0, 1.0); //wajib diisi

  mat4 translasi = mat4(
    1.0, 0.0, 0.0, 0.35,   // dx = 0.35
    0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );

  mat4 skalasi = mat4(
    scale, 0.0, 0.0, 0.0,
    0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = gl_Position * skalasi * translasi;
}
