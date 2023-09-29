(require 'package)
(package-initialize)

;; customizing stuff general
(load-theme 'gruvbox-dark-hard t)
(custom-set-variables
'(display-line-numbers t)
'(org-adapt-indentation t)
'(org-default-priority 67)
'(org-export-backends '(ascii html icalendar latex md odt ox-hugo ox-publish))
'(org-plain-list-ordered-item-terminator 46)
'(org-startup-indented t)
'(org-startup-truncated nil)
'(send-mail-function 'smtpmail-send-it)
'(smtpmail-smtp-server "smtp.gmail.com")
'(smtpmail-smtp-service 25)
'(truncate-lines nil)
'(truncate-partial-width-windows nil)
'(word-wrap t))

;; Fonts specifically
(set-face-attribute 'default nil
:family "Fira Mono"
:height 140
:weight 'normal
:width 'normal)

;; Org baby
;; Set Keywords
(setq org-todo-keywords
'((sequence "TODO(t)" "IN PROGRESS(i)" "BLOCKED(b)" "MILESTONE(m)" "DELEGATED(d)" "PENDING(p)" "|" "DONE(D)" "CANCELLED(c)")))
;; Make DONE entries auto put the finished date
(setq org-log-done 'time)
;; Org Bullets
(require 'org-bullets)
;; Org hooks
(add-hook 'org-mode-hook
(lambda ()
(org-bullets-mode))
'turn-on-flyspell)
;; Babel Languages
(org-babel-do-load-languages
'org-babel-load-languages
'((scheme . t)
(dot . t)
(python . t)))

;; EVIL
(require 'evil)
(evil-mode 1)

;; Elfeed stuff
(elfeed-org)
(setq rmh-elfeed-org-files
(list "~/.emacs.d/elfeed.org"))
