(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(menu-bar-mode -1)

(setq linum-format "%3d ")
(global-linum-mode t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-company)
(require 'init-evil)
(require 'init-evil-leader)
(require 'init-flycheck)
(require 'init-intero)
(require 'init-neotree)
(require 'init-projectile)
(require 'init-solarized)
(require 'init-tide)

(provide 'init)
