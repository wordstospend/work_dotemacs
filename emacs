;; Since I plan to use common lisp stuff, should load it right away
(require 'cl)
(defvar here "")

(defun make-path (file)
  (concat emacs-root here file))

(defun add-here (file)
  (add-to-list 'load-path (make-path file)))

;; Shamelessly stolen from https://sites.google.com/site/steveyegge2/my-dot-emacs-file
(defvar emacs-root (cond
                         ((or (eq system-type 'cygwin)
			 (eq system-type 'gnu/linux)
			 (eq system-type 'linux))
		         "/home/steggy/")
                         ((eq system-type 'darwin)
                         "/Users/michaelsteger/")
                         (t
                         "c:/home/steggy/")
                         )
 "My home directory — the root of my personal emacs load-path.")

;; add all the elisp directories under ~/emacs to my load path
(add-here "emacs/lisp") ;; all my personal elisp code
(add-here "emacs/site-lisp") ;; elisp stuff I find on the 'net
(add-here "emacs/jde-2.3.2/lisp") ;; Java IDE support


(load-library "ekeys") ;; my key bindings and some aliases
(load-library "efuncs") ;; a bunch of my own utility functions
(load-library "modes") ;; configuration for 100-odd emacs modes
(load-library "load-site-lisp")

;; load in customizations, which I keep in their own little petting zoo
(load-library "~/.custom")
(eshell)
(server-start)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start 2)
 '(ac-delay 0.02)
 '(ac-quick-help-delay 2.0)
 '(ac-show-menu-immediately-on-auto-complete nil)
 '(bmkp-auto-light-relocate-when-jump-flag nil)
 '(bmkp-auto-light-when-jump nil)
 '(bmkp-auto-light-when-set (quote any-bookmark))
 '(bmkp-crosshairs-flag nil)
 '(dvc-tips-enabled nil)
 '(ecb-options-version "2.40")
 '(erc-autojoin-channels-alist (quote (("irc.twilio.comy" "#watercooler"))))
 '(erc-modules (quote (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit)))
 '(erc-nick "steggy")
 '(erc-page-function nil)
 '(erc-page-mode t)
 '(erc-port 6697)
 '(erc-server "irc.twilio.com")
 '(flymake-extension-auto-show t)
 '(flymake-extension-use-showtip t)
 '(flymake-gui-warnings-enabled t)
 '(flymake-no-changes-timeout 0.5)
 '(global-rainbow-mode t)
 '(grep-highlight-matches t)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(ido-auto-merge-delay-time 0.3)
 '(ido-create-new-buffer (quote never))
 '(ido-enable-flex-matching nil)
 '(ido-enable-regexp t)
 '(ido-everywhere t)
 '(ido-separator nil)
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(kpm-list-highlight-most-recent 3)
 '(large-file-warning-threshold nil)
 '(org-agenda-files (quote ("/Users/michaelsteger/org/devOpsTwilio.org" "/Users/michaelsteger/org/school.org" "/Users/michaelsteger/org/home.org" "/Users/michaelsteger/org/test.org" "/Users/michaelsteger/org/gtd.org" "/Users/michaelsteger/org/google.org" "/Users/michaelsteger/org/work.org" "/Users/michaelsteger/org/intern.twilio.org")) t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-completion-use-ido t)
 '(quack-programs (quote ("stk-explorin" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "mzscheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi")))
 '(ropemacs-confirm-saving nil)
 '(safe-local-variable-values (quote ((eval outline-minor-mode 1)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "red" :foreground "#708183" :inverse-video t))))
 '(flymake-errline ((t (:background "pink2" :foreground "red"))))
 '(flymake-warnline ((((class color) (background dark)) (:background "DarkBlue" :foreground "Yellow"))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "red" :style released-button)))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "violet"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "brown"))))
 '(region ((t (:background "gray14"))))
 '(visible-mark-non-trailing-face0 ((t (:foreground "red" :underline t))) t))

