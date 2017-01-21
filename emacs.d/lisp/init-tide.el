(use-package tide
  :config
  (progn
    (add-hook 'typescript-mode-hook #'tide-setup)

    (eval-after-load 'evil-leader
      (evil-leader/set-key-for-mode 'typescript-mode "r" 'tide-rename-symbol)))
  :ensure t)

(provide 'init-tide)
