(use-package magit
  :config
  (with-eval-after-load "evil-leader"
    (evil-leader/set-key "g" 'magit-status)))

(provide 'init-git)
