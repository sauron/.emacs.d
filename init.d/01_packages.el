(require 'package)

(setq pgb-required-packages 
      (list 'xml-rpc 'magit 'gh 'inf-ruby))

(add-to-list 'package-archives 
            '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
            '("ELPA" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defun pgb-require-package (name)
  (unless (package-installed-p name)
    (package-install name)))

(setq pgb-packages
      '(eieio
	xml-rpc
	gh
	inflections
	jump
	feature-mode
	yasnippet
	rvm
	rhtml-mode
	org-mode
	coffee-mode
	fill-column-indicator
	findr
	haml-mode
        hexrgb
	htmlize
	inflections
	inf-ruby
	jump
	magit
	;; magit-gh-pulls
	magithub
	minimap
	multi-term
	scss-mode))

;; Annoying packages that explode during install if their deps are not
;; met.
(setq pgb-dependent-packages
      '(org2blog 
	; gist
	sass-mode))
