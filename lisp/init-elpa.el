(require 'package)
(setq package-archives '(
             ("melpa" . "https://melpa.org/packages/")
             ("gnu" . "http://elpa.gnu.org/packages/")
             ("marmalade" . "https://marmalade-repo.org/packages/")
             ("melpa-stable" . "http://stable.melpa.org/packages/")
             ("elpy" . "http://jorgenschaefer.github.io/packages/")
             ("Melpa-cn" . "http://elpa.zilongshanren.com/melpa/")
              ))

;; require-package
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))



(defun maybe-require-package (package &optional min-version no-refresh)
  "Try to install PACKAGE, and return non-nil if successful.
In the event of failure, return nil and print a warning message.
Optionally require MIN-VERSION.  If NO-REFRESH is non-nil, the
available package lists will not be re-downloaded in order to
locate PACKAGE."
  (condition-case err
      (require-package package min-version no-refresh)
    (error
     (message "Couldn't install optional package `%s': %S" package err)
     nil)))

(package-initialize)

(require-package 'fullframe)
(fullframe list-packages quit-window)

(require-package 'cl-lib)
(require 'cl-lib)

(provide 'init-elpa)
