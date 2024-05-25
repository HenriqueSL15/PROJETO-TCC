// Draw Event for obj_healthbar
var bar_length = 10; // Width of the health bar when at full health
var bar_height = 100;  // Height of the health bar

// Calculate the width of the current health relative to the maximum health
var health_percentage = current_health / max_health;
var current_bar_length = bar_height * health_percentage;

// Set the colour of the health bar based on the health percentage
var bar_color = make_color_rgb(255 * (1 - health_percentage), 255 * health_percentage, 0);

// Draw the background of the health bar (usually gray or another neutral color)
draw_set_color(c_red);
draw_rectangle(x, y, x + bar_length, y + bar_height, false);

// Draw the current health as a rectangle on top
draw_set_color(c_lime);
draw_rectangle(x, y, x + bar_length, y + current_bar_length, false);