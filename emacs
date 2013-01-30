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
		         "/home/nfair/")
                         ((eq system-type 'darwin)
                         "/Users/nfair/")
                         (t
                         "c:/home/nfair/")
                         )
 "My home directory — the root of my personal emacs load-path.")

;; add all the elisp directories under ~/dotemacs to my load path
(add-here "dotemacs/site-lisp") ;; elisp stuff I find on the 'net
(add-here "dotemacs/lisp") ;; all my personal elisp code
;(add-here "dotemacs/jde-2.3.2/lisp") ;; Java IDE support

;(load-library "load-site-lisp")
;(load-library "ekeys") ;; my key bindings and some aliases
;(load-library "efuncs") ;; a bunch of my own utility functions
;(load-library "modes") ;; configuration for 100-odd emacs modes

(load-library "nfair-modes") ;; my own emacs modes to start adding functionality.  mostly will be added slowly
;; load in customizations, which I keep in their own little petting zoo
;(load-library "~/.custom")
;(eshell) ; adds some power to my shell from emacs
(server-start)

(put 'dired-find-alternate-file 'disabled nil)
