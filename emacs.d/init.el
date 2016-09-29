;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(menu-bar-mode -1)

(setq vc-follow-symlinks t)

(defvar solarized-termcolors)
(setq solarized-termcolors 256)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

(defvar linum-format)
(setq linum-format "%3d ")
(global-linum-mode t)

(setq-default indent-tabs-mode nil)

(require 'whitespace)
(global-whitespace-mode)

(require 'company)
(global-company-mode)

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(evil-leader/set-leader ",")
(global-evil-leader-mode)

(require 'flycheck)
(global-flycheck-mode)

(require 'neotree)
(evil-leader/set-key "n" 'neotree-toggle)
(add-hook
 'neotree-mode-hook
 (lambda()
   (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(require 'projectile)
(setq projectile-completion-system 'grizzl)
(projectile-global-mode)
(evil-leader/set-key "p" 'projectile-find-file)

(add-to-list 'projectile-other-file-alist '("test.ts" "ts"))
(add-to-list 'projectile-other-file-alist '("ts" "test.ts"))

(require 'tide)
(setq typescript-indent-level 2)
(add-hook 'typescript-mode-hook 'tide-setup)

(require 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

(provide 'init)
;;; init.el ends here
