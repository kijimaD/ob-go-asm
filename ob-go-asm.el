;;; ob-go-asm.el --- The org-babel extension for dumps Go assembly.

;; Copyright (C) 2023 kijima Daigo

;; Author: kijima Daigo <norimaking777@gmail.com>
;; Version: 0.0.1
;; Keywords: go
;; Package-Requires: ((emacs "25.1"))
;; URL: https://github.com/kijimaD/ob-go-asm

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; The org-babel extension dumps Go assembly.

;;; Code:
(require 'ob)

(add-to-list 'org-babel-tangle-lang-exts '("go-asm"))

;;;###autoload
(defun org-babel-execute:go-asm (body params)
  (let* ((tmp-src-file (org-babel-temp-file "" ".go")))
    (with-temp-file tmp-src-file (insert body))
    (let ((result
           (shell-command-to-string (format "go build -gcflags=\"-S -N -l\" -o /dev/null %s" tmp-src-file))))
      (with-temp-buffer
        (insert result)
        (buffer-substring (point-min) (point-max))))))

(provide 'ob-go-asm)
;;; ob-go-asm.el ends here
