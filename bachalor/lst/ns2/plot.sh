#!/usr/bin/gnuplot -persist
set xrange [0:20]

set style line 1 lt 1 lw 1 lc rgb "black"   
set style line 2 lt 2 lw 1 lc rgb "black" dashtype (1,4) 

# set terminal pdf
# set output "queues.pdf"
# set xlabel "Время [с]"
# set ylabel "Размер очереди [пакеты]"
# set title "RED Queue"
# plot 

set terminal pdf
set output "queues.pdf"
set xlabel "Время [с]"
set ylabel "Размер очереди [пакеты]"
set title "RED Queue"
plot "temp.a" with lines linestyle 2 title "Средняя длина очереди","temp.q" with lines linestyle 1 title "Длина очереди" 

set terminal pdf
set output "TCP.pdf"
set xlabel "Time [s]"
set ylabel "Размер окна [пакеты]"
set title "TCPVsWindow"
plot "wvst" with lines linestyle 1 lt 1 lw 2 title "WvsT"
