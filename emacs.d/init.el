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

(require 'init-vim)

(require 'init-neotree)
(require 'init-powerline)
(require 'init-solarized)

(require 'init-git)
(require 'init-projectile)

(require 'init-auto-complete)
(require 'init-syntax-check)

(require 'init-haskell)
(require 'init-markdown)
(require 'init-rainbow)
(require 'init-stylesheets)
(require 'init-typescript)
(require 'init-web)
(require 'init-yaml)

(provide 'init)
