set xlabel "instruction"
set ylabel "percentage"
set term post eps color solid enh
set output "st_bzip2.eps"
set xtics rotate
set xtics rotate by -60
plot "bzip2-0p_dist" using ($3*100):xticlabels(1) title "bzip2" w lp lt 1 lw 2 pt 2 ps 2, "bzip2-50p_dist" using ($3*100):xticlabels(1) title "obfuscated bzip2" w lp lt 2 lw 2 pt 2 ps 2,"regexp-0p" using ($3*100):xticlabels(1) title "regexp" w lp lt 3 lw 2 pt 2 ps 1,"regexp-50p" using ($3*100):xticlabels(1) title "obfuscated regexp" w lp lt 4 lw 2 pt 1 ps 2
