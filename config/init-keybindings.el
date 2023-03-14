;;; init-keybindings setttings for vim keymap

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1)
  (evil-set-leader 'normal (kbd "<SPC>")) ;; set leader key

  ;; editor
  (evil-define-key 'normal 'global (kbd "<leader>m") 'treemacs)
  (evil-define-key 'normal 'global (kbd "<leader>w") 'save-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>t") 'vterm)

  ;; keybinding for windows
  (evil-define-key 'normal 'global (kbd "C-h") 'evil-window-left)
  (evil-define-key 'normal 'global (kbd "C-j") 'evil-window-down)
  (evil-define-key 'normal 'global (kbd "C-k") 'evil-window-up)
  (evil-define-key 'normal 'global (kbd "C-l") 'evil-window-right)

  (define-key evil-motion-state-map "H" 'evil-first-non-blank)
  (define-key evil-motion-state-map "L" 'evil-end-of-line)
  
  ;; keybinding for finding
  (evil-define-key 'normal 'global (kbd "<leader>ff") 'find-file)

  ;; keybinding for buffer
  (evil-define-key 'normal 'global (kbd "<leader>bs") 'switch-to-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>bk") 'kill-buffer)
  )

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'init-keybindings)
;;; init-keybindings ends here
