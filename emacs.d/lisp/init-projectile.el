(use-package projectile
  :config
  (with-eval-after-load "evil-leader"
    (evil-leader/set-key "p" 'projectile-find-file))

  (projectile-mode))

(provide 'init-projectile)
