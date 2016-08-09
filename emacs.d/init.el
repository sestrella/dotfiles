(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(unless package-archive-contents (package-refresh-contents))

(defvar packages '(evil evil-leader intero neotree))
(dolist (package packages)
  (unless (package-installed-p package)
    (package-install package)))

(defvar settings-dir (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

(require 'my-evil-leader)
(require 'my-evil)
(require 'my-intero)
