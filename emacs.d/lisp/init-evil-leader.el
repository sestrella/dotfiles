(use-package evil-leader
  :config
  (progn
    (evil-leader/set-leader ",")
    (global-evil-leader-mode))
  :ensure t)

(provide 'init-evil-leader)
