(use-package whitespace
  :config
  (eval-after-load 'evil-leader
    (evil-leader/set-key "c" 'whitespace-cleanup))
  (global-whitespace-mode)
  :ensure t)

(provide 'init-whitespace)
