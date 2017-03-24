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

(defconst liquid-types-packages
  '(
    flycheck
    haskell-mode
    button-lock
    pos-tip
    popup
    thingatpt
    ;; package liquid-typess go here
    (flycheck-liquid :location local)
    (liquid-tip      :location local)
    )
  "The list of Lisp packages required by the liquid-types layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun liquid-types/init-button-lock ())


(defvar liquid-types-excluded-packages '()
  "List of packages to exclude.")

;; For each package, define a function liquid-types/init-<package-liquid-types>
;;

;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package


(defun liquid-types/post-init-flycheck ()
  (spacemacs/add-flycheck-hook 'haskell-mode))


(defun liquid-types/init-flycheck-liquid ()
  "Initialize my extension"
  (progn
    (require 'flycheck-liquid)
    (add-hook 'haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-liquid)))
    (add-hook 'literate-haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-liquid)))
    )
  )

(defun liquid-types/init-liquid-tip ()
  "Initialize my extension"
  (progn
    (require 'flycheck-liquid)
    (require 'liquid-tip)
    (add-hook 'haskell-mode-hook
              '(lambda () (liquid-tip-mode)))
    ;; (add-hook 'haskell-mode-hook
    ;;           (lambda () (liquid-tip-init 'ascii)))
    ;; (add-hook 'literate-haskell-mode-hook
    ;;           (lambda () (liquid-tip-init 'ascii)))
    )
  )
