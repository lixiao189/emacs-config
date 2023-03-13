;;; init-lsp.el --- Load the full configuration

;; completion front end
(use-package company
  :hook (after-init . global-company-mode)
  :config
  (setq company-tooltip-align-annotations t ; 注释贴右侧对齐
        company-tooltip-limit 20            ; 菜单里可选项数量
        company-show-numbers t              ; 显示编号（然后可以用 M-数字 快速选定某一项）
        company-idle-delay .0            ; 延时多少秒后弹出
        company-minimum-prefix-length 1     ; 至少几个字符后开始补全
  ))

;; lsp packages
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         ((python-mode 
          c++-mode) . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

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