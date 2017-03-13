(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-appearance)
(require 'init-auto-mode)
(require 'init-backups)
(require 'init-indent)

(require 'init-use-package)

(require 'init-evil)

(require 'init-neotree)
(require 'init-powerline)
(require 'init-solarized)

(require 'init-magit)
(require 'init-projectile)

(require 'init-company)
(require 'init-flycheck)

(require 'init-intero)
(require 'init-markdown)
(require 'init-rainbow)
(require 'init-tide)
(require 'init-web)
(require 'init-yaml)

(provide 'init)
