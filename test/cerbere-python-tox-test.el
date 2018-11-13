;;; cerbere-python-tox-test.el --- Unit tests for Cerbere Tox backend

;; Copyright (C) 2014  Nicolas Lamirault <nicolas.lamirault@gmail.com>

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'cerbere)

(ert-deftest test-cerbere-python-tox ()
  (cerbere-with-test-content "python-tox/tests/test_weighted_indegree.py"
    (python-mode)
    (should (featurep 'cerbere-python-tox))))


;; (ert-deftest test-cerbere-python-tox-get-current-class ()
;;   (should (string= "FooTestCase"
;;  		   (cerbere--python-tox-current-class))))

;;; cerbere-python-tox-test.el ends here
