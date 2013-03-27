; It seems I need to do this first to make package loading work
(package-initialize) 

(require 'netrc)
(require 'org2blog)
(setq pgb-netrc-vc 
      (netrc-machine (netrc-parse "~/.netrc") "insignia4ublog" t))
(setq org2blog/wp-blog-alist
      '(("insignia4ublog"
         :url "http://www.insignia4u-blog.com/wp-admin"
         :username (netrc-get pgb-netrc-vc "login")
         :password (netrc-get pgb-netrc-vc "password")
         :tags-as-categories nil)))
