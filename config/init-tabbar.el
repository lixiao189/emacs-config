(use-package centaur-tabs
  :init
  (setq centaur-tabs-set-icons t
        centaur-tabs-height 32)
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(provide 'init-tabbar)