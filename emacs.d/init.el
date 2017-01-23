(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq vc-follow-symlinks t)

(menu-bar-mode -1)

(setq linum-format "%3d ")
(global-linum-mode t)

(add-to-list 'auto-mode-alist '("\\zshrc\\'" . sh-mode))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-company)
(require 'init-evil)
(require 'init-evil-leader)
(require 'init-evil-magit)
(require 'init-evil-surround)
(require 'init-flycheck)
(require 'init-intero)
(require 'init-neotree)
(require 'init-powerline)
(require 'init-projectile)
(require 'init-solarized)
(require 'init-tide)

(provide 'init)
