
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(package-initialize)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(add-to-list 'package-archives '("org" . "http://orgmode/elpa") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-lein-command "/usr/local/bin/lein")
 '(elm-format-on-save t)
 '(package-selected-packages
   (quote
    (god-mode elm-mode org-edna rainbow-delimiters magit neotree company paredit cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;solarized theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")


(load-theme 'solarized t)


;;cider to use figwheel
(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")



;;paredit turned on by default

    (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
    (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
    (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
    (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
    (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
    (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'prog-mode-hook 'enable-paredit-mode)



					;rainbow mode
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)


					;company mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(global-linum-mode t)



(add-hook 'elm-mode-hook
          (lambda ()
            (setq company-backends '(company-elm))))
;            (set (make-local-variable 'company-backends) '(company-elm))))

(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)




(global-set-key (kbd "<f8>") 'neotree-toggle)

(global-set-key (kbd "<escape>") 'god-mode-all)

(setq god-exempt-major-modes nil)
(setq god-exempt-predicates nil)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;;;org customizations

(setq org-todo-keywords
      '((sequence "TODO(t)" "IN PROGRESS(p)" "BLOCKED(b)" "|" "DONE(d)" "CANCELED(c)")))


(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("IN PROGRESS" . (:foreground "orange"))
	("BLOCKED" . (:foreground "black" :weight bold))
             ("CANCELED" . (:foreground "blue" :weight bold))))
(require 'org)
;; Make Org mode work with files ending in .org
;;(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))

;; The above is the default in recent emacsen
(god-mode-all)
