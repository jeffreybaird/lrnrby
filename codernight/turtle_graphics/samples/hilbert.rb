# Hilbert curve
def hilbert(s, n, k)
   return if n < 1
   lt k * 90
   hilbert(s, n - 1, -k)
   fd s
   rt k * 90
   hilbert(s, n - 1, k)
   fd s
   hilbert(s, n - 1, k)
   rt k * 90
   fd s
   hilbert(s, n - 1, -k)
   lt k * 90
end
bk 185; rt 90; fd 185; lt 90
pd
hilbert(12, 5, 1)
