/// src_chance(percentage)
var percent = argument[0]; // bw 0-1
percent = clamp(percent, 0, 1);
return (random(1) < percent);
