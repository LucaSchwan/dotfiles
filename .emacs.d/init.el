;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

;; to set the path from the shell
(when (daemonp)
  (exec-path-from-shell-initialize))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(unless package-archive-contents
  (package-refresh-contents))

;;load configuration file
(org-babel-load-file "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ember-keymap-prefix ".")
 '(indent-tabs-mode nil)
 '(package-selected-packages
   '(exec-path-from-shell ember-mode web-mode rjsx-mode restart-emacs auctex org-tree-slide undo-tree evil-colemak-basics xref-js2 which-key visual-fill-column use-package typescript-mode treepy rainbow-delimiters org-gcal org-bullets no-littering magit lsp-ui lsp-ivy lsp-haskell lsp-dart js2-refactor ivy-rich helpful general evil-nerd-commenter evil-collection doom-themes doom-modeline dart-server counsel-projectile company-box command-log-mode all-the-icons-dired))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
