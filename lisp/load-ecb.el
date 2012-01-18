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
(setq ecb-tip-of-the-day nil)
(ecb-activate)

; Set up some hotkeys for going to the ecb windows.
(global-set-key (kbd "C-c n") 'ecb-goto-window-compilation)
(global-set-key (kbd "C-c e") 'ecb-goto-window-methods)
(global-set-key (kbd "C-c o") 'ecb-cycle-through-compilation-buffers)
(global-set-key (kbd "C-c i") 'ecb-toggle-compile-window-height)
(provide 'load-ecb)








