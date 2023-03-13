;;; init-theme.el --- Load the full configuration

;; Vs code dark theme
(use-package vscode-dark-plus-theme
     :config
     (load-theme 'vscode-dark-plus t))

(use-package all-the-icons
  :if (display-graphic-p))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; dired beautify
(use-package diredfl
  :ensure t
  :config (diredfl-global-mode t))

(use-package all-the-icons-dired
  :ensure t
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
  (setq all-the-icons-dired-monochrome nil))

(provide 'init-theme)

;;; init-theme.el ends here