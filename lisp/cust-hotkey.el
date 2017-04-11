;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; hotkey for shell
(global-set-key (kbd "C-x m") 'shell)

;; projectile-find-file-in-known-projects
(global-set-key (kbd "C-c f") 'projectile-find-file-in-known-projects)

;; copy line
(global-set-key (kbd "C-c m l") 'avy-copy-line)

;; find grep
(global-set-key (kbd "C-c g") 'find-grep)


(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)

(global-set-key (kbd "M-[") 'indent-rigidly-left-to-tab-stop)
(global-set-key (kbd "M-]") 'indent-rigidly-right-to-tab-stop)

;; 键盘宏
(global-set-key (kbd "<f10>") 'call-last-kbd-macro)

(global-set-key (kbd "C-x K") 'kill-some-buffers)

(provide 'cust-hotkey)
