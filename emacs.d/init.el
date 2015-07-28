(setq auto-mode-alist (cons '("Cask" . emacs-lisp-mode) auto-mode-alist))

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(evil-mode 1)
