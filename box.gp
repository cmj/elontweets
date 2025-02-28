set title 'Elon Musk - Tweets and Likes'
set xlabel ' ' tc rgb 'white'
set ylabel 'Activity per day' tc rgb 'white'
set obj 4 rect 
set label 4 at 425.0,905 "\\@elonmusk tweets and likes\nLast 30 days - Tweets: 4689 (156 per day) Likes: 11966 (399 per day)" center offset 0,.5 tc rgb 'white'

set grid lc rgb 'white' linewidth 1.0
set key tc rgb 'white' below center horizontal noreverse enhanced autotitle box dashtype solid lc rgb 'white'
set tics out nomirror
set border 3 front linetype rgb 'white' linewidth 1.0 dashtype solid
set samples 2000, 2000

set xrange [1:850]

set xtics 1000 rotate by 50 right offset 0,-1 add ("2022-11-01" 1, "2022-12-01" 31, "2023-01-01" 62, "2023-02-01" 93, "2023-03-01" 121, "2023-04-01" 152, "2023-05-01" 182, "2023-06-01" 213, "2023-07-01" 243, "2023-08-01" 274, "2023-09-01" 305, "2023-10-01" 335, "2023-11-01" 366, "2023-12-01" 396, "2024-01-01" 427, "2024-02-01" 458, "2024-03-01" 487, "2024-04-01" 518, "2024-05-01" 548, "2024-06-01" 579, "2024-07-01" 609, "2024-08-01" 640, "2024-09-01" 671, "2024-10-01" 701, "2024-11-01" 732, "2024-12-01" 762, "2025-01-01" 793, "2025-02-01" 824, "2025-02-27" 850)
set ytics 20
set y2tics 4
set yrange [0:895]

# simple lines
set style line 1 linecolor rgb '#b213bd' linewidth 2 linetype 2 pointtype 1
set style data linespoints

set style data histograms
set style histogram rowstacked
set boxwidth 1 relative
set style fill solid 1.0 border -1

# for averaging
set style line 1 linecolor rgb '#00ff00' linewidth 2 linetype 4 pointtype 2
set style line 2 linecolor rgb '#ffffff' linewidth 1 linetype 3 pointtype 8 ps 1.0
set style line 3 linecolor rgb 'white' linewidth 1 linetype 3 pointtype 1
samples(x) = $0 > 4 ? 5 : ($0+1)
avg5(x) = (shift5(x), (back1 + back2 + back3 + back4 + back5) / samples($0))
shift5(x) = (back5 = back4, back4 = back3, back3 = back2, back2 = back1, back1 = x)
init(x) = (back1 = back2 = back3 = back4 = back5 = sum = 0)

set terminal pngcairo enhanced font 'sans,12' fontscale 1.0 size 2200, 800 background rgb 'black'
set output "elonmusk.png"

set offset 1,1,1,1

plot sum = init(0), "master.dat" using 2 t "tweets", '' using 3 t "likes", \
  '' using 1:($2 > 100 ? $2 : 1/0):2:(sprintf('%d', $2)) with labels point lc rgb '#5f5fd7' pt 7 tc rgb 'white' offset char 1,1 notitle lc rgb 'white'
#'' using 1:(avg5($3)) with histogram linestyle 2 title '5 points avg'
#'' using 1:(sum = sum + $2, sum/($0+1)) linestyle 3 title 'total avg'
