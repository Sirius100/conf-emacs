;; file configuration quick buttons (быстрые клавиши)

;;Замечательный способ «прыгать» по определениям функций почти для всех языков программирования  Imenu.
;;Imenu
(require 'imenu)
(setq  imenu-auto-rescan             t);;втоматически обновлять список функций в буфере
(setq imenu-use-popup-menu         nil);;диалоги Imenu только в минибуфере
(global-set-key (kbd "<f6>") 'imenu);;вызов Imenu на F6


;;настройка  Bookmark
;; Bookmark settings
(require 'bookmark)
(setq bookmark-save-flag t) ;;Автоматически сохранять закладки в файл
(when (file-exists-p (concat user-emacs-directory "bookmarks"))
    (bookmark-load bookmark-default-file t)) ;;попытаться найти и открыть файл с закладками 
(global-set-key (kbd "<f3>") 'bookmark-set) ;; создать закладку на  F3 
(global-set-key (kbd "<f4>") 'bookmark-jump) ;; прыгнуть на закладку по  F4
(global-set-key (kbd "<f5>") 'bookmark-bmenu-list) ;; открыть список закладок по F5
(setq bookmark-default-file (concat user-emacs-directory "bookmarks")) ;;хранить закладки в файл bookmarks  emacs.d


;быстрая навигация между открытыми буферами
;; Buffer Selection and ibuffer settings
(require 'bs)
(require 'ibuffer)
(defalias 'list-buffers 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b
(global-set-key (kbd "<f2>") 'bs-show) ;; запуск buffer selection кнопкой F2


;; Org-mode settings
(require 'org) ;; Вызвать org-mode
(global-set-key "\C-ca" 'org-agenda) ;; переопределение клавиатурных комбинаций для внутренних
(global-set-key "\C-cb" 'org-iswitchb) ;; подрежимов org-mode
(global-set-key "\C-cl" 'org-store-link)
(add-to-list 'auto-mode-alist '("\\.org$" . Org-mode)) ;; ассоциируем *.org файлы с org-mode *. org-mode




(provide 'keybind.el)
