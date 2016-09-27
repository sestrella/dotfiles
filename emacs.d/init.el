(require 'cask "~/.cask/cask.el")
(cask-initialize)

(menu-bar-mode -1)

(setq vc-follow-symlinks t)

(setq solarized-termcolors 256)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

(setq linum-format "%3d ")
(global-linum-mode t)

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

(require 'tide)
(add-hook 'typescript-mode-hook 'tide-setup)
