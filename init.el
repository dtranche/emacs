;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'ob-tangle)
;;(org-babel-load-file
;; (expand-file-name "emacs-init.org"
;;		   user-emacs-directory))

(org-babel-load-file
 (expand-file-name "emacs-ivy-init.org"
		   user-emacs-directory))
