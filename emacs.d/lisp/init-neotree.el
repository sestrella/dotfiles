(use-package neotree
  :init
  (setq neo-show-hidden-files t)
  (setq neo-theme 'arrow)
  :config
  (with-eval-after-load "evil"
    (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
    (evil-define-key 'normal neotree-mode-map (kbd "ma") 'neotree-create-node)
    (evil-define-key 'normal neotree-mode-map (kbd "mc") 'neotree-copy-node)
    (evil-define-key 'normal neotree-mode-map (kbd "md") 'neotree-delete-node)
    (evil-define-key 'normal neotree-mode-map (kbd "mm") 'neotree-rename-node)
    (evil-define-key 'normal neotree-mode-map (kbd "r") 'custom/neotree-refresh))

  (with-eval-after-load "evil-leader"
    (evil-leader/set-key "n" 'neotree-toggle)))

(defun custom/neotree-refresh ()
  "Refresh the NeoTree buffer."
  (interactive)
  (message "NeoTree: Refreshing node. This could take a while... DONE")
  (neotree-refresh))

(provide 'init-neotree)
