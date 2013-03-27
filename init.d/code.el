;; Line numbers
(add-hook 'pgb-code-modes-hook
	  (lambda () (linum-mode 1)))

;; Show whitespace
(add-hook 'pgb-code-modes-hook
	  (lambda () (whitespace-mode 1)))

;; Truncate lines
(add-hook 'pgb-code-modes-hook
	  (lambda () (setq truncate-lines t)))

;; Clean up whitespace on save
(add-hook 'pgb-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

;; Show an indicator of the fill column
(add-hook 'pgb-code-modes-hook
          (lambda () (fci-mode 1)))
