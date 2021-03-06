;;; packages.el --- liquid-types Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar liquid-types-packages
  '(
    flycheck
    haskell-mode
    button-lock
    pos-tip
    popup 
    thingatpt
    ;; package liquid-typess go here
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun liquid-types/init-button-lock ())


(defvar liquid-types-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function liquid-types/init-<package-liquid-types>
;;

;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
