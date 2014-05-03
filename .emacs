(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
)

(menu-bar-mode 0)
(tool-bar-mode 0)

(set-background-color "#444444")
(set-foreground-color "#bbbbbb")


(set-face-attribute 'font-lock-comment-face nil 
		    :foreground "peru" 
		    :slant 'italic 
		    :weight 'light)

(set-face-attribute 'font-lock-string-face nil 
		    :foreground "lime green" )

(set-face-attribute 'font-lock-builtin-face nil 
		    :foreground "dark sea green" )

(set-face-attribute 'font-lock-keyword-face nil 
		    :foreground "dark sea green"
		    :weight 'bold )

(set-face-attribute 'font-lock-constant-face nil 
		    :foreground "dark sea green" )


(set-face-attribute 'font-lock-variable-name-face nil 
		    :foreground "goldenrod" )

(set-face-attribute 'font-lock-type-face nil 
		    :foreground "dark goldenrod"
		    :weight 'bold )

(set-face-attribute 'font-lock-function-name-face nil
		    :foreground "LightSkyBlue"
		    :weight 'bold)

(setq steck-mode-disabled-color 
      (face-foreground 'font-lock-comment-face))

(setq steck-mode-enabled-color 
      (frame-parameter nil 'background-color))

(define-minor-mode 
  steck-mode 
  "Sets comments to be the color of the background"
  nil
  " Steck"
  nil
  :global t
  (if steck-mode
    (set-face-foreground 'font-lock-comment-face steck-mode-enabled-color)
    (set-face-foreground 'font-lock-comment-face steck-mode-disabled-color))
)
