;;; init-git file to initialize git plugins

;; Git client
(use-package magit)

;; git gutter plugins
(use-package diff-hl
    :config
    (global-diff-hl-mode)
    (add-hook 'magit-pre-refresh-hook 'diff-hl-magit-pre-refresh)
    (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(provide 'init-git)
;;; init-git ends here
