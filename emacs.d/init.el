(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(unless package-archive-contents (package-refresh-contents))

(defvar packages '(evil evil-leader intero neotree tide))
(dolist (package packages)
  (unless (package-installed-p package)
    (package-install package)))

(autoload 'my-site-start "~/.emacs.d/my-site-start/my-site-start" nil t)
(my-site-start "~/.emacs.d/site-start.d")

(provide 'init)
