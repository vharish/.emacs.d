;; ORG mode settings

(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(p)" "DONE(d)" "HOLD(h)" "BLOCKED(b)" "SOMEDAY(s)" "DROPPED(r)")))

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files '("~/Documents/org-docs/work-todo.org"))
