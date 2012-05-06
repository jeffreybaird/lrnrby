# Koch snowflacke
def koch(s, n)
   if n < 1
      fd s
      return
   end
   koch(s / 3, n - 1)
   lt 60
   koch(s / 3, n - 1)
   rt 120
   koch(s / 3, n - 1)
   lt 60
   koch(s / 3, n - 1)
end
def snowflake(s, n)
   3.times { koch(s, n); rt 120 }
end
bk 165; lt 90; fd 95; rt 90
pd
snowflake(350, 4)
