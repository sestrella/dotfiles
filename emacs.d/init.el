(require 'cask "~/.cask/cask.el")
(cask-initialize)

;(autoload 'my-site-start "~/.emacs.d/my-site-start/my-site-start" nil t)
;(my-site-start "~/.emacs.d/site-start.d")

(menu-bar-mode -1)

(setq solarized-termcolors 256)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

(require 'evil)
(evil-mode 1)

(provide 'init)
