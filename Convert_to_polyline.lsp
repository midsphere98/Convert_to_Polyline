(defun c:ConvertSplinesToPolylines (/ ss n ent)
  (setq ss (ssget "X" '((0 . "SPLINE"))))
  (if ss
    (progn
      (setq n (1- (sslength ss)))
      (while (>= n 0)
        (setq ent (ssname ss n))
        (command "_.SPLINEDIT" ent "polyline" ent "20")
        (setq n (1- n))
      )
    )
    (princ "No splines found.")
  )
  (princ)
)

