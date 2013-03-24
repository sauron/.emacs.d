;; Files and directories
(setq magit-git-executable "/usr/local/git/bin/git")
(setq pgb-emacs-init-file load-file-name)
(setq pgb-emacs-config-dir
      (file-name-directory pgb-emacs-init-file))
(setq user-emacs-directory pgb-emacs-config-dir)
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory)))) 
(setq pgb-elisp-dir (expand-file-name "elisp" pgb-emacs-config-dir))
(setq pgb-elisp-external-dir
      (expand-file-name "external" pgb-elisp-dir))
(setq pgb-secrets-file (expand-file-name "secrets.el" pgb-emacs-config-dir))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" pgb-emacs-config-dir))
(load custom-file)

; Add external projects to load path
(dolist (project (directory-files pgb-elisp-external-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(require 'yagist)

(setq gist-authenticate-function 'gist-basic-authentication)

(when (file-exists-p pgb-secrets-file)
  (load pgb-secrets-file))
