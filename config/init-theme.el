;;; init-theme.el --- Load the full configuration

;;  theme
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic nil) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  (doom-themes-visual-bell-config)
  (setq doom-themes-treemacs-theme "doom-colors") 
  (doom-themes-treemacs-config)
  (doom-themes-org-config))

;; Other UI plugins
(use-package all-the-icons
  :if (display-graphic-p))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; dired beautify
(use-package diredfl
  :ensure t
  :config (diredfl-global-mode t))

(provide 'init-theme)

;;; init-theme.el ends here