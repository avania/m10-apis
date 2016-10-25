### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.
library(jsonlite)
setwd('~/Desktop//m10-apis/exercise-2/')


# Write a function that allows you to specify an artist, and returns the top 10 tracks of that artist

TopTen <- function(input.artist) {
  base <- 'https://api.spotify.com/v1/search?'
  type <- '&type=artist'
  search <- paste0(base, 'q=', input.artist, type)
  artist.info <- fromJSON(artist.query)
  artist.id <- artist.info$artists$items$id[1]
  tracks.query <- paste0(base, 'artists/', artist.id, '/top-tracks?country=US')
  tracks <- fromJSON(tracks.query)
  return(tracks)
}


# What are the top 10 tracks by Nelly?




### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"

