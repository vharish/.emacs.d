; my-loadpackages.el
; loading package
(load "~/.emacs.d/my-packages.el")

;;;; Interfaces

;; magit
(require 'magit)

;;;; Major modes

;;; php-mode
(add-to-list 'auto-mode-alist
    '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

;;; html-mode
;; Make html-mode work with files ending in .twig
(add-to-list 'auto-mode-alist '("\\.twig$" . html-mode))

;;; org-mode configuration
;; Enable org-mode
(require 'org)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;;;; Minor modes

;; helm mode
(require 'helm-config)
(helm-mode 1)

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
  (evil-mode t)

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
    (setq yas-dont-activate t)))

;; php-auto-yasnippets
(require 'php-auto-yasnippets)
(setq php-auto-yasnippet-php-program "~/.emacs.d/snippets/Create-PHP-YASnippet.php")

;; linum-relative mode
(require 'linum-relative)
(linum-on)
(linum-relative-global-mode)

;; Persistence/session config
(desktop-save-mode 1)

;; Keybindings for evil-org mode
(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(evil-org-set-key-theme '(navigation insert textobjects additional))

;; auto-complete mode config
(ac-config-default)

;; SQL setup
(require 'sql)
(defalias 'sql-get-login 'ignore)

(defun my-sql-save-history-hook ()
(let ((lval 'sql-input-ring-file-name)
	(rval 'sql-product))
    (if (symbol-value rval)
	(let ((filename 
		(concat "~/.emacs.d/sql/"
			(symbol-name (symbol-value rval))
			"-history.sql")))
	(set (make-local-variable lval) filename))
    (error
	(format "SQL history will not be saved because %s is nil"
		(symbol-name rval))))))

(add-hook 'sql-interactive-mode-hook 'my-sql-save-history-hook)
