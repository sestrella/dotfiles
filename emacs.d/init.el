(setq custom-file "~/.emacs.d/custom.el")

(menu-bar-mode -1)

(setq linum-format "%d ")
(global-linum-mode)

(custom-set-variables
  '(haskell-stylish-on-save t))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package evil
  :config (evil-mode 1)
  :ensure t)

(use-package projectile
  :config (projectile-mode)
  :ensure t)

(use-package flycheck
  :config (global-flycheck-mode)
  :ensure t)

(use-package company
  :config (add-hook 'after-init-hook 'global-company-mode)
  :ensure t)

(use-package intero
  :config (add-hook 'haskell-mode-hook 'intero-mode)
  :ensure t)
