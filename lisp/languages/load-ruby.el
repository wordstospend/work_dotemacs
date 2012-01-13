(add-to-list 'auto-mode-alist '("\\.rb" . ruby-electric-mode))
(add-hook 'ruby-mode-hook 'ruby-electric-mode)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".rhtml$" . html-mode) auto-mode-alist))

(require 'ruby-electric)

(provide 'load-ruby)
