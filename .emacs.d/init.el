;;debug mode
(require 'cl)
;;yes-no to y-n
(fset 'yes-or-no-p 'y-or-n-p)
;;start up message not desc
(setq inhibit-startup-screen t)

;;load path add
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))
;;
(add-to-load-path "elisp" "conf" "public_repos")
