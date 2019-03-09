;; Этот файл подключает плагины используемые для Python

(require 'flycheck)
(global-flycheck-mode t)

;;(require 'python-mode)
;;(python-mode t)

(require 'pylint)
(require 'pymacs)
(require 'jedi-core)
(require 'ac-python)






(provide 'python.el)
