;; redo+の設定
;(require ‘redo+)
(when (require 'redo nil t)
  ;; C-. にredoを割り当てる
  (global-set-key (kbd "C-.") 'redo))
(setq undo-no-redo t)
(setq undo-limit 60000)
(setq undo-strong-limit 600000)
