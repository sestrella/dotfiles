;;; package --- Summary
;;; Commentary:
;;; Code:
(menu-bar-mode -1)           ;;; hide menu bar
(setq vc-follow-symlinks t)  ;;; always follow symlinks
(setq make-backup-files nil) ;;; prevent backup files creation

;;; Mac OS X     => /usr/local/opt/cask/cask.el
;;; Linux (Arch) => /usr/share/cask/cask.el
(require 'cask (if (eq system-type 'darwin) "/usr/local/opt/cask/cask.el" "/usr/share/cask/cask.el"))
(cask-initialize)

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(evil-leader/set-leader ",")
(global-evil-leader-mode)

(require 'auto-complete)
(ac-config-default)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'flycheck-pos-tip)
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(require 'whitespace-cleanup-mode)
(global-whitespace-cleanup-mode)

(require 'neotree)
(evil-leader/set-key "n" 'neotree-toggle)

(require 'fiplr)
(setq fiplr-ignored-globs '((directories (".git" "tmp" "vendor"))
			    (files ("*.png"))))
(evil-leader/set-key "p" 'fiplr-find-file)

(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.sass\\'" . scss-mode))

(require 'haml-mode)

(require 'projectile-rails)
(evil-ex-define-cmd "Econtroller" 'projectile-rails-find-controller)
(evil-ex-define-cmd "Ehelper"     'projectile-rails-find-helper)
(evil-ex-define-cmd "Emigration"  'projectile-rails-find-migration)
(evil-ex-define-cmd "Emodel"      'projectile-rails-find-model)
(evil-ex-define-cmd "Eschema"     'projectile-rails-goto-schema)
(evil-ex-define-cmd "Espec"       'projectile-rails-find-spec)
(evil-ex-define-cmd "Eview"       'projectile-rails-find-view)

(evil-ex-define-cmd "A"  'projectile-toggle-between-implementation-and-test)
(evil-ex-define-cmd "AS" (lambda() (interactive) (split-window-vertically) (projectile-toggle-between-implementation-and-test)))
(evil-ex-define-cmd "AV" (lambda() (interactive) (split-window-horizontally) (projectile-toggle-between-implementation-and-test)))

(require 'rspec-mode)
(evil-leader/set-key "a" 'rspec-verify-all)    ;;; RunAllSpecs()
(evil-leader/set-key "l" 'rspec-rerun)         ;;; RunLastSpec()
(evil-leader/set-key "s" 'rspec-verify-single) ;;; RunNearestSpec()
(evil-leader/set-key "t" 'rspec-verify)        ;;; RunCurrentSpecFile()

(provide 'init)
;;; init.el ends here
