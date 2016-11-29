(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

;;;; MODE configuration

(add-to-list 'auto-mode-alist
    '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

;; IDO mode
(require 'ido)
(ido-mode t)

;;
;; ace jump mode major function
;;
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;;;org-mode configuration
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;;;;Ysnippet configuration
(require 'yasnippet)
(yas-global-mode 1)

(require 'php-auto-yasnippets)
(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)

;; evil mode
(require 'evil)
  (evil-mode 1)

;; minor mode to show function name in the status bar
(which-function-mode 1)

;;;; KEY BINDINGS

;;; scrollers
(global-set-key "\M-n" "\C-u3\C-v")
(global-set-key "\M-p" "\C-u3\M-v")

;; magit bindings
(global-set-key (kbd "C-x g") 'magit-status)

;; evil bindings
(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "C-u") 'evil-scroll-up))
(define-key global-map (kbd "M-u") 'universal-argument)
