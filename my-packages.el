; my-packages.el
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

; my-packages.el
; defvar is the correct way to declare global variables
; you might see setq as well, but setq is supposed to be use just to set variables,
; not create them.
(defvar required-packages
  '(
    magit
    ace-jump-mode
    yasnippet
    php-auto-yasnippets
    php-mode
    evil
    linum-relative
    cider
    smooth-scrolling
  ) "a list of packages to ensure are installed at launch.")

; my-packages.el
;; Not necessary as this is outdated and built-in in latest versions >=24.3)
(require 'cl)

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))
