movie = "My    beautiful\n laundrette!"
movie = movie.split()
movie = " ".join(movie[:-1]) + " " + movie[-1][:-1]
movie = movie.replace('laundrette', 'garden')
print(movie.title())