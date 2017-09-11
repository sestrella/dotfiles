(setq package-archives '())
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(defun install-missing-packages (&rest packages)
  (mapcar 'install-missing-package packages))

(defun install-missing-package (package)
  (unless (package-installed-p package)
    (package-install package)))

(unless package-archive-contents
  (package-refresh-contents))

(install-missing-packages
  'company
  'evil
  'evil-leader
  'fiplr
  'flycheck
  'intero
  'neotree
  'which-key)

(global-set-key [escape] 'keyboard-escape-quit)
(menu-bar-mode -1)

(require 'linum)
(setq linum-format "%d ")
(global-linum-mode)

(require 'which-key)
(which-key-mode)

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(evil-leader/set-leader ",")
(global-evil-leader-mode)

(require 'fiplr)
(evil-leader/set-key "p" 'fiplr-find-file)

(require 'neotree)
(evil-leader/set-key "n" 'neotree-toggle)

(custom-set-variables
  '(haskell-stylish-on-save (executable-find "stylish-haskell")))

(require 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)
