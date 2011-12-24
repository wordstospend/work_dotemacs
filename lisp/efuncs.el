(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))



;; (defun setenv-from-shell (varname)
;;   (setenv varname (replace-regexp-in-string
;;                    "[ \t\n]*$"
;;                    ""
;;                    (shell-command-to-string (concat "$SHELL --login -i -c 'echo $" varname "'")))))

(add-hook 'eshell-mode-hook 'set-exec-path-from-shell-PATH)
;; (add-hook 'eshell-mode-hook 'setenv-from-shell "PYTHONPATH")
