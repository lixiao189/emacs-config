;;; init-lsp.el --- Load the full configuration

;; completion front end
(use-package company
  :hook 
  (after-init . global-company-mode)
  :config 
  (setq company-minimum-prefix-length 1) ; 只需敲 1 个字母就开始进行自动补全
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t) ;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence)))
(use-package yasnippet
  :config
  (yas-global-mode 1))

;; lsp packages
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (((
        ;; add mode here
        c++-mode
        lisp-mode
  ) . lsp) (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  (setq lsp-headerline-breadcrumb-icons-enable nil))

(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; lsp for pyright
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

(provide 'init-lsp)

;;; init-lsp.el ends here
