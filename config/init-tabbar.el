(use-package centaur-tabs
  :init
  (setq centaur-tabs-set-icons t)
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))
(provide 'init-tabbar)
