(use-package color-theme-solarized
  :init
    (setq color-themes '())
    (customize-set-variable 'frame-background-mode 'dark)
  :config (load-theme 'solarized t)
  :ensure t)

(provide 'init-solarized)
