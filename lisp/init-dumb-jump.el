(require-package 'dumb-jump)
(require-package 'ag)

(dumb-jump-mode t)

(setq dumb-jump-default-project "~/")
(setq dumb-jump-selector 'helm)
(setq dumb-jump-prefer-searcher 'ag)

(global-set-key (kbd "C-M-m") 'dumb-jump-go)

(provide 'init-dumb-jump)
