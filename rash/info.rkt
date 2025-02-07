#lang info

(define racket-launcher-names '("rash-repl"))
(define racket-launcher-libraries '("repl.rkt"))

(define deps '(("base" #:version "6.12")
               "basedir"
               "shell-pipeline"
               "linea"
               "udelim"
               "scribble-lib"
               "scribble-doc"
               "racket-doc"
               "rackunit-lib"
               "readline-lib"
               ;; for the make demo
               "make"
               ;; for csv-file->dicts in demo/setup
               "csv-reading"
               ;; temporarily
               "text-table"
               ))

(define test-omit-paths '("demo/use-make-dumb-example.rkt"))

(define version "0.2")

