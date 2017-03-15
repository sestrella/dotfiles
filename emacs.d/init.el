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

(require 'init-evil)
(require 'init-projectile)

(require 'init-neotree)
(require 'init-powerline)
(require 'init-solarized)

(require 'init-magit)

(require 'init-company)
(require 'init-flycheck)

(require 'init-rainbow)

(require 'init-css)
(require 'init-intero)
(require 'init-markdown)
(require 'init-tide)
(require 'init-web)
(require 'init-yaml)
(require 'init-zsh)

(provide 'init)
