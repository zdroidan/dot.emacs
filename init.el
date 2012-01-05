; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; ------------------------------------------------------------------------
;; @ coding system
; 言語を日本語にする
(set-language-environment 'Japanese)
; 極力UTF-8とする
(prefer-coding-system 'utf-8)

(add-to-list 'load-path "/usr/share/emacs/site-lisp") 
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; ------------------------------------------------------------------------
;; @ font

   ;; 標準フォントの設定
   ;; (set-default-font "M+2VM+IPAG circle-12")

   ;; IME変換時フォントの設定（テストバージョンのみ）
   ;; (setq w32-ime-font-face "MigMix 1M")
   ;; (setq w32-ime-font-height 22)

   ;; 固定等幅フォントの設定
   ;; (set-face-attribute 'fixed-pitch    nil :family "M+2VM+IPAG circle")

   ;; 可変幅フォントの設定
   ;; (set-face-attribute 'variable-pitch nil :family "M+2VM+IPAG circle")

; =======================================================================
; @ フレーム
;; (setq default-frame-alist
;;       (append (list '(foreground-color . "lemon chiffon")
;;                     '(background-color . "dark slate gray")
;;                     '(mouse-color . "white")
;;                     '(cursor-color . "white")
;;                     '(font . "tt-font"); TrueType
;;                     '(width . 81)
;;                     '(height . 48)
;;                     '(top . 10)
;;                     '(left . 480))
;;               default-frame-alist))
  (setq default-frame-alist
        (append '(
;(add-to-list 'default-frame-alist `(font . "Ricty-12"))
		  (font                 . "Ricty-12")
                  (width                . 102    )
                  (height               . 61     )
                  (top                  . 0      )
                  (left                 . 0      )
                  (line-spacing         . 0      ) ;; 文字間隔
;                  (left-fringe          . 0      ) ;; 左フリンジ幅
;                  (right-fringe         . 0      ) ;; 右フリンジ幅
                  (menu-bar-lines       . nil    ) ;; メニューバー
                  (tool-bar-lines       . nil    ) ;; ツールバー
                  (vertical-scroll-bars . nil    ) ;; スクロールバー
                  (cursor-type          . box    ) ;; カーソル種別
                  (foreground-color     . "white") ;; 文字色
;                  (foreground-color     . "dark slate gray") ;; 文字色
                  (background-color     . "black") ;; 背景色
;                  (background-color
;                  (background-color     . "lemon chiffon") ;; 背景色
                  (cursor-color         . "white"  ) ;; カーソル色
                  ) default-frame-alist) )
  (setq initial-frame-alist default-frame-alist)

;; ------------------------------------------------------------------------
;; @ frame

   ;; フレームタイトルの設定
   (setq frame-title-format "%b")

;; ------------------------------------------------------------------------
;; @ buffer

   ;; バッファ画面外文字の切り詰め表示
   (setq truncate-lines nil)

   ;; ウィンドウ縦分割時のバッファ画面外文字の切り詰め表示
   (setq truncate-partial-width-windows t)

   ;; 同一バッファ名にディレクトリ付与
   (require 'uniquify)
   (setq uniquify-buffer-name-style 'forward)
   (setq uniquify-buffer-name-style 'post-forward-angle-brackets)
   (setq uniquify-ignore-buffers-re "*[^*]+*")

;; ------------------------------------------------------------------------
;; @ fringe

   ;; バッファ中の行番号表示
;   (global-linum-mode t)

   ;; 行番号のフォーマット
;   (set-face-attribute 'linum nil :foreground "red" :height 0.8)
;   (setq linum-format "%4d")

;; ------------------------------------------------------------------------
;; @ modeline

   ;; 行番号の表示
;   (line-number-mode t)

   ;; 列番号の表示
;   (column-number-mode t)

   ;; 時刻の表示
;   (require 'time)
;   (setq display-time-24hr-format t)
;   (setq display-time-string-forms '(24-hours ":" minutes))
;   (display-time-mode t)

   ;; ;; cp932エンコード時の表示を「P」とする
   ;; (coding-system-put 'cp932 :mnemonic ?P)
   ;; (coding-system-put 'cp932-dos :mnemonic ?P)
   ;; (coding-system-put 'cp932-unix :mnemonic ?P)
   ;; (coding-system-put 'cp932-mac :mnemonic ?P)

;; ------------------------------------------------------------------------
;; @ cursor

   ;; カーソル点滅表示
   (blink-cursor-mode 0)

   ;; スクロール時のカーソル位置の維持
   (setq scroll-preserve-screen-position t)

   ;; スクロール行数（一行ごとのスクロール）
   (setq vertical-centering-font-regexp ".*")
   (setq scroll-conservatively 35)
   (setq scroll-margin 0)
   (setq scroll-step 1)

   ;; 画面スクロール時の重複行数
;   (setq next-screen-context-lines 1)
   (setq next-screen-context-lines 3)

;; ------------------------------------------------------------------------
;; @ default setting

   ;; 起動メッセージの非表示
   (setq inhibit-startup-message t)

   ;; スタートアップ時のエコー領域メッセージの非表示
;   (setq inhibit-startup-echo-area-message -1)

;; ;; ------------------------------------------------------------------------
;; ;; @ image-library
;;    (setq image-library-alist
;;          '((xpm "libxpm.dll")
;;            (png "libpng14.dll")
;;            (jpeg "libjpeg.dll")
;;            (tiff "libtiff3.dll")
;;            (gif "libungif4.dll")
;;            (svg "librsvg-2-2.dll")
;;            (gdk-pixbuf "libgdk_pixbuf-2.0-0.dll")
;;            (glib "libglib-2.0-0.dll")
;;            (gobject "libgobject-2.0-0.dll"))
;;          )

;; ------------------------------------------------------------------------
;; @ backup

   ;; 変更ファイルのバックアップ
   (setq make-backup-files nil)

   ;; 変更ファイルの番号つきバックアップ
   (setq version-control nil)

   ;; 編集中ファイルのバックアップ
   (setq auto-save-list-file-name nil)
   (setq auto-save-list-file-prefix nil)

   ;; 編集中ファイルのバックアップ先
   (setq auto-save-file-name-transforms
         `((".*" ,temporary-file-directory t)))

   ;; 編集中ファイルのバックアップ間隔（秒）
   (setq auto-save-timeout 30)

   ;; 編集中ファイルのバックアップ間隔（打鍵）
   (setq auto-save-interval 500)

   ;; バックアップ世代数
   (setq kept-old-versions 1)
   (setq kept-new-versions 2)

   ;; 上書き時の警告表示
   ;- (setq trim-versions-without-asking nil)

   ;; 古いバックアップファイルの削除
   (setq delete-old-versions t)

;; ;; ------------------------------------------------------------------------
;; ;; @ key bind

;;    ;; 標準キーバインド変更
;;    (global-set-key "\C-z"          'scroll-down)

;; ;; ------------------------------------------------------------------------
;; ;; @ scroll

;;    ;; バッファの先頭までスクロールアップ
;;    (defadvice scroll-up (around scroll-up-around)
;;      (interactive)
;;      (let* ( (start_num (+ 1 (count-lines (point-min) (point))) ) )
;;        (goto-char (point-max))
;;        (let* ( (end_num (+ 1 (count-lines (point-min) (point))) ) )
;;          (goto-line start_num )
;;          (let* ( (limit_num (- (- end_num start_num) (window-height)) ))
;;            (if (< (- (- end_num start_num) (window-height)) 0)
;;                (goto-char (point-max))
;;              ad-do-it)) )) )
;;    (ad-activate 'scroll-up)

;;    ;; バッファの最後までスクロールダウン
;;    (defadvice scroll-down (around scroll-down-around)
;;      (interactive)
;;      (let* ( (start_num (+ 1 (count-lines (point-min) (point)))) )
;;        (if (< start_num (window-height))
;;            (goto-char (point-min))
;;          ad-do-it) ))
;;    (ad-activate 'scroll-down)

;; ;; ------------------------------------------------------------------------
;; ;; @ hiwin-mode
;;    (require 'hiwin)

;;    ;; 非アクティブwindowの背景色（hiwin-modeの実行前に設定が必要）
;; ;   (setq hiwin-deactive-color "dark slate graygray30")
;; ;   (setq hiwin-deactive-color "dark slate gray")
;;    (setq hiwin-deactive-color "SystemBackground")

;;    ;; hiwin-modeを有効にする
;;    (hiwin-mode)

;;    ;; kill-bufferで再描画されるようにする
;;    (defadvice kill-buffer
;;      (around kill-buffer-around activate)
;;      ad-do-it
;;      (if hiwin-ol (hiwin-draw-ol)))

;; ;; ------------------------------------------------------------------------
;; ;; @ tabbar
;;    (require 'cl)
;;    (require 'tabbar)

;;    ;; scratch buffer 以外をまとめてタブに表示する
;;    (setq tabbar-buffer-groups-function
;;          (lambda (b) (list "All Buffers")))
;;    (setq tabbar-buffer-list-function
;;          (lambda ()
;;            (remove-if
;;             (lambda(buffer)
;;               (unless (string-match (buffer-name buffer) "\\(*scratch*\\|*Apropos*\\|*shell*\\|*eshell*\\|*Customize\\)")
;;                 (find (aref (buffer-name buffer) 0) " *"))
;;               )
;;             (buffer-list))))

;;    ;; tabbarを有効にする
;;    (tabbar-mode)

;;    ;; ボタンをシンプルにする
;;    (setq tabbar-home-button-enabled "")
;;    (setq tabbar-scroll-right-button-enabled "")
;;    (setq tabbar-scroll-left-button-enabled "")
;;    (setq tabbar-scroll-right-button-disabled "")
;;    (setq tabbar-scroll-left-button-disabled "")

;;    ;; Ctrl-Tab, Ctrl-Shift-Tab でタブを切り替える
;;    (dolist (func '(tabbar-mode tabbar-forward-tab tabbar-forward-group tabbar-backward-tab tabbar-backward-group))
;;      (autoload func "tabbar" "Tabs at the top of buffers and easy control-tab navigation"))
;;    (defmacro defun-prefix-alt (name on-no-prefix on-prefix &optional do-always)
;;      `(defun ,name (arg)
;;         (interactive "P")
;;         ,do-always
;;         (if (equal nil arg)
;;             ,on-no-prefix
;;           ,on-prefix)))
;;    (defun-prefix-alt shk-tabbar-next (tabbar-forward-tab) (tabbar-forward-group) (tabbar-mode 1))
;;    (defun-prefix-alt shk-tabbar-prev (tabbar-backward-tab) (tabbar-backward-group) (tabbar-mode 1))
;;    (global-set-key [(control tab)] 'shk-tabbar-next)
;;    (global-set-key [(control shift tab)] 'shk-tabbar-prev)

;; ------------------------------------------------------------------------
;; @ menu-tree
   ;; (setq menu-tree-coding-system 'utf-8)
   ;; (require 'menu-tree)

;; move window (Shift + cursor)
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
;; (require 'auto-install)
;; (setq auto-install-directory "~/.emacs.d/auto-install/")
;; (auto-install-update-emacswiki-package-name t)
;; (auto-install-compatibility-setup)

;;====================================
;;; 折り返し表示ON/OFF
;;====================================
;; (defun toggle-truncate-lines ()
;;   "折り返し表示をトグル動作します."
;;   (interactive)
;;   (if truncate-lines
;;       (setq truncate-lines nil)
;;     (setq truncate-lines t))
;;   (recenter))


;; (global-set-key "\C-c\C-l" 'toggle-truncate-lines) ; 折り返し表示ON/OFF


;; ------------------------------------------------------------------------
;; @ split-window exec-eshell

;; (split-window-horizontally)
;; (other-window 1)
;; (split-window-vertically)
;; (eshell)
;; (other-window 1)
;; (other-window 1)

;; (add-hook 'after-init-hook  (lambda() (eshell)))

;; ;;(autoload 'javascript-mode "javascript" nil t)
;; ;;(setq auto-mode-alist (cons '("\\.js$" . javascript-mode) auto-mode-alist))
;; (autoload 'jasmin-mode "jasmin" nil t)
;; ;;(setq auto-mode-alist (cons '("\\.smali$" . jasmin-mode) auto-mode-alist))
;; (setq auto-mode-alist (cons '("MoviePlayer.java$" . jasmin-mode) auto-mode-alist))
;; (setq auto-mode-alist (cons '("DataHelper.java$" . jasmin-mode) auto-mode-alist))


;; (autoload 'javap-mode "javap" nil t)
;; (setq auto-mode-alist (cons '("\\.class$" . javap-mode) auto-mode-alist))

;; (load-file "~/cedet-1.0/common/cedet.el")
;; (semantic-load-enable-code-helpers)
;; (setq semantic-load-turn-useful-things-on t)

(add-hook
 'jdb-mode-hook
 '(lambda () 
;    (set-buffer-process-coding-system 'euc-japan 'euc-japan)
    (gud-def gud-break-main  "break main"  nil "Set breakpoint at main.")
    (gud-def gud-run  "run"  nil "run.")
;    (gud-def gud-display  "display %e"  nil "display C expression at point.")
    (gud-def gud-display  "locals"  nil "display C expression at point.")

    ; kye bindings ...
    (global-set-key  [f2] 'gud-break)
    (global-set-key  [f3] 'gud-remove)
    (global-set-key  [f4] 'gud-run)
    (global-set-key  [f5] 'gud-cont)
    (global-set-key  [f6] 'gud-finish)
    (global-set-key  [f7] 'gud-display)
    (global-set-key  [f8] 'gud-print)
    (global-set-key  [f9] 'gud-next)
    (global-set-key  [(shift f9)] 'gud-finish)
    (global-set-key  [f10] 'gud-step)
    (setq mode-line-format
          "2:break 3:clear 4:run 5:continue 6:finish 7:display 8:print 9:next 10:step")

    ; initialization
;    (gud-break-main nil)
;    (gud-run nil)
))

;; (require 'cedet)

;; ;; (load-library "cedet")
;; (global-ede-mode 1)
;; (semantic-mode 1)
;; (setq semantic-default-submodes 
;;       '(
;; 	global-semantic-idle-scheduler-mode 
;; 	global-semantic-idle-completions-mode
;; 	global-semanticdb-minor-mode
;; 	global-semantic-decoration-mode
;; 	global-semantic-highlight-func-mode
;; 	global-semantic-stickyfunc-mode
;; 	global-semantic-mru-bookmark-mode
;; 	))

;; (require 'jde)

;; ;; (setq semantic-load-turn-everything-on t)
;; ;; (require 'semantic-load)

;; ;(add-to-list 'load-path (expand-file-name "~/emacs/site/jdibug-0.5"))
;; ;(add-to-list 'load-path (expand-file-name "c:/gnupack_devel-6.02/app/emacs/site-lisp/jdibug-0.5"))
;; (require 'jdibug)
;; (custom-set-variables
;;   ;; custom-set-variables was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(jde-complete-function (quote jde-complete-menu))
;;  '(jde-debugger (quote ("jdb")))
;;  '(jde-jdk-registry (quote (("1.6.0_24" . "c:/Program Files/Java/jdk1.6.0_24"))))
;;  '(jde-run-option-debug (quote ("Client" "Socket" "javadebug" nil "8700" t)))
;;  '(jde-sourcepath (quote ("c:/gnupack_devel-6.02/home/0519朝活/javasrc/"))))
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  )

;;; -*- Emacs-Lisp -*-

;;; 英和辞書閲覧 sdic-mode の設定


;; ;; Debian 用パッケージを使ってインストールした場合、(autoload ～) は 
;; ;; /etc/emacs/site-start.d/50sdic で行っていますので、キーバインドの設
;; ;; 定 (global-set-key ～) のみで十分です。

;; (autoload 'sdic-describe-word "sdic" "英単語の意味を調べる" t nil)
;; (global-set-key "\C-cw" 'sdic-describe-word)
;; (autoload 'sdic-describe-word-at-point "sdic" "カーソル位置の英単語の意味を調べる" t nil)
;; (global-set-key "\C-cW" 'sdic-describe-word-at-point)

;; ;; これは、動作と見掛けを調節するための設定です。
;; (setq sdic-window-height 8
;;       sdic-disable-select-window t)

;; ;; Debian 用パッケージを利用するか、Makefile を利用して辞書を同時にイ
;; ;; ンストールした場合は、辞書に関する設定も完了済ですから、特別な設定
;; ;; は要りません。以下の設定では、個人的に検索する辞書を付け加えていま
;; ;; す。研究室と自宅とで検索する辞書を変更しています。

;; (setq sdic-eiwa-dictionary-list '((sdicf-client "~/usr/dict/gene.sdic"))
;; 	  sdic-waei-dictionary-list '((sdicf-client "~/usr/dict/jedict.sdic"
;; 						    (add-keys-to-headword t))))

;; ;; diredでWindowsに関連付けられたアプリを起動する
;; (defun dired-winopen ()
;;   "Type '[dired-winstart]': win-start the current line's file."
;;   (interactive)
;;   (if (eq major-mode 'dired-mode)
;;       (let ((fname (dired-get-filename)))
;; 	(w32-shell-execute "open" fname)
;; 	(message "Windwos Open file: %s" fname))))
;; ;;; dired のキー割り当て追加
;; (add-hook 'dired-mode-hook
;; 	  (lambda ()
;; 	    (define-key dired-mode-map "z" 'dired-winopen))) ;; キーバインド 

;;; 対応するカッコをハイライトさせる
;(show-paren-mode t)

;;
;; フォントの設定
;;

;; VMware 上の X Server であるか？
;; (defvar my-x-on-vmware nil)
;; (if (string-match "^HOSTNAME-ON-VMWARE" (system-name))
;;     (setq my-x-on-vmware t))
;; (setq my-x-on-vmware t)

;; (when window-system
;;   (cond
;;    ;; Emacs 23 以上
;;    ((>= emacs-major-version 23)
;;     (let (my-font-height my-font my-font-ja my-font-size my-fontset)
;;       (cond
;;        ;; for X (debian/ubuntu/fedora)
;;        ((eq window-system 'x)
;; 	;;(setq my-font-height 90)
;; 	(setq my-font-height 105)
;; 	;;(setq my-font-height 120)
;; 	;;(setq my-font "Monospace")
;; 	;;(setq my-font "Inconsolata")
;; 	(setq my-font "Ricty Discord")
;; 	;;(setq my-font "Takaoゴシック")
;; 	;;(setq my-font-ja "VL ゴシック")
;; 	(setq my-font-ja "Ricty Discord")
;; 	;;(setq my-font-ja "Takaoゴシック")
;; 	;;(setq my-font-ja "IPAゴシック")

;; 	(setq face-font-rescale-alist
;; 	      '(("-cdac$" . 1.3)))

;; 	;; VMware 上のX11では、800x600 のとき 96 dpi になるように調節されている。
;; 	;; なので、別のサイズやフルスクリーンにすると、dpi の値が変化する。
;; 	;; 結果、Emacs Xft では同じ pt に対するpixel値が大きくなってしまう。
;; 	;; 対処不明。。。取り敢えず直接 pixel サイズで指定して対処？
;; 	(when my-x-on-vmware
;; 	  (setq my-font-size 14))
;; 	))

;;       ;; デフォルトフォント設定
;;       (cond
;;        ;; pixel 単位で指定
;;        ((and my-font-size my-font)
;; 	(setq my-fontset
;; 	      (create-fontset-from-ascii-font (format "%s:size=%d" my-font my-font-size))))
;;        ;; 高さを pt 単位で指定
;;        (my-font
;; 	(set-face-attribute 'default nil :family my-font :height my-font-height)
;; 	;;(set-frame-font (format "%s-%d" my-font (/ my-font-height 10)))
;; 	)
;;        )

;;       (when my-fontset
;; 	(add-to-list 'default-frame-alist `(font . ,my-fontset) t))

;;       ;; 日本語文字に別のフォントを指定
;;       (when my-font-ja
;; 	(let ((fn (or my-fontset (frame-parameter nil 'font)))
;; 	      (rg "iso10646-1"))
;; 	  (set-fontset-font fn 'katakana-jisx0201 `(,my-font-ja . ,rg))
;; 	  (set-fontset-font fn 'japanese-jisx0208 `(,my-font-ja . ,rg))
;; 	  (set-fontset-font fn 'japanese-jisx0212 `(,my-font-ja . ,rg)))
;; 	)
;;       ))
;;    ))


;; ;; Ricty {{{2 (http://save.sys.t.u-tokyo.ac.jp/~yusa/fonts/ricty.html)
;; (set-face-attribute 'default nil
;;                    :family "Ricty"
;;                    :height 105)
;; (set-fontset-font
;;  nil 'japanese-jisx0208
;;  (font-spec :family "Ricty"))

;(set-frame-font "Ricty Discord-13.5") 
;(set-frame-font "Ricty-12") 
;;       (when my-fontset

;(set-frame-font "MS Gothic-10") 

   ;; 編集中ファイルのバックアップ間隔（打鍵）
;(set-frame-font "MS Gothic-10.5") 
;(setq line-spacing 2)

;; ibus-mode
(require 'ibus)
;; Turn on ibus-mode automatically after loading .emacs
(add-hook 'after-init-hook 'ibus-mode-on)
;; Use C-SPC for Set Mark command
(ibus-define-common-key ?\C-\s nil)
;; Use C-/ for Undo command
(ibus-define-common-key ?\C-/ nil)
;; Change cursor color depending on IBus status
(setq ibus-cursor-color '("limegreen" "white" "blue"))
(global-set-key "\C-\\" 'ibus-toggle)


;; global
(require 'gtags)
(setq c-mode-hook
      '(lambda ()
	 (gtags-mode 1)
	 ))
(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)        
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))

(add-hook 'c-mode-common-hook
          '(lambda()
             (gtags-mode 1)
             (gtags-make-complete-list)
             ))

;; コピーした内容を clip-board にもコピーします。
(if (equal system-type 'gnu/linux)
    (setq x-select-enable-clipboard t))

