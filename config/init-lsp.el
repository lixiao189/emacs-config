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

;; lsp packages
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (((
        ;; add mode here
        python-mode 
        c++-mode
        lisp-mode
  ) . lsp) (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  (setq read-process-output-max (* 1024 1024))
  (setq gc-cons-threshold 100000000))

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

(provide 'init-lsp)

;;; init-lsp.el ends here