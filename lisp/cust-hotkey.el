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

(provide 'cust-hotkey)
