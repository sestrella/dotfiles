(use-package tide
  :config (add-hook 'typescript-mode-hook #'tide-setup)
  :ensure t)

(provide 'init-tide)