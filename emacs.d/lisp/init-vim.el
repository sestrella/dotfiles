(use-package evil
  :config
  (evil-mode 1))

(use-package evil-leader
  :config
  (evil-leader/set-leader ",")
  (global-evil-leader-mode))

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(provide 'init-vim)
