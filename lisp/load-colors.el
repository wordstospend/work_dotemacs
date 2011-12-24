; Set up my cool theme that is nice and dark
(require 'solarized-dark-theme)

(require 'rainbow-delimiters)

; Create a global mode for rainbow-mode
(define-global-minor-mode global-rainbow-mode rainbow-delimiters-mode
 (lambda () (rainbow-delimiters-mode 1)))


 ;; Turn on global rainbow-delimiters mode, which colors (),{},[] to
 ;; show matching/deepness
(global-rainbow-mode)

(provide 'load-colors)
