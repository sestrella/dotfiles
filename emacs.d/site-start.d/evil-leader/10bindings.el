(require 'evil-leader)
(require 'neotree)

(evil-leader/set-leader ",")
(evil-leader/set-key "n" 'neotree-toggle)

(provide 'bindings)
