Prism.languages.gcode = {
	'comment': /;.*|\B\(.*?\)\B/,
	'string': {
		pattern: /"(?:""|[^"])*"/,
G21       ; Set units to millimeters
G90       ; Use absolute coordinates
M107      ; Turn off cooling fan
G28 X Y Z ; Home all axes
G92 E0    ; Reset extruder position
G1 F1500  ; Set feedrate to 1500 mm/min
G1 X50 Y50 Z0.3 F500 ; Move to starting position at 500mm/min
G1 X60 Y50 Z0.3 F2000 ; Draw a line at 2000mm/min
G1 X60 Y40 Z0.3 F2000 ; Continue drawing the line
G1 X50 Y40 Z0.3 F2000 ; Finish the line
G1 X50 Y50 Z0.3 F500 ; Return to starting position
G28 X Y   ; Home X and Y axes
M84       ; Disable motors
