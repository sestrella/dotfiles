(use-package tide
  :config
  (eval-after-load 'evil-leader
    (evil-leader/set-key-for-mode 'typescript-mode
      "b" 'tide-jump-back
      "d" 'tide-jump-to-definition
      "r" 'tide-rename-symbol))
  (add-hook 'typescript-mode-hook #'tide-setup))

(provide 'init-tide)
