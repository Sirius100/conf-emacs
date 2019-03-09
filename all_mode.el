;; Файл хранит общие настройки нумерации строк , цветовую тему и т.д

;; linum plygin
(require 'linum)
(line-number-mode t)
(global-linum-mode t)
(column-number-mode  t)
(setq linum-format " %d")

;;запуск emacs как сервера
(require 'server)
(unless (server-running-p)
 (server-start))

;;color-themas
(setq color-path "/home/sirius/.emacs.d/lisp/color-theme/")
(add-to-list 'load-path color-path t)
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-comidia)

;быстрая навигация между открытыми буферами
;; Buffer Selection and ibuffer settings
(require 'bs)
(require 'ibuffer)
(defalias 'list-buffers 'ibuffer) ;; отдельный список буферов при нажатии C-x C-b
(global-set-key (kbd "<f2>") 'bs-show) ;; запуск buffer selection кнопкой F2

;;Подсветка кода:
;; Syntax highlighting
(require 'font-lock)
(global-font-lock-mode             t) ;; включено с версии Emacs-22. На всякий...
(setq font-lock-maximum-decoration t)

;;интерактивный поиск и открытие файлов
(require 'ido)
(ido-mode                      t)
(icomplete-mode                t)
(ido-everywhere                t)
(setq ido-vitrual-buffers      t)
(setq ido-enable-flex-matching t)

;;Плавный скроллинг:
;; Scrolling settings
(setq scroll-step               1) ;; вверх-вниз по 1 строке
(setq scroll-margin            10) ;; сдвигать буфер верх/вниз когда курсор в 10 шагах от верхней/нижней границы  
(setq scroll-conservatively 10000)

;;Общий с ОС буфер обмена:
;; Clipboard settings
(setq x-select-enable-clipboard t)


;;Настройки пустых строк в конце буфера:
;; End of file newlines
(setq require-final-newline    t) ;; добавить новую пустую строку в конец файла при сохранении
(setq next-line-add-newlines nil) ;; не добавлять новую строку в конец при смещении 
;; курсора  стрелками

;;Выделять результаты поиска:
;; Highlight search resaults
(setq search-highlight        t)
(setq query-replace-highlight t)

;; Show-paren-mode settings
(show-paren-mode t) ;; включить выделение выражений между  {},[],()
(setq show-paren-style 'expression) ;; выделить цветом выражения между {},[],()

;; Electric-modes settings
(electric-pair-mode    1) ;; автозакрытие (),{},[] с переводом курсора внутрь скобок
(electric-indent-mode -1) ;;отключить индентацию electic-indent-mode (default in Emacs-24.4)

;; Delete selection
(delete-selection-mode t)

;;============================================================================new section======================


;;Убираю меню. scroll-bar, tull-bar
;; Disable GUI components
(tooltip-mode      -1)
(menu-bar-mode     -1) ;; отключаю графическое меню
(tool-bar-mode     -1) ;; отключаю tool-bar
(scroll-bar-mode   -1) ;; отключаю полосу прокрутки
(blink-cursor-mode -1) ;; курсор не мигает
(setq use-dialog-box     nil) ;; ни каких графических окон и диалогов - все через минибуфер
(setq redisplay-dont-pause t)  ;; улучшаю отрисовку буфера
(setq ring-bell-function 'ignore) ;; отключаю звуковой сигнал

;;============================================================================new section======================

;Убираю экраны приветствия при запуске
;; Inhibit startup/splash screen
(setq inhibit-splash-screen   t)
(setq ingibit-startup-message t) ;; экран приветствия можно вызвать C-h C-a

;;============================================================================new section======================

;;Пишем название открытого буфера в шапке окна
;; Display the name of the current buffer in the title bar
(setq frame-title-format "GNU Emacs: %b")


;;Для того чтобы можно было не пустые дирректории удалять
;;Direct-mode
(require 'dired)
(setq dired-recursive-deletes 'top)


;;company-mode
(require 'company)
(global-company-mode t);;включение company
(setq company-minimum-prefix-length 1);;количество символов для появления меню ввода
(setq company-idle-delay 0.2);;задержка перед появлением меню
















(provide 'all_mode.el)
