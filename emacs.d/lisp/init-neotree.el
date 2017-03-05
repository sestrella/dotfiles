(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

(use-package neotree
  :init
  (setq neo-show-hidden-files t)
  (setq neo-theme 'arrow)
  :config
  (add-hook
   'neotree-mode-hook
   (lambda ()
     (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
     (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)))
  ;;(eval-after-load 'evil-leader
    ;;(evil-leader/set-key "n" 'neotree-project-dir))
  :ensure t)

(provide 'init-neotree)
