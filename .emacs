
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(require 'nodejs-repl)

(add-hook 'js-mode-hook
          (lambda ()
            (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-expression)
            (define-key js-mode-map (kbd "C-c C-j") 'nodejs-repl-send-line)
            (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
            (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
            (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)))


(global-set-key (kbd "<f2>") 'nodejs-repl-send-last-expression)
(global-set-key (kbd "<f4>") 'nodejs-repl-send-buffer)
(global-set-key (kbd "<f5>") 'python-shell-send-buffer)
(global-set-key (kbd "<f6>") 'scheme-send-definition)

(scroll-bar-mode 0)

(setq default-tab-width 4)

;;(set-default-font "Consolar-16")

;;; better-default


(setq make-backup-files nil)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-hl-line-mode t)

(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

(global-linum-mode t)

(abbrev-mode t)

(setq auto-save-default t)
(auto-save-mode t)
(recentf-mode 1)

(setq recentf-max-menu-items 25)

(electric-indent-mode t)

(delete-selection-mode t)

(global-set-key (kbd "TAB") 'self-insert-command); 

(cua-mode t)


(fset 'yes-or-no-p 'y-or-n-p)

;;(global-font-lock-mode t)

;(add-to-list 'load-path "~/.emacs.d/elpa/evil-20180911.959/")
;(require 'evil)

;(setq evil-shift-width 4)
;(evil-mode 1)

;; add ivy plugin to init config 
(add-to-list 'load-path "~/.emacs.d/elpa/ivy-0.10.0/")

(require 'ivy)

(ivy-mode t)



(add-to-list 'load-path "~/.emacs.d/elpa/ace-jump-mode-20140616.815/")

(require 'ace-jump-mode)
;; À¨ºÅ×Ô¶¯Æ¥Åä
(electric-pair-mode t)

(set-default-font "Î¢ÈíÑÅºÚ-14")

;; reset font

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; mouse

(xterm-mouse-mode t)

;; evil

;; key-binding

(global-set-key (kbd "<f7>") 'eval-buffer)
;;=============org===================

(setq org-todo-keywords
	  '((sequence "TODO(t)" "DOING(i!)" "HANGUP(h!)" "|" "DONE(d!)" "CANCEL(c!)")))
;;==============slime==============

;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (nodejs-repl js2-mode org smex slime paredit mocha ivy evil company ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
