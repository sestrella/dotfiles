(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(menu-bar-mode -1)
(global-linum-mode 1)

(eval-when-compile
  (require 'use-package))

(use-package evil
  :ensure t
  :config (evil-mode 1))

(use-package color-theme-solarized
  :ensure t
  :init
    (setq color-themes '())
    (customize-set-variable 'frame-background-mode 'dark)
  :config (load-theme 'solarized t))

(use-package flycheck
  :ensure t
  :config (global-flycheck-mode))

(use-package company
  :ensure t
  :config (global-company-mode))

(use-package tide
  :init (add-hook 'typescript-mode-hook #'tide-setup))
