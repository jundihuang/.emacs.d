
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)
(require 'init-themes)
(require-package 'diminish)

(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-utils)
(require 'init-editing-utils)
(require 'init-mmm)

;; require costoms
(require 'init-ibuffer)
(require 'init-ido)
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

(require 'cust-hotkey)

;; 语法验证 ruby
(require 'init-flymark)

;; 搜索选中 字符
(require 'init-ace-jump-mode)

;; 方法跳转
(require 'init-dumb-jump)

;; git
(require 'init-git)

;; 关闭自动保存的功能
(setq auto-save-default nil)

;; 禁止自动备份
(setq make-backup-files nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes
   (quote
    ("98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(package-selected-packages
   (quote
    (ibuffer-vc yari yaml-mode xref-js2 whole-line-or-region whitespace-cleanup-mode unfill undo-tree switch-window smex skewer-less scss-mode sass-mode rvm ruby-hash-syntax ruby-end rspec-mode robe rinari rainbow-mode rainbow-delimiters projectile-rails page-break-lines org-pomodoro org-mac-iCal org-fstree org-cliplink nlinum multiple-cursors move-dup monokai-theme mmm-mode material-theme markdown-mode magit less-css-mode json-mode js-comint indent-guide ido-better-flex highlight-symbol highlight-escape-sequences helm-projectile helm-ag guide-key grab-mac-link goto-gem gitignore-mode gitconfig-mode git-timemachine git-messenger git-blamed fullframe expand-region dumb-jump dracula-theme diminish default-text-scale dash-at-point css-eldoc company-quickhelp color-theme-sanityinc-tomorrow coffee-mode bundler browse-kill-ring avy atom-one-dark-theme ag ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
