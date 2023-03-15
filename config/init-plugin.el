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

(use-package which-key
    :config
    (which-key-mode))

;; terminal 
(use-package vterm :ensure t)

(use-package beacon
  :config (beacon-mode 1))

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-center-content t)
  (setq dashboard-items '((recents  . 10)
                        (projects . 5)
                        (agenda . 5))))

(use-package move-text
  :config (move-text-default-bindings))

(provide 'init-plugin)

;;; init-plugin.el ends here
