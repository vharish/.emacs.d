(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

 (add-to-list 'auto-mode-alist
     '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

(require 'ido)
    (ido-mode t)

;;; scrollers
(global-set-key "\M-n" "\C-u3\C-v")
(global-set-key "\M-p" "\C-u3\M-v")

(global-set-key (kbd "C-x g") 'magit-status)

(which-function-mode 1)
