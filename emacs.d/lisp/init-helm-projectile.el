(use-package helm-projectile
  :init
  (defun custom/projectile-test-suffix-function (project-type)
    "Find default test files suffix based on PROJECT-TYPE."
    (if (eq project-type 'node)
	    ".test"
      (projectile-test-suffix-function project-type)))

  (setq projectile-test-suffix-function #'custom/projectile-test-suffix-function)
  :config
  (projectile-register-project-type 'node '("package.json") nil "npm test")
  (eval-after-load 'evil-leader
    (evil-leader/set-key
      "f" 'helm-projectile-find-file
      "t" 'projectile-toggle-between-implementation-and-test))
  :ensure t)

(provide 'init-helm-projectile)
