# Vogado's Method 
still not perfect, help me to figure it out, thanks.

DOI: 10.1109/ISM.2016.0103

# todo 
- tyna to find out mistake on kmeans (i thought it's clear not here)
- ubah metode nya dengan kmeans baru


# progress (sorted asc)
- (20/04/17 9:12am) i think until the step (e) subtraction it's completely correct. the probelm might in clustering (kmeans) coz there is a hole that should not appears
- (20/04/17 2:01pm) already going through all the code and findout that there's a mistake vogado's made, which wrongly use value of dilation and erosion. both are swapped.