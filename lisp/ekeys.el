(setq mac-command-modifier 'meta)

(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-a") 'back-to-indentation)
(global-set-key (kbd "M-m") 'move-beginning-of-line)

;; M-x can be hard to hit...
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(defalias 'qrr 'query-replace-regexp)          ; Define alias for query replace, which is long to M-x

;; Shadow vc-mode's keyboard, since magit is usually more useful to me
(global-set-key (kbd "C-x v s") 'magit-status)

;; Set up a nice keybinding for iedit
(global-set-key (kbd "M-'") 'iedit-mode)

;; The original M-z is really hard to hit, and zap-to-char is pretty useful, so...
(global-set-key (kbd "C-x C-k") 'zap-to-char)

; Make it so that C=; toggles the commented-ness of a region
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)

; Some org shortcuts
(global-set-key "\C-cr" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key "\M-n" 'hippie-expand)

; Ibuffer is just superior to list-buffers, so lets use that
(global-set-key (kbd "C-x C-b") 'ibuffer)

; get the mode-compile stuff together
(global-set-key (kbd "C-c c") 'mode-compile)
(global-set-key (kbd "C-c k") 'mode-compile-kill)

(global-set-key (kbd "C-c C-t") 'fci-mode)

(global-set-key "\M-y" 'popup-kill-ring)
