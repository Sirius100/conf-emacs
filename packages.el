;; этот файл отвечает за загрузку плагинов из репозитариев


;;настройка установки пакетов из репозитариев Интернета
(load "package")
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                          ("melpa-stable" . "http://stable.melpa.org/packages/")))
;;==================================================================





(provide  'packages.el)
