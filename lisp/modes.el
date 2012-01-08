(setq here "/emacs/lisp/")

(add-here "languages")

; Loads ido-mode and various tweaks for it
(require 'load-ido)

; Load all the global always-on modes
(require 'load-globals)

; Reconjigger the modeline to my liking
(require 'load-modeline)

; Set up the my color theme, and all the colors for various things
(require 'load-colors)

; Set up my org-mode files and tweaks
(require 'load-org)

; Set up autocompletion based on dabbrev
(require 'load-autocomplete)

; Set up saving current place in buffer and other save-related tweaks
(require 'load-saves)

; mode-compile does smart compiling based on buffer type
(require 'load-compile)

; Load my ibuffer customizations and so forth
(require 'load-buffer)

; Nifty package that draws a line in the buffer at fill-column
(require 'load-fci)

; Sets up the popup-kill-ring package, which allows for easy navigation of the
; kill ring
(require 'load-popup)

(require 'load-languages)

(require 'find-things-fast)

(provide 'load-modes)
