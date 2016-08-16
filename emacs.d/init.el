(require 'cask "~/.cask/cask.el")
(cask-initialize)

(menu-bar-mode -1)

(setq typescript-indent-level 2)

(setq linum-format "%3d ")
(global-linum-mode t)

(require 'company)
(global-company-mode)

(setq solarized-termcolors 256)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")

(require 'ido)
(ido-mode t)

(require 'fiplr)
(evil-leader/set-key "p" 'fiplr-find-file)

(require 'flycheck)
(global-flycheck-mode)

(require 'neotree)
(setq neo-smart-open t)
(evil-leader/set-key "n" 'neotree-toggle)

(require 'projectile)
(setq projectile-completion-system 'grizzl)
(projectile-global-mode)

(require 'tide)
(add-hook 'typescript-mode-hook 'tide-setup)

(provide 'init)
