(use-package magit
  :config
  (with-eval-after-load "evil-leader"
    (evil-leader/set-key "g" 'magit-status)))

(add-to-list 'auto-mode-alist '("\\gitconfig$" . conf-mode))

(provide 'init-git)
