(use-package neotree
  :init (setq neo-theme 'arrow)
  :config
  (eval-after-load 'evil-leader
    (evil-leader/set-key "n" 'neotree-toggle))
  :ensure t)

(provide 'init-neotree)
