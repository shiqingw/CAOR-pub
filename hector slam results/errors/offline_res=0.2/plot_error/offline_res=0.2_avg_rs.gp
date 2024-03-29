set term postscript eps enhanced color
set output "offline_res=0.2_avg_rs.eps"
set size ratio 0.5
set yrange [0:*]
set xlabel "Speed [km/h]"
set ylabel "Rotation Error [deg/m]"
plot "offline_res=0.2_avg_rs.txt" using ($1*3.6):($2*57.3) title 'Rotation Error' lc rgb "#0000FF" pt 4 w linespoints
