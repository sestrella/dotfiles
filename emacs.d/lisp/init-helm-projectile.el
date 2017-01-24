(use-package helm-projectile
  :config
  (eval-after-load 'evil-leader
    (evil-leader/set-key "f" 'helm-projectile-find-file))
  :ensure t)

(provide 'init-helm-projectile)
