(use-package neotree
  :init
  (setq neo-show-hidden-files t)
  :config
  (add-hook 'neotree-mode-hook
    (lambda ()
      (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

  (with-eval-after-load "evil-leader"
    (evil-leader/set-key "n" 'neotree-toggle)))

(provide 'init-neotree)
