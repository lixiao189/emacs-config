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

;; Vim key mode 
(use-package evil
  :config 
  (require 'evil)
  (evil-mode 1))

;; Telegram client
(use-package telega
  :config
  (setq telega-proxies 
  (list '(:server "127.0.0.1" :port 7890 :enable t :type (:@type "proxyTypeHttp")))))

(use-package counsel
  :config 
  (ivy-mode 1))

(use-package which-key
    :config
    (which-key-mode))

;; Git client 
(use-package magit)

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
  (setq dashboard-center-content t
        dashboard-show-shortcuts nil))

(provide 'init-plugin)

;;; init-plugin.el ends here