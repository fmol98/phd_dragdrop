# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


#' Make chairmen duos
#'
#' For the Thursday morning meeting, make duos that will chair the meeting consisting of only aios from the Tytgat.
#'
#' @param names character vector with names of aios from Tytgat (both floors)
#'
#' @return matrix of chairmen couples
#' @export
make_chairmen <- function(names){
  shuffle_names <- sample(names)
  couple_names <- matrix(shuffle_names, ncol = 2)
  return(couple_names)
}

#' Fun function for PhDs!
#'
#' Have a break from the serious coding and use this function to cheer yourself up with a meme.
#'
#' @return a meme saved into your environment
#' @export
PhD_life <- function(){
  data_dir <- system.file("data", package = "phd")
  cat("Greetings, PhD candidate! What is your name?")
  name <- readline()
  cat("Well hello there,", name, "! Nice to see you here. If I may ask, in what year of your PhD trajectory are you now?")
  year <- readline()
  if(tolower(year) == "1"){
    cat("Oh my, your first year! You will still feel emotions such as happiness then!")
  }
  else if(tolower(year) == "2"){
    cat("Second year! Reality must be getting to you then.. Hopefully you are still okay!")
  }
  else if(tolower(year) == "3"){
    cat("Third year? Damn, do you feel the pressure yet? Can you handle all those projects?? You can do it!")
  }
  else if(tolower(year) == "4"){
    cat("... I am almost too ashamed to ask, but how far along are you in terms of writing? You must be tired of, well, everything basically. Hope you are okay!")
  }
  else("What are you still doing here??? GO FINISH THAT THESIS MY LOVE")
  cat(" ")
  cat("Anyways, how is your day going?")
  daily_mood <- readline()
  cat("Seeing you are able to type about your day, shows me that you are at least alive! Well done! So actually, I have this meme that I want to show you. Already since we started talking.. Do you want to see it?")
  choice <- readline()
  if(tolower(choice) == "yes"){
    cat("Splendid! Here you go")
    meme_yes <- image_read(file.path(data_dir, "meme_yes.png"))
    print(meme_yes)
  }
  else if(tolower(choice) == "no"){
    cat("Too bad, enjoy your memeless PhD life then... SIKE here is a meme anyways")
    meme_no <- image_read(file.path(data_dir, "meme_no.png"))
    print(meme_no)
  }
  else("You actually need to give me a yes or no answer, I can't handle too many options you know.. Anyways, here is a meme!")
  meme_else <- image_read("meme_else.jpg")
  print(meme_else)
}
