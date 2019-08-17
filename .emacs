;;настройки редактора 
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;; System-type definition
(defun system-is-linux()
    (string-equal system-type "gnu/linux"))
(defun system-is-windows()
    (string-equal system-type "windows-nt"))
    
;; Start Emacs as a server
(when (system-is-linux)
    (require 'server)
    (unless (server-running-p)
        (server-start))) ;; запустить Emacs как сервер, если ОС - GNU/Linux
        
(when (system-is-linux)
    (setq unix-init-path    "~/.emacs.d/lisp"))
    
;;Пишем название открытого буфера в шапке окна    
(setq frame-title-format "GNU Emacs: %b")    

;;Emacs «пройдется» по этим путям (где дополнения) при запуске:
(add-to-list 'load-path unix-init-path)

;; Show-paren-mode settings
(show-paren-mode t) ;; включить выделение выражений между {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()
