; my-loadpackages.el
; loading package
(load "~/.emacs.d/my-packages.el")

;;;; Interfaces

;; magit
(require 'magit)

;;;; Major modes

;;; php-mode
;; Mode config
(add-to-list 'auto-mode-alist
    '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

;;; org-mode configuration
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;;;; Minor modes

;; IDO mode
(require 'ido)
(ido-mode t)

;; ace jump mode major function
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

;; minor mode to show function name in the status bar
(which-function-mode 1)

;; evil mode
(require 'evil)
  (evil-mode 1)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
    (setq yas-dont-activate t)))

;; php-auto-yasnippets
(require 'php-auto-yasnippets)

;; linum-relative mode
(require 'linum-relative)
(linum-on)
(linum-relative-global-mode)

;; Display related minor mode config
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Persistence/session config
(desktop-save-mode 1)
