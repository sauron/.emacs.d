(run-with-idle-timer 0.1 nil 'toggle-fullscreen)
;; Find git executable
(setq magit-git-executable "/usr/local/git/bin/git")

;; Files and directories
(setq pgb-emacs-init-file load-file-name)
(setq pgb-emacs-config-dir
      (file-name-directory pgb-emacs-init-file))
(setq user-emacs-directory pgb-emacs-config-dir) 
(setq pgb-elisp-dir (expand-file-name "elisp" pgb-emacs-config-dir))
(setq pgb-elisp-external-dir
      (expand-file-name "external" pgb-elisp-dir))
(setq pgb-init-dir
      (expand-file-name "init.d" pgb-emacs-config-dir))

;; Load all elisp files in ./init.d
(if (file-exists-p pgb-init-dir)
    (dolist (file (directory-files pgb-init-dir t "\\.el$"))
      (load file)))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" pgb-emacs-config-dir))
(load custom-file)
