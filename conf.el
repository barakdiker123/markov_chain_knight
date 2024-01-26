;;; conf.elbarak -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Barak-Nadav Diker
;;
;; Author: Barak-Nadav Diker <barakdiker@gmail.com>
;; Maintainer: Barak-Nadav Diker <barakdiker@gmail.com>
;; Created: January 26, 2024
;; Modified: January 26, 2024
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/barakdiker/conf
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:

(ghub-request "GET" "/user" nil
              :forge 'github
              :host "api.github.com"
              :username "barakdiker123"
              :auth 'forge)

(provide 'conf)
;;; conf.el ends here

(setq auth-sources '("~/.authinfo"))
(setq auth-sources '("~/.authinfo"))
