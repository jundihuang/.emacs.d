;; hide those bars
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; close help page
(setq inhibit-splash-screen 1)


;;mode
(global-linum-mode)
(line-number-mode t)
;;(row,col)
(column-number-mode t)
(size-indication-mode t)

;; display time
(display-time-mode t)

(hl-line-mode t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; 高亮当前行
(global-hl-line-mode 1)

;; 设置光标
(setq-default cursor-type 'bar)

;; 默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-display)
