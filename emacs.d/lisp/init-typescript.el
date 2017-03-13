(use-package tide
  :config
  (with-eval-after-load "evil-leader"
    (evil-leader/set-key-for-mode 'typescript-mode "tb" 'tide-jump-back)
    (evil-leader/set-key-for-mode 'typescript-mode "td" 'tide-jump-to-definition)
    (evil-leader/set-key-for-mode 'typescript-mode "tr" 'tide-rename-symbol))

  (add-hook 'typescript-mode-hook 'tide-setup))

(provide 'init-typescript)
