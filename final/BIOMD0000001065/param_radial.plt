# gnuplot script to plot a radial coordinate plot for parameter sets
# this will be Figure 2.
# To match the Figure in von Dassow et al, the data was logged (base 10)
# and the columns re-rodered from what COPASI output, to match the same
# order as in the von Dassow figure.

unset title
# our data files have colum headers
set datafile columnheaders

set linetype 1 lc "#CB0248"
set linetype 2 lc "#000000" lw 1.2
#set border 1+2 lt 1

set spiderplot
set style spiderplot lw 1 lc rgb "red" ps 0

# set the parameter ranges
set for [i=1:6] paxis i range [-3.6:0] # r
set for [i=7:19] paxis i range [-3.6:0] # kappa
set for [i=20:21] paxis i range [-0.6:3] # PTC_0 and HH_0
set paxis 22 range [-3.6:0] # C_CI

# label axes
set paxis 1 label "r_{EndoWG}" offset -0.3
set paxis 2 label "r_{ExoWG}" offset -0.3
set paxis 3 label "r_{MxferWG}" offset -0.3
set paxis 4 label "r_{LMxferWG}" offset 0
set paxis 5 label "r_{LMxferPTC}" offset 0.1
set paxis 6 label "r_{LMxferHH}" offset 0
set paxis 7 label "{/Symbol k}_{WGen}" offset -0.3
set paxis 8 label "{/Symbol k}_{CNen}" offset -0.3
set paxis 9 label "{/Symbol k}_{WGwg}" offset -0.3
set paxis 10 label "{/Symbol k}_{CIwg}" offset -0.3
set paxis 11 label "{/Symbol k}_{CNwg}" offset -0.5
set paxis 12 label "{/Symbol k}_{CIptc}" offset -0.5
set paxis 13 label "{/Symbol k}_{CNptc}" offset -0.5
set paxis 14 label "{/Symbol k}_{Bci}" offset -0.5
set paxis 15 label "{/Symbol k}_{ENci}" offset -0.5
set paxis 16 label "{/Symbol k}_{PTCCI}" offset -0.3
set paxis 17 label "{/Symbol k}_{ENhh}" offset -0.3
set paxis 18 label "{/Symbol k}_{CNhh}" offset -0.3
set paxis 19 label "{/Symbol k}_{PTCHH}" offset -0.1
set paxis 20 label "PTC_0" offset -0.3
set paxis 21 label "HH_0" offset -0.3
set paxis 22 label "C_{CI}" offset -0.3

unset tics

set object 1 circle front at 0,0 size 0.145 fillcolor rgb "white" fs solid
set object 2 circle front at 0,0 size 0.172 fs transparent fc rgb "black"
set object 3 circle front at 0,0 size 1 fs transparent fc rgb "black"

set palette defined (0 "#FF0000" , 0.2 "#0000FF")
unset colorbox

set terminal pngcairo transparent font "Times New Roman,18" size 1000, 1000
set output "Fig2.png"

# we use multiplot to overlay the two plots,
# they must have same dimensions and position
set multiplot
set size ratio 1 0.95,0.95
set origin 0.02, 0.02

# set style data spiderplot
plot for [i=2:23] "1-log-hits-spider.tsv" using i:1 lc palette
#, newspiderplot, for [j=2:23] "1-log-hits-stats-spider.tsv" using j:1 lt 2

set size ratio 1 0.95,0.95
set origin 0.02, 0.02
unset border
plot for [j=2:23] "1-log-hits-stats-spider.tsv" using j:1 lt 2
unset multiplot

#plot for [j=1:24] "1-log-hits-stats$1,959.52$1,959.52-spider.tsv" using j lt 3 lw 3
#plot 'file.dat' u 1:2:(0.1):(color($2)) w boxes lc rgb variable

set output
set term qt
