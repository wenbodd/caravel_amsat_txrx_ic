set terminal X11 noenhanced
set title "**.subckt bandgap_core_stability_ctat"
set xlabel "Hz"
set ylabel "V"
set grid
set logscale x
set xrange [1e+00:1e+10]
set mxtics 10
set grid mxtics
unset logscale y 
set yrange [-1.853252e+02:1.968552e+02]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'bandgap_core_stability2.data' using 1:2 with lines lw 1 title "db(ac)",\
'bandgap_core_stability2.data' using 3:4 with lines lw 1 title "ph(ac)"
