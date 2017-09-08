(setq package-list '())
(add-to-list 'package-list 'company)
(add-to-list 'package-list 'evil)
(add-to-list 'package-list 'fiplr)
(add-to-list 'package-list 'flycheck)
(add-to-list 'package-list 'intero)
;;(add-to-list 'package-list 'psc-ide)
;;(add-to-list 'package-list 'purescript-mode)

(setq package-archives '())
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'evil)
(evil-mode 1)

;;(require 'purescript-mode)
;;(require 'psc-ide)
;;(add-hook 'purescript-mode-hook
;;  (lambda ()
;;    (psc-ide-mode)
;;    (company-mode)
;;    (flycheck-mode)))

(custom-set-variables
   '(haskell-stylish-on-save t))

(require 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)
