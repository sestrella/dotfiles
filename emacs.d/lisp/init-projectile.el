(use-package projectile
  :config
  (eval-after-load 'evil-leader
    (evil-leader/set-key "f" 'projectile-find-file))
  :diminish projectile-mode
  :ensure t)

(provide 'init-projectile)
