(require 'load-ido)

; Load all the global always-on modes
(require 'load-globals)

; Reconjigger the modeline to my liking
(require 'load-modeline)

; Set up the my color theme, and all the colors for various things
(require 'load-colors)

(require 'load-org)

(require 'auto-install)

(require 'crosshairs)
; Provide it so it can be required, so theres an obvious dependency graph and you can just require and not worry about the location/whether or not its compiled(as opposed to load-file)

; Set up auto-config with the default configurations
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs/site-lisp/ac-dict")
(ac-config-default)
(ac-flyspell-workaround)



(provide 'load-modes)

