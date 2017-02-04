(use-package evil-commentary
  :config
  (progn
    (eval-after-load 'evil-leader
      (evil-leader/set-key ";" 'evil-commentary))
    (evil-commentary-mode))
  :ensure t)

(provide 'init-evil-commentary)
