(use-package color-theme-solarized
  :init
  (progn
    (customize-set-variable 'frame-background-mode 'dark)
    (setq-default color-themes '()))
  :config
  (load-theme 'solarized t)
  :ensure t)

(provide 'init-solarized)
