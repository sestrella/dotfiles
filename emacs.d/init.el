(require 'package)
(setq package-enable-at-startup nil)
;;(add-to-list 'package-archives '("elpa" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-linum)
(require 'init-menu-bar)

(require 'init-use-package)

;;(setq-default indent-tabs-mode nil)

;;(setq js-indent-level 2)
;;(setq typescript-indent-level 2)

;;(defalias 'yes-or-no-p 'y-or-n-p)

;;(setq backup-by-copying t)
;;(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
;;(setq delete-old-versions t)
;;(setq kept-new-versions 6)
;;(setq kept-old-versions 2)
;;(setq version-control t)

;;(add-to-list 'auto-mode-alist '("\\.zsh\\'" . shell-script-mode))
;;(add-to-list 'auto-mode-alist '("zshrc\\'" . shell-script-mode))

(require 'init-evil)
(require 'init-evil-commentary)
(require 'init-evil-surround)
;;(require 'init-evil-leader)

;;(require 'init-neotree)
;;(require 'init-powerline)
;;(require 'init-projectile)
(require 'init-solarized)
;;(require 'init-whitespace)

(require 'init-company)
(require 'init-flycheck)

(require 'init-intero)
;;(require 'init-markdown)
(require 'init-tide)
;;(require 'init-yaml)

(provide 'init)
