(defun add-auto-mode (extension prog-mode)
  (setq auto-mode-alist
	(append
	 (list
	  (cons (concat "\\" extension "\\'") prog-mode))
	 auto-mode-alist)))

(provide 'helper-funcs)