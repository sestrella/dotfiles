(use-package neotree
  :init
  (progn
    (setq neo-show-hidden-files t)
    (setq neo-theme 'arrow))
  :config
  (progn
    (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

    (eval-after-load 'evil-leader
      (evil-leader/set-key "b" 'neotree-toggle)))
  :ensure t)

(provide 'init-neotree)
