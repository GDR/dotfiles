corner-radius = 5.0;

shadow = true;

backend = "glx";

blur: {
  method = "dual_kawase";
  strength = 10;
  background = false;
  background-frame = false;
  background-fixed = false;
}
blur-background-exclude = [
  "name ~= 'slop'",
]