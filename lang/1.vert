// Vertex shader (file extension: .vert)
#version 330 core

layout(location = 0) in vec3 aPosition;
out vec3 vColor;

void main()
{
    gl_Position = vec4(aPosition, 1.0);
    vColor = vec3(1.0, 0.0, 0.0); // Red color
}
