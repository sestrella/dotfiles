(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(global-linum-mode t)
(menu-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-company)
(require 'init-evil)
(require 'init-flycheck)
(require 'init-solarized)
(require 'init-tide)

(provide 'init)
