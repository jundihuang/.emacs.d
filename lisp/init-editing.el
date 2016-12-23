
;;;general edit
(setq-default tab-width 2)
;; 使用space代替tab
(setq-default indent-tabs-mode nil);

;; 选中并输入时会替换
(delete-selection-mode 1)

;; 自动在最后加入一行
(setq require-final-newline t)

;; 括号匹配
(show-paren-mode)

(provide 'init-editing)
