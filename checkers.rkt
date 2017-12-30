#lang slideshow

(require math/number-theory)

(define (make-square n m)
    (let ([red (filled-rectangle 8 8 #:color "red")]
        [black (filled-rectangle 8 8 #:color "black")])
      (if (divides? 2 n)
          (if (divides? 2 m) red black)
          (if (divides? 2 m) black red))))

(define (checker n)
  (apply vc-append
         (map (lambda (x) (apply hc-append x))
              (build-list n (lambda (x) (build-list n (lambda (y) (make-square x y))))))))