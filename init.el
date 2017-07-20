
;; Path to custom package loader
(load "~/.emacs.d/my-loadpackages.el")

;; Path to custom keybindings
(load "~/.emacs.d/my-keybindings.el")

;; Path to custom display profile
;; (load "~/.emacs.d/my-display-profile.el")

; loading org mode settings
(load "~/.emacs.d/my-orgmode.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Documents/notebox/work.tasks.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
