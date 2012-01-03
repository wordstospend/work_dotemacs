(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell 
      (replace-regexp-in-string "[[:space:]\n]*$" "" 
        (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))


;; (defun setenv-from-shell (varname)
;;   (setenv varname (replace-regexp-in-string
;;                    "[ \t\n]*$"
;;                    ""
;;                    (shell-command-to-string (concat "$SHELL --login -i -c 'echo $" varname "'")))))
;; (setenv-from-shell "PYTHONPATH")
;; (setenv-from-shell "PATH")

(add-hook 'eshell-mode-hook 'set-exec-path-from-shell-PATH)
;; (add-hook 'eshell-mode-hook 'setenv-from-shell "PYTHONPATH")


;; This command is AMAZING. I recommend mapping it to `C-x v' or `C-x w'
;; depending on which is easier on your keyboard.

(defun banish (l) (append (cdr l) (list (car l))))
(defun ido-jump-to-window ()
  (interactive)
  (let* ((visible-buffers (banish (mapcar '(lambda (window) (buffer-name (window-buffer window))) (window-list))))
         (buffer-name (ido-completing-read "Window: " visible-buffers))
         window-of-buffer)
    (if (not (member buffer-name visible-buffers))
        (error "'%s' does not have a visible window" buffer-name)
      (setq window-of-buffer
                (delq nil (mapcar '(lambda (window)
                                       (if (equal buffer-name (buffer-name (window-buffer window)))
                                           window
                                         nil))
                                  (window-list))))
      (select-window (car window-of-buffer)))))

(define-key global-map (kbd "C-x w") 'ido-jump-to-window)

;; All me, baby. Try it out. If theres a region, it'll kill that,
;; otherwise it'll just kill the word behind.
(defun backward-kill-word-or-kill-region (&optional arg)
  (interactive "P")
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (if (equal arg nil)
        (subword-backward-kill 1)
      (subword-backward-kill arg))))

(global-set-key (kbd "C-w") 'backward-kill-word-or-kill-region)


;; Stolen from emacswiki
(defun hlu-make-script-executable ()
  "If file starts with a shebang, make `buffer-file-name' executable"
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-min))
      (when (and (looking-at "^#!")
		 (not (file-executable-p buffer-file-name)))
	(set-file-modes buffer-file-name
			(logior (file-modes buffer-file-name) #o100))
	(message (concat "Made " buffer-file-name " executable"))))))

(add-hook 'after-save-hook 'hlu-make-script-executable)


