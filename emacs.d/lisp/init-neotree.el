(use-package neotree
  :init (setq neo-theme 'arrow)
  :config
  (progn
    (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

    (eval-after-load 'evil-leader
      (evil-leader/set-key "n" 'neotree-toggle)))
  :ensure t)

(provide 'init-neotree)
