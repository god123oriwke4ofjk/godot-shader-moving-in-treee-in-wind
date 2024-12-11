shader_type spatial;

uniform float sway_speed = 1.0;
uniform float sway_strength = 0.05;

void vertex() {
    // Calculate sway based on vertex color
    float sway_factor = COLOR.r * sway_strength;

    // Apply wind effect to x-axis
    VERTEX.x += sin(VERTEX.x * TIME + sway_speed) * sway_factor;

    // Apply wind effect to y-axis
    VERTEX.y += sin(VERTEX.y * TIME + sway_speed * 1.123) * sway_factor;

    // Apply wind effect to z-axis
    VERTEX.z += sin(VERTEX.z * TIME + sway_speed * 1.3123) * sway_factor;
}
