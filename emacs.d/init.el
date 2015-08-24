(require 'cask "~/.cask/cask.el")
(cask-initialize)

(mapc 'load (directory-files "~/.emacs.d/config" t "^[0-9]+.*\.el$"))
(provide 'init)
