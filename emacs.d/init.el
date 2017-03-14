(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-appearance)
(require 'init-backups)
(require 'init-indent)
(require 'init-whitespace)

(require 'init-use-package)

(require 'init-vim)
(require 'init-projectile)
(require 'init-helm)

(require 'init-neotree)
(require 'init-solarized)
(require 'init-status-bar)

(require 'init-git)

(require 'init-auto-complete)
(require 'init-syntax-check)

(require 'init-rainbow)

(require 'init-css)
(require 'init-haskell)
(require 'init-markdown)
(require 'init-typescript)
(require 'init-web)
(require 'init-yaml)
(require 'init-zsh)

(provide 'init)
