; Lorem Ipsum
(autoload 'Lorem-ipsum-insert-paragraphs "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-sentences "lorem-ipsum" "" t)
(autoload 'Lorem-ipsum-insert-list "lorem-ipsum" "" t)

;; Beautifying Text
(require 'color-theme)
    (color-theme-initialize)
    (color-theme-railscasts)
    (set-frame-font "Monaco-14")

(require 'whitespace)
    (setq whitespace-style '(face tabs lines-tail trailing))
    (global-whitespace-mode t)
