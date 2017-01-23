(use-package evil-magit
  :config
  (eval-after-load 'evil-leader
    (evil-leader/set-key "g" 'magit-status))
  :ensure t)

(provide 'init-evil-magit)
