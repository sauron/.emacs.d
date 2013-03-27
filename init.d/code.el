;; Line numbers
(add-hook 'pgb-code-modes-hook
    (lambda () (linum-mode 1)))

(add-hook 'ruby-mode-hook
    (lambda () (run-hooks 'pgb-code-modes-hook)))
