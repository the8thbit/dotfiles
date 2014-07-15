(let ((default-directory "$HOME/.emacs.d/"))(
	normal-top-level-add-subdirs-to-load-path
))

;;install, configure and load el-get if needed
(unless (require 'el-get nil 'noerror)(
	with-current-buffer(
		url-retrieve-synchronously "https://raw.github.com/dimitri/el-get/master/el-get-install.el")(
			let(el-get-master-branch)
			(goto-char(point-max))
			(eval-print-last-sexp)
		)
	)
	(el-get-elpa-build-local-recipes)
)
(add-to-list 'el-get-recipe-path "~/.emacs.d/custom/recipes/")

;; Desired packages
(setq el-get-packages '(
	unbound
	color-theme
	powerline
))
(el-get 'sync el-get-packages)

(use-global-map(make-sparse-keymap))
(global-set-key (kbd "SPC") 'self-insert-command)
(global-set-key (kbd "!")   'self-insert-command)
(global-set-key (kbd "\"")  'self-insert-command)
(global-set-key (kbd "$")   'self-insert-command)
(global-set-key (kbd "%")   'self-insert-command)
(global-set-key (kbd "&")   'self-insert-command)
(global-set-key (kbd "'")   'self-insert-command)
(global-set-key (kbd "(")   'self-insert-command)
(global-set-key (kbd ")")   'self-insert-command)
(global-set-key (kbd "*")   'self-insert-command)
(global-set-key (kbd "+")   'self-insert-command)
(global-set-key (kbd "`")   'self-insert-command)
(global-set-key (kbd "-")   'self-insert-command)
(global-set-key (kbd ".")   'self-insert-command)
(global-set-key (kbd "/")   'self-insert-command)
(global-set-key (kbd "0")   'self-insert-command)
(global-set-key (kbd "1")   'self-insert-command)
(global-set-key (kbd "2")   'self-insert-command)
(global-set-key (kbd "3")   'self-insert-command)
(global-set-key (kbd "4")   'self-insert-command)
(global-set-key (kbd "5")   'self-insert-command)
(global-set-key (kbd "6")   'self-insert-command)
(global-set-key (kbd "7")   'self-insert-command)
(global-set-key (kbd "8")   'self-insert-command)

