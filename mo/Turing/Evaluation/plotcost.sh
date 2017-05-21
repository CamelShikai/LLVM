set xlabel "obfuscation level"
set ylabel "time consumption(second)"
set term post eps color solid enh
set output "cost.eps"
#set xtics rotate
#set xtics rotate by -60
plot "costinput" using 1:2 title "regexp" w lp lt 3 lw 1 pt 1 ps 2, "costinput" using 1:3 title "bzip2" w lp lt 2 lw 1 pt 1 ps 1
