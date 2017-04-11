;;(load-theme 'dracula t)
(require-package 'material-theme)
(require-package 'dracula-theme)
(require-package 'atom-one-dark-theme)
(require-package 'monokai-theme)
(require-package 'color-theme-sanityinc-tomorrow)

;; If you don't customize it, this is the theme you get.
(setq-default custom-enabled-themes '(sanityinc-tomorrow-bright))

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes)

(defun bright ()
  (interactive)
  (load-theme 'sanityinc-tomorrow-bright))

(defun light ()
  "Activate a light color theme."
  (interactive)
  (load-theme 'material-light))

(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (load-theme 'material))

(defun dracula ()
  "Activate dracula theme."
  (interactive)
  (load-theme 'dracula))

(provide 'init-themes)
