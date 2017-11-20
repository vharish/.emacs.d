
;; Path to custom package loader

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/my-loadpackages.el")

;; Path to custom keybindings
(load "~/.emacs.d/my-keybindings.el")

;; Path to custom display profile
(load "~/.emacs.d/my-display-profile.el")

; loading org mode settings
(load "~/.emacs.d/my-orgmode.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages
   (quote
    (auto-complete go-autocomplete multi-line find-file-in-repository find-file-in-git-repo helm smooth-scrolling php-auto-yasnippets magit linum-relative evil-org cider ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default t :font "Source Code Pro-12" )
