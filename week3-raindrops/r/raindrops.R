raindrops <- function(number) {
  sound <- ""
  
  if (number %% 3 == 0) {
    sound <- "Pling"
  }
  if (number %% 5 == 0) {
    sound <- paste(sound, "Plang", sep = "")
  }
  if (number %% 7 == 0) {
    sound <- paste(sound, "Plong", sep = "")
  }

  if (sound == "") {
    return (as.character(number))
  }

  sound
}
