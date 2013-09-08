; Newline + indent
(global-set-key (kbd "C-j") 'newline-and-indent)
(defun auto-indent-coding-config ()
  (local-set-key (kbd "RET") (key-binding (kbd "C-j")))
  (local-set-key (kbd "<S-return>") 'newline)
  )

(defun insert-auto-indent-hook (language-mode-hook)
  "Adds auto-indentation to the selected prog-mode"
   (add-hook language-mode-hook 'auto-indent-coding-config))

; Add auto-indentation to the specified languages.
; (mapc FUNCTION to apply to LIST)
(defun add-auto-indentation ()
  (mapc 'insert-auto-indent-hook '(emacs-lisp-mode-hook python-mode-hook)))

(provide 'auto-indent-hooks)
