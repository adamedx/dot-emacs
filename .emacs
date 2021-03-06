;;;;----------------------------------------------------------------------------
;;
;; Adam's new Emacs configuration file
;;
;; Original author: Adam Edwards (adamedx)
;; Date: 2015-03-05
;;
;; Abstract: Clean, modernized version meant to be shared with
;; multiple workstations via cloud. Its distant inspiration is
;; my lost original college configuration -- R.I.P.
;;
;; Copyright: Copyright (c) 2012 Opscode, Inc.
;; License: Apache License, Version 2.0
;;
;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at
;;
;;     http://www.apache.org/licenses/LICENSE-2.0
;;
;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.
;;
;;;;----------------------------------------------------------------------------


;; Generated configuration from customize
;; Try to use Emacs (customize) as much as we can to generate customizations
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
;;  '(custom-enabled-themes (quote (solarized)))
 '(custom-enabled-themes (quote (deeper-blue)))
 '(frame-background-mode (quote dark))
 ;; Enable use of solarized (installed separately
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(show-trailing-whitespace t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))

;; General

(setq-default buffer-file-coding-system 'utf-8-unix)
(ido-mode 'enabled)
(menu-bar-mode 0)

;; Use tool-bar-mode as a proxy for xemacs since that doesn't seem to work
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode 0)
  (global-linum-mode t) ;; Show line numbers in the left margin in xemacs
  )

(line-number-mode t)
(column-number-mode t)

(if (fboundp 'tool-bar-mode)
    (global-linum-mode t)) ;;) ; Show line numbers in the left margin in xemacs

;; Modes

(load-library "powershell")
(load-library "csharp-mode")

;; Markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; Language

;; C
(setq c-default-style "linux"
      tab-width 4
      c-basic-offset 4) ; Use normal indenting, not default GNU indenting

;; C/C++
;; Setup C mode
(autoload 'c++-mode  "cc-mode" "C++ Editing Mode" t)
(autoload 'c-mode    "cc-mode" "C Editing Mode" t)
(autoload 'c-mode-common-hook "cc-mode" "C Mode Hooks" t)
(autoload 'c-add-style "cc-mode" "Add coding style" t)
;; Associate extensions with modes
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))

;; Colors / faces

;; Font height is 1/10th, so 140 is 14pt
(set-face-attribute 'default nil :height 140)

;; Global key bindings

(define-key global-map "\C-z" 'undo)

;; Miscellaneous

;; Setup time mode
(autoload 'display-time "time" "Display Time" t)

;; Add final message so using C-h l I can see if .emacs failed
(message ".emacs loaded successfully.")
