(setq here "/dotemacs/lisp/")
;(add-here "languages")
;(load-library "load-languages")


(require 'fill-column-indicator)
(setq auto-mode-alist (cons '("\\..*" . fci-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pm" . perl-mode) auto-mode-alist))
;(setq auto-mode-alist (cons '("\\.pm" . fci-mode) auto-mode-alist))
(add-hook 'perl-mode-hook '(lambda () (fci-mode 1)))
(setq-default fill-column 80)
(setq default-frame-alist '((background-color . "antiquewhite")
			  (forground-color)))
;(tramp-set-completion-function "ssh"
;           '((tramp-parse-sconfig "/etc/ssh_config")
;             (tramp-parse-sconfig "~/.ssh/config")))