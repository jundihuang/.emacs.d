;; ido-mode
(ido-mode t)
(setq ido-enable-prefix nil
      ;;ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-separator"\n"
      ido-default-file-method 'selected-window)

;; 模糊匹配
(require-package 'ido-better-flex)
(ido-better-flex/enable)

(provide 'init-ido)
