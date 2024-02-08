(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/custom/")
;; customizing stuff general
(load-theme 'gruvbox-dark-hard t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-line-numbers t)
 '(org-adapt-indentation t)
 '(org-default-priority 67)
 '(org-export-backends '(ascii html icalendar latex md odt ox-hugo ox-publish))
 '(org-plain-list-ordered-item-terminator 46)
 '(org-startup-indented t)
 '(org-startup-truncated nil)
 '(package-selected-packages '(elfeed-org gruvbox-theme evil))
 '(send-mail-function 'smtpmail-send-it)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25)
 '(truncate-lines nil)
 '(truncate-partial-width-windows nil)
 '(word-wrap t))

;; Fonts specifically
(set-face-attribute 'default nil
;:family "Fira Mono"
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
;(elfeed-org)
;(setq rmh-elfeed-org-files
;(list "~/.emacs.d/elfeed.org"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
