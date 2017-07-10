(setq custom-file "~/.emacs.d/custom.el")

(menu-bar-mode -1)

(custom-set-variables
  '(haskell-stylish-on-save t))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-linum)
(require 'init-evil)
(require 'init-projectile)
(require 'init-flycheck)
(require 'init-company)
(require 'init-intero)

(provide 'init)
