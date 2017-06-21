
;; Path to custom package loader
(load "~/.emacs.d/my-loadpackages.el")

;; Path to custom keybindings
(load "~/.emacs.d/my-keybindings.el")

;; Path to custom keybindings
;; (load "~/.emacs.d/my-display-profile.el")

;; Other config
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "IN-PROGRESS(p)" "DONE(d)" "HOLD(h)" "BLOCKED(b)" "SOMEDAY(s)" "DROPPED(r)")))))
