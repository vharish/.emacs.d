;;;; KEY BINDINGS

;;; normal mode bindings
;; scrolling
;; (global-set-key "\M-n" "\C-u3\C-v")
;; (global-set-key "\M-p" "\C-u3\M-v")

;;; magit bindings
(global-set-key (kbd "C-x g") 'magit-status)

;;; evil bindings
;; scrolling
(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "C-u") 'evil-scroll-up))
(define-key global-map (kbd "M-u") 'universal-argument)
(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-j") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-k") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-l") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-;") 'evil-window-right)))

;;; yasnippet bindings
;; php bindings
(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)

;;; ace-jump-mode bindings
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;; esc quits
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; FZF mappings
(define-key global-map (kbd "C-c C-g") 'fzf-git)
