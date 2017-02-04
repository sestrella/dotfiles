(use-package projectile
  :config
  (eval-after-load 'evil-leader
    (evil-leader/set-key "p" 'projectile-find-file))
  (projectile-mode)
  :diminish projectile-mode
  :ensure t)

(provide 'init-projectile)
