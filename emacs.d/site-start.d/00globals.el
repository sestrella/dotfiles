(require 'fill-column-indicator)
(require 'grizzl)
(require 'powerline)
(require 'projectile)

(powerline-default-theme)

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
