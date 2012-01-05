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

;; savehist: save some history
(setq savehist-additional-variables    ;; also save...
      '(search ring regexp-search-ring)    ;; ... my search entries
      savehist-autosave-interval 60        ;; save every minute (default: 5 min)
      savehist-file (concat "~/.emacs.d" "/savehist"))   ;; keep my home clean
(savehist-mode t)                      ;; do customization before activation

; Dont ask me questions, just do it ibuffer!
(setq ibuffer-expert t)
(setq ibuffer-auto-mode t)

;Save the place you were in a buffer, when you switch out/back in
(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean
(setq-default save-place t)                   ;; activate it for all buffers
(require 'saveplace)                          ;; get the package


(autoload 'mode-compile "mode-compile"
   "Command to compile current buffer file based on the major mode" t)
(autoload 'mode-compile-kill "mode-compile"
 "Command to kill a compilation launched by `mode-compile'" t)



(provide 'load-modes)

