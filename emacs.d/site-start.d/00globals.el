(require 'evil-leader)
(require 'fill-column-indicator)
(require 'grizzl)
(require 'neotree)
(require 'projectile)

(evil-leader/set-key "n" 'neotree-toggle)

(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))

(menu-bar-mode -1)

(setq linum-format "%3d ")
(global-linum-mode t)

(add-hook 'after-change-major-mode-hook 'fci-mode)

(setq projectile-completion-system 'grizzl)
(projectile-global-mode)

(setq solarized-termcolors 256)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)
