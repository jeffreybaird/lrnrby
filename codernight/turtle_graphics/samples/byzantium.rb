# This is called BYZANTIUM because the fiqure it draws reminds me of one
# those jeweled crosses from medieval Byzantium.
def byzantium(r, n)
   return if n < 1
   fd r; rt 135
   4.times {
      pd; fd 2 * r * sin(45 * DEG); pu
      byzantium(r / 2, n - 1)
      rt 90
   }
   lt 135; bk r
end
byzantium(100, 4)
