;; show line numbers
(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)

;; follow symlinks without prompting
(setq vc-follow-symlinks t)

(setq auto-mode-alist (cons '("Cask" . emacs-lisp-mode) auto-mode-alist))

;; load packages using cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; enable evil-mode by default
(evil-mode 1)
