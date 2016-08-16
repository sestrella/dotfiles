(require 'cask "~/.cask/cask.el")
(cask-initialize)

(menu-bar-mode -1)

(setq linum-format "%3d ")
(global-linum-mode t)

(setq solarized-termcolors 256)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")

(require 'fiplr)
(setq fiplr-root-markers '(".git"))
(evil-leader/set-key "p" 'fiplr-find-file)

(require 'ido)
(ido-mode t)

(require 'neotree)
(setq neo-smart-open t)
(evil-leader/set-key "n" 'neotree-toggle)

(require 'projectile)
(projectile-global-mode)
;(setq projectile-switch-project-action 'neotree-projectile-action)

(require 'tide)
(add-hook 'before-save-hook 'tide-format-before-save)

(provide 'init)
