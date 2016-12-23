
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)
(require 'init-themes)

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-utils)
(require 'init-editing-utils)
(require 'init-mmm)

(require-package 'diminish)
;; require costoms
(require 'init-display)
(require 'init-fonts)
(require 'init-editing)

(require 'init-locales)

(require 'init-osx-keys)
(require 'init-org)
(require 'init-windows)

(require 'init-projectile)
(require 'init-whitespace)
(require 'init-smex)

(require 'init-rails)
(require 'init-ruby-mode)
(require 'init-css)

(require 'init-markdown)
(require 'init-company)
(require 'init-dash)
(require 'init-javascript)

;;rvm
(require-package 'rvm)
(rvm-use-default)

;; ido-mode
(ido-mode t)
(setq ido-enable-prefix nil
      ;;ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-separator"\n"
      ido-default-file-method 'selected-window)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 关闭自动保存的功能
(setq auto-save-default nil)

;; 禁止自动备份
(setq make-backup-files nil)

;; hotkey for shell
(global-set-key (kbd "C-x m") 'shell)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("eb0a314ac9f75a2bf6ed53563b5d28b563eeba938f8433f6d1db781a47da1366" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" default)))
 '(package-selected-packages
   (quote
    (css-eldoc skewer-less less-css-mode scss-mode sass-mode rainbow-mode guide-key highlight-escape-sequences whole-line-or-region move-dup page-break-lines multiple-cursors avy expand-region browse-kill-ring highlight-symbol undo-tree rainbow-delimiters nlinum indent-guide unfill default-text-scale yari yaml-mode whitespace-cleanup-mode switch-window smex skewer-mode rvm ruby-hash-syntax rspec-mode robe rinari projectile-rails org-pomodoro org-mac-iCal org-fstree org-cliplink mmm-mode material-theme markdown-mode json-mode js-comint grab-mac-link goto-gem fullframe dracula-theme diminish dash-at-point company-quickhelp coffee-mode bundler))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
