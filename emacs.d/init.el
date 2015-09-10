;;; package --- Summary
;;; Commentary:
;;; Code:
(setq linum-format "%3d ")
(global-linum-mode)

(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("zshrc" . sh-mode))

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'evil)
(evil-mode 1)

(require 'solarized-theme)
(load-theme 'solarized-dark t)

(require 'airline-themes)
(airline-themes-set-modeline)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-rails)

(provide 'init)
;;; init.el ends here
