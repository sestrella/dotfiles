(require 'tide)
(add-hook 'typescript-mode-hook 'tide-setup)

(add-hook 'typescript-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c r") 'tide-rename-symbol)))
