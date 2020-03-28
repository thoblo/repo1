# Voor dit voorbeeld gebruik ik even een standaard dataset (gegevens over auto's).
# Kijk even hoe ze eruit zien, dan zie je ook hoe het vergelijkbaar is met je Spotify data!
attach(mtcars)

playlist1923 <- mtcars[1:4,]
playlist1924 <- mtcars[5:8,]
playlist1925 <- mtcars[9:12,]

# Je begint met 55 playlists (die allemaal los staan). Die hebben waarschijnlijk een naam zoals "playlist1923" ofzo toch?
# In mijn geval doe ik er maar 3, maar het idee is hetzelfde.
library(spotifyr)
library(tidyverse)
library(plyr)
library(dplyr)
library(ggplot2)
library(plotrix)

source("spotify.R")


top_100_over_2019 <- get_playlist_audio_features('nederlandse_top_40', '4GE2vQbmdOXyNO0emar1Na')
top_100_over_2018 <- get_playlist_audio_features('nederlandse_top_40', '7gwthBoLwD3pmNAddLghAf')
top_100_over_2017 <- get_playlist_audio_features('nederlandse_top_40', '0UmGzufa2clHxFb1gyP5Vb')
top_100_over_2016 <- get_playlist_audio_features('nederlandse_top_40', '2fi7vnsg3MlzRVMLzKmJLM')
top_100_over_2015 <- get_playlist_audio_features('nederlandse_top_40', '1Vxi2dBccOTLRW7BPPg6EO')
top_100_over_2014 <- get_playlist_audio_features('nederlandse_top_40', '7AWknWlwF23A9VJnHeYuAr')
top_100_over_2013 <- get_playlist_audio_features('nederlandse_top_40', '2kACCdHoHl5siTqcylq7id')
top_100_over_2012 <- get_playlist_audio_features('nederlandse_top_40', '3nZQYVvcgximz81IciWoiC')
top_100_over_2011 <- get_playlist_audio_features('nederlandse_top_40', '6wenKKMUAP0UxU48Hu3Hxz')
top_100_over_2010 <- get_playlist_audio_features('nederlandse_top_40', '6yGPnwykmiDm5W0uu9Weac')
top_100_over_2009 <- get_playlist_audio_features('nederlandse_top_40', '7pVb5LEupRR2wXCTA6AJgr')
top_100_over_2008 <- get_playlist_audio_features('nederlandse_top_40', '4LSOc5Cdktflv2pRsZ10Xq')
top_100_over_2007 <- get_playlist_audio_features('nederlandse_top_40', '1bjd2e3YgylAwcBEvhiS2K')
top_100_over_2006 <- get_playlist_audio_features('nederlandse_top_40', '6eMvVqqPhbc4CF7RpRb0EW')
top_100_over_2005 <- get_playlist_audio_features('nederlandse_top_40', '5WvLkCxch4z6vC2BRlxvz0')
top_100_over_2004 <- get_playlist_audio_features('nederlandse_top_40', '7pIAabiKPEHL3DVsKpq56l')
top_100_over_2003 <- get_playlist_audio_features('nederlandse_top_40', '4H8roMKWduOez3wgVBdnqN')
top_100_over_2002 <- get_playlist_audio_features('nederlandse_top_40', '5viGiVGbxkLq9fuLeHsbVJ')
top_100_over_2001 <- get_playlist_audio_features('nederlandse_top_40', '0ho7iqEtTEs6g6ekx4HvhQ')
top_100_over_2000 <- get_playlist_audio_features('nederlandse_top_40', '4Og2KoC2Hlw0tj5ddCLNSM')
top_100_over_1999 <- get_playlist_audio_features('nederlandse_top_40', '7v46rzvdSKArtkzzU3pn7t')
top_100_over_1998 <- get_playlist_audio_features('nederlandse_top_40', '0uvd8XToPUE7cQInbaI3fu')
top_100_over_1997 <- get_playlist_audio_features('nederlandse_top_40', '77EcIa561Z1VZURot2EZrm')
top_100_over_1996 <- get_playlist_audio_features('nederlandse_top_40', '73x5jHgK1y37mSP7djQinv')
top_100_over_1995 <- get_playlist_audio_features('nederlandse_top_40', '3ORXKN9wn2bxB4Gj8VY9ha')
top_100_over_1994 <- get_playlist_audio_features('nederlandse_top_40', '675j1zk2WYEohu5CefjM43')
top_100_over_1993 <- get_playlist_audio_features('nederlandse_top_40', '1DjDEBIyQ4AIOLkUJbGBy2')
top_100_over_1992 <- get_playlist_audio_features('nederlandse_top_40', '0pD59D7mJW4NX0H5wRV27T')
top_100_over_1991 <- get_playlist_audio_features('nederlandse_top_40', '3P1skQ2g5zVLcacuDqqAdA')
top_100_over_1990 <- get_playlist_audio_features('nederlandse_top_40', '69LzIQzlxpKrrtgu9PVtVk')
top_100_over_1989 <- get_playlist_audio_features('nederlandse_top_40', '2rAtbOrrxWhScBhgvl35ao')
top_100_over_1988 <- get_playlist_audio_features('nederlandse_top_40', '0dVVuYLPFeVFdHo0QFVMNm')
top_100_over_1987 <- get_playlist_audio_features('nederlandse_top_40', '4xeALUdta32II0luJ9wL1e')
top_100_over_1986 <- get_playlist_audio_features('nederlandse_top_40', '2cFGUwX98vyxCrrsujuC1U')
top_100_over_1985 <- get_playlist_audio_features('nederlandse_top_40', '6vxhGl2YWHf02X4UpkXi3q')                                               
top_100_over_1984 <- get_playlist_audio_features('nederlandse_top_40', '6KkYQorBAW5TUK0yY45F4J')
top_100_over_1983 <- get_playlist_audio_features('nederlandse_top_40', '1ELDe6h3mtZH7DwAdo9YBW')
top_100_over_1982 <- get_playlist_audio_features('nederlandse_top_40', '2l6dDAqX13GDYADc7t4mF8')
top_100_over_1981 <- get_playlist_audio_features('nederlandse_top_40', '06InKRBpzHGk0Sp4k9oJPS')
top_100_over_1980 <- get_playlist_audio_features('nederlandse_top_40', '0g4QqUYRUSlYXKXbY03SES')
top_100_over_1979 <- get_playlist_audio_features('nederlandse_top_40', '67Xq8aDOaiLCJkpfnQcBTs')
top_100_over_1978 <- get_playlist_audio_features('nederlandse_top_40', '52B0451wfmr1YzYoY2rggR')
top_100_over_1977 <- get_playlist_audio_features('nederlandse_top_40', '4u0e0YfTh6hhMV2V2LCvQf')
top_100_over_1976 <- get_playlist_audio_features('nederlandse_top_40', '5av9wFPwTr9qnC62HN6Yyc')
top_100_over_1975 <- get_playlist_audio_features('nederlandse_top_40', '0EqDMLUAXS3zMrG3AwzXh6')
top_100_over_1974 <- get_playlist_audio_features('nederlandse_top_40', '5hDvbZVuasg0JPHGuR9D1d')
top_100_over_1973 <- get_playlist_audio_features('nederlandse_top_40', '0upm2qwycyB2fiOFSGsASK')
top_100_over_1972 <- get_playlist_audio_features('nederlandse_top_40', '2RoJX7fSLPoS2ePOZSTpWs')
top_100_over_1971 <- get_playlist_audio_features('nederlandse_top_40', '4aG0gEFVlQewZiHNOohsqm')
top_100_over_1970 <- get_playlist_audio_features('nederlandse_top_40', '7b9ZYWFS5B9tY8zNdDUzC4')
top_100_over_1969 <- get_playlist_audio_features('nederlandse_top_40', '18z2csSuVxPHIKcLJFV4Ki')
top_100_over_1968 <- get_playlist_audio_features('nederlandse_top_40', '2mKLPvNnKQIKqqaFpMofvF')
top_100_over_1967 <- get_playlist_audio_features('nederlandse_top_40', '2lzlKXRKODwRS9MRXTV0m8')
top_100_over_1966 <- get_playlist_audio_features('nederlandse_top_40', '1NySUOZCuT0uPVKROgqLD8')
top_100_over_1965 <- get_playlist_audio_features('nederlandse_top_40', '0McePZOD9X80f9KieKR50c')


# Dit hierboven is even handmatig kutwerk. Voeg ze op volgorde toe (laag naar hoog), dan kunnen we later iets cools doen

playlists_allemaal <- list(top_100_over_1965, top_100_over_1966, top_100_over_1967, top_100_over_1968, top_100_over_1969, top_100_over_1970, top_100_over_1971, top_100_over_1972, top_100_over_1973, top_100_over_1974, top_100_over_1975, top_100_over_1976, top_100_over_1977, top_100_over_1978, top_100_over_1979, top_100_over_1980, top_100_over_1981, top_100_over_1982, top_100_over_1983, top_100_over_1984, top_100_over_1985, top_100_over_1986, top_100_over_1987, top_100_over_1988, top_100_over_1989, top_100_over_1990, top_100_over_1991, top_100_over_1992, top_100_over_1993, top_100_over_1994, top_100_over_1995, top_100_over_1996, top_100_over_1997, top_100_over_1998, top_100_over_1999, top_100_over_2000, top_100_over_2001, top_100_over_2002, top_100_over_2003, top_100_over_2004, top_100_over_2005, top_100_over_2006, top_100_over_2007, top_100_over_2008, top_100_over_2009, top_100_over_2010, top_100_over_2011, top_100_over_2012, top_100_over_2013, top_100_over_2014, top_100_over_2015, top_100_over_2016, top_100_over_2017, top_100_over_2018, top_100_over_2019)

# Nu heb je dus een nieuwe grote lijst met alle playlists (en dus ook al hun waarden).

# Nu we weten hoe je voor ??n playlist de juiste gemiddeldes kunt berekenen, kunnen we het voor ALLE 55 gaan doen!
# Dit kan bijvoorbeeld met een "for loop"
# Om straks ALLE gemiddelde waardes op te slaan, maak alvast een nieuwe lege lijst
playlistAveragesEnergyList <- c()
playlistAveragesDanceabilityList <- c()
playlistAveragesSpeechinessList <- c()
playlistAveragesAcousticnessList <- c()
playlistAveragesLivenessList <- c()
playlistAveragesValenceList <- c()

for(playlist in playlists_allemaal) {
  # Alles hierbinnen wordt nu voor ?lke playlist in de grote playlist lijst uitgevoerd
  # Dus we willen dat stukje dat we hierboven hebben bedacht om gemiddeldes uit te rekenen, nu hierheen kopieren (en daar weghalen)
  
  playlist_Energy_average <- mean(playlist$energy, na.rm = TRUE)
  playlist_Danceability_average <- mean(playlist$danceability, na.rm = TRUE)
  playlist_Speechiness_average <- mean(playlist$speechiness, na.rm = TRUE)
  playlist_Acousticness_average <- mean(playlist$acousticness, na.rm = TRUE)
  playlist_Liveness_average <- mean(playlist$liveness, na.rm = TRUE)
  playlist_Valence_average <- mean(playlist$valence, na.rm = TRUE)
  
  # Nu we de gemiddeldes van deze playlist hebben berekend, kunnen we hem opslaan!
  playlistAveragesEnergyList <- c(playlistAveragesEnergyList, playlist_Energy_average)
  playlistAveragesDanceabilityList <- c(playlistAveragesDanceabilityList, playlist_Danceability_average)
  playlistAveragesSpeechinessList <- c(playlistAveragesSpeechinessList, playlist_Speechiness_average)
  playlistAveragesAcousticnessList <- c(playlistAveragesAcousticnessList, playlist_Acousticness_average)
  playlistAveragesLivenessList <- c(playlistAveragesLivenessList, playlist_Liveness_average)
  playlistAveragesValenceList <- c(playlistAveragesValenceList, playlist_Valence_average)
  
  # Dit is een soort "trucje" om nieuwe gegevens aan de lijst toe te voegen.
  # We zeggen: Ik maak een nieuwe lijst, en in die lijst stop ik ALLES wat in de vorige lijst zat (playlistAveragesList), ?n het nieuwe object (playlistAverage).
  # Op het einde van deze loop, gaan we weer door naar de volgende playlist, totdat we alle 55 hebben gehad.
}

# Nu zijn we al best ver, we hebben nu als het goed is een lijst met de gemiddelde waarden die we zoeken van alle 55 playlists.
# Kijk anders op dit punt even hoe "playlistAveragesList" eruit ziet, en of dat een beetje klopt.

# Als laatste stap kunnen we een trucje doen om de koppeling te maken tussen jaartallen en de gemiddelde waarden.
# We maken eerst een lijst met alle jaartallen waar we naar willen kijken:
playlistYears <- 1965:2019

# Dan, als we de resultaten gaan plotten, kunnen we dat lijstje met jaren gebruiken voor de x-as, en het lijstje met gemiddeldes voor de y-as.
# Omdat we ze aan het begin gesorteerd hebben (van 1923 naar 1925), kloppen die precies met elkaar!
# Bij jou zou het dus alleen niet maar 3 jaar zijn, maar 55.

# Nu zou je een line plot moeten hebben over die 3 jaar, en de gemiddelde waardes voor die jaren.

plot(x = playlistYears, y = playlistAveragesEnergyList, type="l", col="blue",ylim = c(0,1), xlab = "Jaartal", ylab = "waarde")
lines(x = playlistYears, y = playlistAveragesDanceabilityList, type="l", col="pink")
lines(x = playlistYears, y = playlistAveragesSpeechinessList, type="l", col="green")
lines(x = playlistYears, y = playlistAveragesAcousticnessList, type="l", col="red")
lines(x = playlistYears, y = playlistAveragesLivenessList, type="l", col="purple")
lines(x = playlistYears, y = playlistAveragesValenceList, type="l", col="black")
legend(1965, 1.02, legend=c("Energy", "Danceability","Speechiness", "Acousticness", "Liveness", "Valence"),
       col=c("blue", "pink", "green", "red", "purple", "black"), lty=1, cex=0.8)

alalala = qplot(x = playlistYears, y = playlistAveragesEnergyList, geom = c("point", "smooth"), ylim = c(0.3,0.8))

ggplotly(alalala)

top_100_over_alle_jaren <- get_playlist_audio_features('2egTVPEeUtPDDBgfK9NiHB', '2egTVPEeUtPDDBgfK9NiHB')

AllAvarages = c(mean(top_100_over_alle_jaren$energy, na.rm = TRUE), mean(top_100_over_alle_jaren$danceability, na.rm = TRUE),mean(top_100_over_alle_jaren$speechiness, na.rm = TRUE),mean(top_100_over_alle_jaren$acousticness, na.rm = TRUE),mean(top_100_over_alle_jaren$liveness, na.rm = TRUE),mean(top_100_over_alle_jaren$valence, na.rm = TRUE))



# Uitdaging voor jou is nu hoe je niet alleen ??n variabele kunt plotten hier (in mijn geval "dist", bij jou bv "energy"), maar ook de andere variabelen ("acousticness" of weetikveelwat)
# Hint: Met "lines" kun je extra lijnen toevoegen aan de plot die hierboven is gemaakt.