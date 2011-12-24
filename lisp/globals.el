;; Turn on global-subword-mode, to recognize word boundaries
;; in camelCase
(global-subword-mode t)

;; Make a symbol appear where we last set the mark
(global-visible-mark-mode)

;; Automagically opened compressed files if I `Find file` them
(auto-compression-mode 1)

; Highlight the current line 
(global-hl-line-mode t)

; Put line numbers to the left
(global-linum-mode t)

; If a file a buffer is attached to changes, automatically update the buffer
(global-auto-revert-mode t)

(require 'rainbow-delimiters)
(define-global-minor-mode global-rainbow-mode rainbow-delimiters-mode
 (lambda () (rainbow-delimiters-mode 1)))

 ;; Turn on global rainbow-delimiters mode, which colors (),{},[] to
 ;; show matching/deepness
(global-rainbow-mode)

(provide 'load-globals)

