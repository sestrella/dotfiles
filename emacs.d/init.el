(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
;(package-refresh-contents)

(package-install 'evil)
(evil-mode 1)

(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

(package-install 'flycheck)
(global-flycheck-mode)

(package-install 'company)
(global-company-mode)

(menu-bar-mode -1)

(package-install 'neotree)
(setq neo-smart-open t)
(add-hook
  'neotree-mode-hook
  (lambda ()
    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(package-install 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader ",")
(evil-leader/set-key "n" 'neotree-toggle)

(package-install 'flycheck-status-emoji)
(eval-after-load
  "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-status-emoji-mode))

(package-install 'color-theme-solarized)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

(global-linum-mode t)
(setq linum-format "%3d ")

(setq-default indent-tabs-mode nil)

(package-install 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq-default js2-basic-offset 2)

(setq make-backup-files nil)

;(package-install 'whitespace)
;(global-whitespace-mode)
