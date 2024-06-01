# gnuplot script to plot timecourse1 produced by four simulators
# this will be Figure 3 and Figure 4.

reset session
unset title
# our data files have colum headers
set datafile columnheaders

# line styles
set linetype 1 lw 2 lc rgb '#000000' # black
set linetype 2 lw 2 lc rgb '#E69F00' # orange
set linetype 3 lw 2 lc rgb '#56B4E9' # sky blue
set linetype 4 lw 2 lc rgb '#009E73' # bluish green
set linetype 5 lw 2 lc rgb '#F0E442' # yellow
set linetype 6 lw 2 lc rgb '#0072B2' # blue
set linetype 7 lw 2 lc rgb '#D55E00' # vermillion
set linetype 8 lw 2 lc rgb '#CC79A7' # reddish purple

set size ratio 1
#set terminal pngcairo transparent font "Arial,10" size 1000, 1000
set terminal svg size 1000, 1000 dynamic font "Arial,10" background rgb "#FFFFFF"
set output "Fig3.svg"
set xrange[0:1100]
set yrange[0:1.1]
set grid
set border
set tics nomirror
unset key

set style data lines

set multiplot layout 5,4

# PLOT COPASI
# plot all mRNA of cell 1
plot "timecourse1.copasi.tsv" u 1:126 t "ci", "" u 1:130 t "en", "" u 1:134 t "hh", "" u 1:138 t "ptc", "" u 1:142 t "wg"
# plot all mRNA of cell 2
plot "timecourse1.copasi.tsv" u 1:127 t "ci", "" u 1:131 t "en", "" u 1:135 t "hh", "" u 1:139 t "ptc", "" u 1:143 t "wg"
# plot all mRNA of cell 3
plot "timecourse1.copasi.tsv" u 1:128 t "ci", "" u 1:132 t "en", "" u 1:136 t "hh", "" u 1:140 t "ptc", "" u 1:144 t "wg"
# plot all mRNA of cell 4
plot "timecourse1.copasi.tsv" u 1:129 t "ci", "" u 1:133 t "en", "" u 1:137 t "hh", "" u 1:141 t "ptc", "" u 1:145 t "wg"

# PLOT VCELL
# plot all mRNA of cell 1
plot "timecourse1.vcell.tsv" u 1:2 t "ci", "" u 1:14 t "en", "" u 1:74 t "hh", "" u 1:134 t "ptc", "" u 1:142 t "wg"
# plot all mRNA of cell 2
plot "timecourse1.vcell.tsv" u 1:4 t "ci", "" u 1:16 t "en", "" u 1:75 t "hh", "" u 1:135 t "ptc", "" u 1:143 t "wg"
# plot all mRNA of cell 3
plot "timecourse1.vcell.tsv" u 1:6 t "ci", "" u 1:18 t "en", "" u 1:76 t "hh", "" u 1:136 t "ptc", "" u 1:144 t "wg"
# plot all mRNA of cell 4
plot "timecourse1.vcell.tsv" u 1:8 t "ci", "" u 1:20 t "en", "" u 1:77 t "hh", "" u 1:137 t "ptc", "" u 1:145 t "wg"

# PLOT TELLURIUM
# plot all mRNA of cell 1
plot "timecourse1.tellurium.tsv" u 1:4 t "ci", "" u 1:2 t "en", "" u 1:7 t "hh", "" u 1:14 t "ptc", "" u 1:21 t "wg"
# plot all mRNA of cell 2
plot "timecourse1.tellurium.tsv" u 1:37 t "ci", "" u 1:35 t "en", "" u 1:40 t "hh", "" u 1:47 t "ptc", "" u 1:54 t "wg"
# plot all mRNA of cell 3
plot "timecourse1.tellurium.tsv" u 1:70 t "ci", "" u 1:68 t "en", "" u 1:73 t "hh", "" u 1:80 t "ptc", "" u 1:87 t "wg"
# plot all mRNA of cell 4
plot "timecourse1.tellurium.tsv" u 1:103 t "ci", "" u 1:101 t "en", "" u 1:106 t "hh", "" u 1:113 t "ptc", "" u 1:120 t "wg"

# PLOT AMICI
# plot all mRNA of cell 1
plot "timecourse1.amici.tsv" u 1:126 t "ci", "" u 1:130 t "en", "" u 1:134 t "hh", "" u 1:138 t "ptc", "" u 1:142 t "wg"
# plot all mRNA of cell 2
plot "timecourse1.amici.tsv" u 1:127 t "ci", "" u 1:131 t "en", "" u 1:135 t "hh", "" u 1:139 t "ptc", "" u 1:143 t "wg"
# plot all mRNA of cell 3
plot "timecourse1.amici.tsv" u 1:128 t "ci", "" u 1:132 t "en", "" u 1:136 t "hh", "" u 1:140 t "ptc", "" u 1:144 t "wg"
# plot all mRNA of cell 4
plot "timecourse1.amici.tsv" u 1:129 t "ci", "" u 1:133 t "en", "" u 1:137 t "hh", "" u 1:141 t "ptc", "" u 1:145 t "wg"

# We plot this just to get the key
unset grid
set key
unset border
unset tics

plot "timecourse1.amici.tsv" u 1:133 t "ci", "" u 1:133 t "en", "" u 1:133 t "hh", "" u 1:133 t "ptc", "" u 1:133 t "wg"

unset multiplot

set output

## FIGURE 4

reset session
unset title
# our data files have colum headers
set datafile columnheaders

# line styles
set linetype 1 lw 2 lc rgb '#000000' # black
set linetype 2 lw 2 lc rgb '#E69F00' # orange
set linetype 3 lw 2 lc rgb '#56B4E9' # sky blue
set linetype 4 lw 2 lc rgb '#009E73' # bluish green
set linetype 5 lw 2 lc rgb '#F0E442' # yellow
set linetype 6 lw 2 lc rgb '#0072B2' # blue
set linetype 7 lw 2 lc rgb '#D55E00' # vermillion
set linetype 8 lw 2 lc rgb '#CC79A7' # reddish purple

set size ratio 1
#set terminal pngcairo transparent font "Arial,10" size 1000, 1000
set terminal svg size 1000, 1000 dynamic font "Arial,10" background rgb "#FFFFFF"
set output "Fig4.svg"
set xrange[0:1100]
set yrange[0:1.1]
set grid
set border
set tics nomirror
unset key

set style data lines

set multiplot layout 5,4

# PLOT COPASI
# plot some proteins of cell 1
plot "timecourse1.copasi.tsv" u 1:2 t "CI", "" u 1:6 t "CN", "" u 1:10 t "EN", "" u 1:66 t "IWG", "" u 1:38 t "EWG_T", "" u 1:94 t "PH_T", "" u 1:122 t "PTC_T"
# plot some proteins of cell 2
plot "timecourse1.copasi.tsv" u 1:3 t "CI", "" u 1:7 t "CN", "" u 1:11 t "EN", "" u 1:67 t "IWG", "" u 1:39 t "EWG_T", "" u 1:95 t "PH_T", "" u 1:123 t "PTC_T"
# plot some proteins of cell 3
plot "timecourse1.copasi.tsv" u 1:4 t "CI", "" u 1:8 t "CN", "" u 1:12 t "EN", "" u 1:68 t "IWG", "" u 1:40 t "EWG_T", "" u 1:96 t "PH_T", "" u 1:124 t "PTC_T"
# plot some proteins of cell 4
plot "timecourse1.copasi.tsv" u 1:5 t "CI", "" u 1:9 t "CN", "" u 1:13 t "EN", "" u 1:69 t "IWG", "" u 1:41 t "EWG_T", "" u 1:97 t "PH_T", "" u 1:125 t "PTC_T"

# PLOT VCELL
# plot some proteins of cell 1
plot "timecourse1.vcell.tsv" u 1:3 t "CI", "" u 1:10 t "CN", "" u 1:15 t "EN", "" u 1:78 t "IWG", "" u 1:46 t "EWG_T", "" u 1:106 t "PH_T", "" u 1:138 t "PTC_T"
# plot some proteins of cell 2
plot "timecourse1.vcell.tsv" u 1:5 t "CI", "" u 1:11 t "CN", "" u 1:17 t "EN", "" u 1:79 t "IWG", "" u 1:47 t "EWG_T", "" u 1:107 t "PH_T", "" u 1:139 t "PTC_T"
# plot some proteins of cell 3
plot "timecourse1.vcell.tsv" u 1:7 t "CI", "" u 1:12 t "CN", "" u 1:19 t "EN", "" u 1:80 t "IWG", "" u 1:48 t "EWG_T", "" u 1:108 t "PH_T", "" u 1:140 t "PTC_T"
# plot some proteins of cell 4
plot "timecourse1.vcell.tsv" u 1:9 t "CI", "" u 1:13 t "CN", "" u 1:21 t "EN", "" u 1:81 t "IWG", "" u 1:49 t "EWG_T", "" u 1:109 t "PH_T", "" u 1:141 t "PTC_T"

# PLOT TELLURIUM
# plot some proteins of cell 1
plot "timecourse1.tellurium.tsv" u 1:5 t "CI", "" u 1:6 t "CN", "" u 1:3 t "EN", "" u 1:22 t "IWG", "" u 1:134 t "EWG_T", "" u 1:136 t "PH_T", "" u 1:135 t "PTC_T"
# plot some proteins of cell 2
plot "timecourse1.tellurium.tsv" u 1:38 t "CI", "" u 1:39 t "CN", "" u 1:36 t "EN", "" u 1:55 t "IWG", "" u 1:137 t "EWG_T", "" u 1:139 t "PH_T", "" u 1:138 t "PTC_T"
# plot some proteins of cell 3
plot "timecourse1.tellurium.tsv" u 1:71 t "CI", "" u 1:72 t "CN", "" u 1:69 t "EN", "" u 1:88 t "IWG", "" u 1:140 t "EWG_T", "" u 1:142 t "PH_T", "" u 1:141 t "PTC_T"
# plot some proteins of cell 4
plot "timecourse1.tellurium.tsv" u 1:104 t "CI", "" u 1:105 t "CN", "" u 1:102 t "EN", "" u 1:121 t "IWG", "" u 1:143 t "EWG_T", "" u 1:145 t "PH_T", "" u 1:144 t "PTC_T"

# PLOT AMICI
# plot some proteins of cell 1
plot "timecourse1.amici.tsv" u 1:2 t "CI", "" u 1:6 t "CN", "" u 1:10 t "EN", "" u 1:66 t "IWG", "" u 1:38 t "EWG_T", "" u 1:94 t "PH_T", "" u 1:122 t "PTC_T"
# plot some proteins of cell 2
plot "timecourse1.amici.tsv" u 1:3 t "CI", "" u 1:7 t "CN", "" u 1:11 t "EN", "" u 1:67 t "IWG", "" u 1:39 t "EWG_T", "" u 1:95 t "PH_T", "" u 1:123 t "PTC_T"
# plot some proteins of cell 3
plot "timecourse1.amici.tsv" u 1:4 t "CI", "" u 1:8 t "CN", "" u 1:12 t "EN", "" u 1:68 t "IWG", "" u 1:40 t "EWG_T", "" u 1:96 t "PH_T", "" u 1:124 t "PTC_T"
# plot some proteins of cell 4
plot "timecourse1.amici.tsv" u 1:5 t "CI", "" u 1:9 t "CN", "" u 1:13 t "EN", "" u 1:69 t "IWG", "" u 1:41 t "EWG_T", "" u 1:97 t "PH_T", "" u 1:125 t "PTC_T"

# We plot this just to get the key
unset grid
set key
unset border
unset tics

plot "timecourse1.amici.tsv" u 1:66 t "CI", "" u 1:66 t "CN", "" u 1:66 t "EN", "" u 1:66 t "IWG", "" u 1:66 t "EWG_T", "" u 1:66 t "PH_T", "" u 1:66 t "PTC_T"


unset multiplot

set output

set term qt
