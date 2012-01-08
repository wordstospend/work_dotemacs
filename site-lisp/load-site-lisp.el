(setq here "/emacs/site-lisp/")

(add-here "magit")
(add-here "bookmark+")
(add-here "elpa/js2-mode-20090814")
(add-here "elpa/org-20111220/")
(add-here "elpa/org-20111220/contrib/lisp/")
(add-here "predictive")
(add-here "auto-complete")
(add-here "find-things-fast/")

(require 'js2-mode)

; js2mode kinda freaks out with autopair, so just let js2 do its thing without autopair
(add-hook 'js2-mode-hook
          '(lambda () (setq autopair-dont-activate t)))

(require 'magit)
