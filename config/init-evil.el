;;; init-evil setttings for vim keymap

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1)
  (evil-set-leader 'normal (kbd "<SPC>")) ;; set leader key

  ;; TODO keybinding for windows 
  
  ;; keybinding for file
  (evil-define-key 'normal 'global (kbd "<leader>fs") 'save-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>ff") 'projectile--find-file)

  ;; keybinding for buffer
  (evil-define-key 'normal 'global (kbd "<leader>bs") 'switch-to-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>bk") 'kill-buffer)
  )

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'init-evil)
;;; init-evil ends here
