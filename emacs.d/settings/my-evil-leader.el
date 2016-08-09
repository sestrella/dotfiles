(require 'evil-leader)
(require 'neotree)

(global-evil-leader-mode)

(evil-leader/set-leader ",")
(evil-leader/set-key "n" 'neotree-toggle)

(provide 'my-evil-leader)
