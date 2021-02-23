;; (defvar ls/default-font-size 140)
;; (defvar ls/default-variable-font-size 140)

;; Setting variables relating to one system 
(pcase system-type
  ('gnu/linux
    (message "on linux")	 
    ;; font sizes 
    (defvar ls/default-font-size 100)
    (defvar ls/default-variable-font-size 100))
   
  ('darwin ;; macOs 
    (message "on mac") 
    ;; font sizes 
    (defvar ls/default-font-size 140)
    (defvar ls/default-variable-font-size 140)

    ;; set left option to meta and keep rigth option
    (defvar mac-option-key-is-meta t)
    (defvar mac-right-option-modifier nil)))

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

  ;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package no-littering)

;; no-littering doesn't set this by default so we must place
;; auto save files in the same path as it uses for sessions
(setq auto-save-file-name-transforms
      `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

(server-start)

(setq inhibit-startup-message t)

(scroll-bar-mode -1)	; disable visible scrollbar
(tool-bar-mode -1)	; disable the toolbar
(tooltip-mode -1)	; disable tooltips
(set-fringe-mode 10)	; give some breathing room

(menu-bar-mode -1) 	; disable the menu bar

(column-number-mode)
(global-display-line-numbers-mode)

;; disable line numbers for some modes
(dolist(mode '(org-mode-hook
	       term-mode-hook
	       shell-mode-hook
	       eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; remove fringe from the sides
(fringe-mode 0)

(set-face-attribute 'default nil :font "Fira Code" :height ls/default-font-size)

;; set the fixed pitch face
(set-face-attribute 'fixed-pitch nil :font "Fira Code" :height ls/default-font-size)

;;set the variable pitch face
(set-face-attribute 'variable-pitch nil :font "Cantarell" :height ls/default-variable-font-size :weight 'regular)

(defun ls/set-font-faces ()
  (message "Setting faces!")
  (set-face-attribute 'default nil :font "Fira Code" :height ls/default-font-size)

  ;; set the fixed pitch face
  (set-face-attribute 'fixed-pitch nil :font "Fira Code" :height ls/default-font-size)

  ;;set the variable pitch face
  (set-face-attribute 'variable-pitch nil :font "Cantarell" :height ls/default-variable-font-size :weight 'regular))

(if (daemonp) 
    (add-hook 'after-make-frame-functions
	      (lambda (frame)
		     (setq doom-modeline-icon t)
		     (with-selected-frame frame 
		       (ls/set-font-faces))))
  (ls/set-font-faces))

;; make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(global-set-key (kbd "C-M-u") 'universal-argument)

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)

  ;; use visual line motions even outside of visual-line-mode buffers
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal)
  (evil-set-initial-state 'org-mode 'normal))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package general 
  :config 
  (general-create-definer ls/leader-keys 
    :keymaps '(normal insert visual emacs) 
    :prefix "SPC" 
    :global-prefix "C-SPC") 

  (ls/leader-keys 
    "t" '(:ignore t :which-key "toggles") 
    "c" '(lambda () (interactive) (find-file (expand-file-name "~/.emacs.d/config.org")))))

(use-package command-log-mode)

(use-package all-the-icons)

(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
	doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-opera t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done)
	 ("C-l" . ivy-alt-done)
	 ("C-j" . ivy-next-line)
	 ("C-k" . ivy-prevous-line)
	 :map ivy-switch-buffer-map
	 ("C-k" . ivy-previous-line)
	 ("C-l" . ivy-done)
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-k" . ivy-previous-line)
	 ("C-d" . ivy-reverse-search-kill))
  :config
  (ivy-mode 1))

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x j" . counsel-switch-buffer)
         ("C-x C-f" . counsel-find-file)
         ("C-M-l" . counsel-imenu)
         :map minibuffer-local-map
	 ("C-r" . 'counsel-minibuffer-history)))

(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-varibale-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(ls/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))

(defun ls/org-font-setup ()
  (font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

  (dolist (face '((org-level-1 . 1.2)
		  (org-level-2 . 1.1)
		  (org-level-3 . 1.05)
		  (org-level-4 . 1.0)
		  (org-level-5 . 1.1)
		  (org-level-6 . 1.1)
		  (org-level-7 . 1.1)
		  (org-level-8 . 1.1)))
    (set-face-attribute (car face) nil :font "Cantarell" :weight 'regular :height (cdr face)))

  ;; ensures that anything that should be in fixed-pitch in org files appear that way
  (set-face-attribute 'org-block nil    :foreground nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-table nil    :inherit 'fixed-pitch)
  (set-face-attribute 'org-formula nil  :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil     :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-table nil    :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-checkbox nil  :inherit 'fixed-pitch))

(defun ls/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (visual-line-mode 1)
  (setq org-src-tab-acts-natively t)
  (setq org-src-preserve-indentation t)
  (setq org-src-fontify-natively t))

(use-package org
  :hook (org-mode . ls/org-mode-setup)
  :config
  (setq org-ellipsis " ▾"
	org-hide-emphasis-markers t)

  (setq org-agenda-start-with-log-mode t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)

  (setq org-agenda-files
      '("~/Dropbox/org-files/brain.org"
	  "~/Dropbox/org-files/cal.org"
	  "~/.emacs.d/config.org"))

  (setq org-todo-keywords
	'((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")))

  (setq org-refile-targets
	'(("archive.org" :maxlevel . 1)
	  ("brain.org" :maxlevel . 1)))

  ;; save org buffers after refiling
  (advice-add 'org-refile :after 'org-save-all-org-buffers)

  (setq org-capture-templates
    `(("b" "brain")
      ("bt" "TODO" entry (file+olp "~/Dropbox/org-files/brain.org" "TODOs")
           "* TODO %?\n  %U\n  %a\n  %i" :empty-lines 1)
      ("bc" "brain construction" entry (file+olp  "~/Dropbox/org-files/brain.org" "brain construction site")
           "- %?")))

  (define-key global-map (kbd "C-c c")
    (lambda () (interactive) (org-capture nil)))
  
  (ls/org-font-setup))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(defun ls/org-mode-visual-fill ()
  (setq visual-fill-column-width 140
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :hook (org-mode . ls/org-mode-visual-fill))

(org-babel-do-load-languages
  'org-babel-load-languages
  '((emacs-lisp . t)
    (python . t)))

;; This is needed as of Org 9.2
(require 'org-tempo)

(add-to-list 'org-structure-template-alist '("sh" . "src shell"))
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))

;; automatically tangle our Emacs.org config file when we save it
(defun ls/org-babel-tangle-config ()
  (when (string-equal (file-name-directory (buffer-file-name))
                      (expand-file-name user-emacs-directory))
    ;; dynamic scoping to the rescue
    (let ((org-confirm-babel-evaluate nil))
      (org-babel-tangle))))

(add-hook 'org-mode-hook (lambda () (add-hook 'after-save-hook #'ls/org-babel-tangle-config)))

(setq package-check-signature nil)


(use-package org-gcal
:ensure t
:config
(setq org-gcal-client-id "886773733977-4pk98ji1jp22tma0fokhj2efntl1k0um.apps.googleusercontent.com"
org-gcal-client-secret "smU0Alm67oRagiF04IzMe1-g"
org-gcal-file-alist '(("schwan.luc@gmail.com" .  "~/Dropbox/org-files/cal.org"))))

(add-hook 'org-agenda-mode-hook (lambda () (org-gcal-sync) ))
(add-hook 'org-capture-after-finalize-hook (lambda () (org-gcal-sync) ))

(use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))

(defun efs/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (lsp-mode . efs/lsp-mode-setup)
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Or 'C-l', 's-l'
  :config
  (lsp-enable-which-key-integration t))

(setq lsp-enable-links nil)

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-position 'bottom))

(use-package lsp-treemacs
  :after lsp)

(use-package lsp-ivy)

(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))

(use-package dart-mode)

(use-package dart-server)

(use-package lsp-dart
  :ensure t
  :hook (dart-mode . lsp)
  :init
  (setq lsp-dart-sdk-dir "/Users/Luca_Schwan/dev_tools/flutter/bin/cache/dart-sdk/"))

(use-package lsp-haskell
  :ensure t
  :hook (haskell-mode-hook . lsp)
  :hook (haskell-literate-mode-hook . lsp)
  :init 
  (setq haskell-language-server-wrapper "~/.ghcup/bin/"))

(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package magit
  :commands magit-status
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

;; (use-package forge
;;   :after magit)

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (when (file-directory-p "~/dev/current")
    (setq projectile-project-search-path '("~/dev/current")))
  (setq projectile-switch-project-action #'projectile-dired))

(use-package counsel-projectile
  :config (counsel-projectile-mode))

(defun electric-pair ()
     "If at end of line, insert character pair without surrounding spaces.
 Otherwise, just insert the typed character."
     (interactive)
     (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))

(add-hook 'lsp-mode-hook
	  (lambda ()
	    (define-key lsp-mode-map "\"" 'electric-pair)
	    (define-key lsp-mode-map "\'" 'electric-pair)
	    (define-key lsp-mode-map "(" 'electric-pair)
	    (define-key lsp-mode-map "[" 'electric-pair)
	    (define-key lsp-mode-map "{" 'electric-pair)))

(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind (("C-x C-j" . dired-jump))
  :custom ((dired-listing-switches "-agho --group-directories-first"))
  :config
  (evil-collection-define-key 'normal 'dired-mode-map
    "h" 'dired-up-directory
    "l" 'dired-find-file))

(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode))
