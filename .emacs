

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))



;;; ui

(setq inhibit-startup-message t)

(setq-default cursor-type 'bar)

(menu-bar-mode 0)

(tool-bar-mode 0)

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

;;(global-company-mode t)


(cua-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(global-font-lock-mode t)

(add-to-list 'load-path "~/.emacs.d/elpa/evil-20180911.959/")

(require 'evil)

(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/elpa/ivy-0.10.0/")

(require 'ivy)
(ivy-mode t)


(add-to-list 'load-path "~/.emacs.d/elpa/company-0.9.6/")
(require 'company)
(global-company-mode t)


(add-to-list 'load-path "~/.emacs.d/elpa/ace-jump-mode-20140616.815/")

(require 'ace-jump-mode)
;; À¨ºÅ×Ô¶¯Æ¥Åä
(electric-pair-mode t)

(set-default-font "Î¢ÈíÑÅºÚ-14")
