;;; init.el --- Load the full configuration

;; increase performance
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))

;; Load config module
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'basic)
(require 'init-plugin)

(require 'init-theme)

(require 'init-tree)
(require 'init-tabbar)
(require 'init-git)

(require 'init-lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-minibuffer-history-key "M-p")
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here
