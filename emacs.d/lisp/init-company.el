(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  :diminish company-mode
  :ensure t)

(provide 'init-company)
