;;; package --- Summary
;;; Commentary:
;;; Code:
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq linum-format "%3d ")
(global-linum-mode)

(menu-bar-mode -1)

(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))

(add-to-list 'auto-mode-alist '("zpreztorc" . sh-mode))
(add-to-list 'auto-mode-alist '("zshrc" . sh-mode))

;;; FIXME only works on MAC OSX
(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

(require 'evil)
(evil-mode 1)

(require 'solarized-theme)
(load-theme 'solarized-dark t)

(require 'airline-themes)
(airline-themes-set-modeline)

(require 'whitespace-cleanup-mode)
(global-whitespace-cleanup-mode)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'flycheck-pos-tip)
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(require 'auto-complete)
(ac-config-default)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'projectile-rails)
(evil-ex-define-cmd "Econtroller" 'projectile-rails-find-controller)
(evil-ex-define-cmd "Ehelper"     'projectile-rails-find-helper)
(evil-ex-define-cmd "Emigration"  'projectile-rails-find-migration)
(evil-ex-define-cmd "Emodel"      'projectile-rails-find-model)
(evil-ex-define-cmd "Espec"       'projectile-rails-find-spec)
(evil-ex-define-cmd "Eview"       'projectile-rails-find-view)

(evil-ex-define-cmd "Eschema" 'projectile-rails-goto-schema)

(evil-ex-define-cmd "A"  'projectile-toggle-between-implementation-and-test)
(evil-ex-define-cmd "AS" (lambda() (interactive) (split-window-vertically) (projectile-toggle-between-implementation-and-test)))
(evil-ex-define-cmd "AV" (lambda() (interactive) (split-window-horizontally) (projectile-toggle-between-implementation-and-test)))

(provide 'init)
;;; init.el ends here
