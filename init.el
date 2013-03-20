;; Files and directories
(setq magit-git-executable "/usr/local/git/bin/git")
(setq pgb-emacs-init-file load-file-name)
(setq pgb-emacs-config-dir
      (file-name-directory pgb-emacs-init-file))
(setq user-emacs-directory pgb-emacs-config-dir)
(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory)))) 

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" pgb-emacs-config-dir))
(load custom-file)

