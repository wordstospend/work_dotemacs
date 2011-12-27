(autoload 'autopair-global-mode "autopair" nil t)
(autopair-global-mode)

;; Highlight the line you are currently on
(global-hl-line-mode t)

;; Set the line numbers
(global-linum-mode 1)


;;shows a tree of undos in a seperate buffer. Use C-x u to visualize!
(require 'undo-tree)
(global-undo-tree-mode)

;; Turn on global-subword-mode, to recognize word boundaries
;; in camelCase
(global-subword-mode t)

;; Make a symbol appear where we last set the mark
(require 'visible-mark)
(global-visible-mark-mode)

;; Automagically opened compressed files if I `Find file` them
(auto-compression-mode 1)

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode)

;; Load up iedit, which allows you to edit all instances of a region, like an instance string-replace
(require 'iedit)

(provide 'load-globals)
