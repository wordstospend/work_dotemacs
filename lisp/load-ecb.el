(setq stack-trace-on-error 0)
(require 'ecb)
(global-ede-mode 1)
(require 'semantic)
(require 'semantic/sb)
(require 'srecode)
(global-srecode-minor-mode)
(semantic-mode 1)

(global-set-key (kbd "C-x x o") 'ecb-goto-window-methods)

; Make sure that we can use dynamic languages like ruby
(setq imenu-auto-rescan t)
(provide 'load-ecb)








