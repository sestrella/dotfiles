(use-package helm-projectile
  :config
  (with-eval-after-load "evil-leader"
    (evil-leader/set-key "p" 'helm-projectile-find-file)))

(provide 'init-projectile)
