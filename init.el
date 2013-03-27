;; Find git executable
(setq magit-git-executable "/usr/local/git/bin/git")
;; Files and directories
(setq pgb-emacs-init-file load-file-name)
(setq pgb-emacs-config-dir
      (file-name-directory pgb-emacs-init-file))
(setq user-emacs-directory pgb-emacs-config-dir)
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory)))) 
(setq pgb-elisp-dir (expand-file-name "elisp" pgb-emacs-config-dir))
(setq pgb-elisp-external-dir
      (expand-file-name "external" pgb-elisp-dir))
(setq pgb-init-dir
      (expand-file-name "init.d" pgb-emacs-config-dir))

;; Load all elisp files in ./init.d
(if (file-exists-p pgb-init-dir)
    (dolist (file (directory-files pgb-init-dir t "\\.el$"))
      (load file)))

(setq pgb-secrets-file (expand-file-name "secrets.el" pgb-emacs-config-dir))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" pgb-emacs-config-dir))
(load custom-file)

(require 'yagist)
(setq gist-authenticate-function 'gist-basic-authentication)

(when (file-exists-p pgb-secrets-file)
  (load pgb-secrets-file))

;; Line numbers
(add-hook 'pgb-code-modes-hook
    (lambda () (linum-mode 1)))

(add-hook 'ruby-mode-hook
    (lambda () (run-hooks 'pgb-code-modes-hook)))
