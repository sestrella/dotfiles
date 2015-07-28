;; show line numbers
(setq linum-format "%3d ")
(global-linum-mode 1)

;; follow symlinks without prompting
(setq vc-follow-symlinks t)

(setq auto-mode-alist (cons '("Cask" . emacs-lisp-mode) auto-mode-alist))

;; load packages using cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; enable evil-mode by default
(evil-mode 1)
(global-evil-surround-mode 1)

;; enable flycheck by default
(add-hook 'after-init-hook #'global-flycheck-mode)

;; ruby hooks
(add-hook 'ruby-mode-hook 'projectile-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
