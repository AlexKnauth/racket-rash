#lang racket/base

(require rash)
(provide
 (except-out (all-from-out racket/base) #%module-begin)
 (rename-out [module-begin #%module-begin])
 (all-from-out rash)
 )

(require (for-syntax racket/base
                     syntax/parse))

(define-syntax (module-begin stx)
  (syntax-parse stx
    [(m-b arg ...)
     #'(#%module-begin (let ([ret {(λ () (rash-line-parse arg ...))}])
                         (cond [(exact-nonnegative-integer? ret) (exit ret)]
                               [(void? ret) (exit 0)]
                               [else (begin
                                       (eprintf "improper exit value: ~s~n" ret)
                                       (exit 126))])))]))
