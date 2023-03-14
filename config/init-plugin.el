;;; init-plugin.el --- package management

;; package manager settings
(require 'package)
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t) ; 让 use-package 永远按需安装软件包

;; config file benchmark
(use-package esup
  :ensure t
  ;; To use MELPA Stable use ":pin melpa-stable",
  :pin melpa)

;; Vim key mode 
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package counsel
  :config 
  (ivy-mode 1))

(use-package which-key
    :config
    (which-key-mode))

;; terminal 
(use-package vterm :ensure t)

;; Search in the file
(use-package swiper
  :ensure nil
  :bind (("C-s" . swiper)))

(use-package dirvish
  :config (dirvish-override-dired-mode)
  (when (eq system-type 'darwin)
    (setq insert-directory-program "gls")))

(use-package beacon
  :config (beacon-mode 1))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-center-content t))

(use-package move-text
  :config (move-text-default-bindings))

(provide 'init-plugin)

;;; init-plugin.el ends here
