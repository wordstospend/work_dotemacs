(require 'load-ido)

; Load all the global always-on modes
(require 'load-globals)

; Reconjigger the modeline to my liking
(require 'load-modeline)

; Set up the my color theme, and all the colors for various things
(require 'load-colors)

; Provide it so it can be required, so theres an obvious dependency graph and you can just require and not worry about the location/whether or not its compiled(as opposed to load-file)
(provide 'load-modes)

