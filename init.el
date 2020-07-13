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
;;       user-emacs-directory))

(use-package esup
  :ensure t
  :commands (esup))

(add-hook 'emacs-startup-hook
					(lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))

;;(unless (graphic-display-p)
(org-babel-load-file
 (expand-file-name "emacs-ivy-init.org"
                   user-emacs-directory))
;;)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (iy-go-to-char org-roam command-log-mode define-word which-key use-package pdf-tools org-bullets nlinum magit linum-relative hydra ggtags ein counsel-projectile alect-themes ag ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
