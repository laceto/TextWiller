#' normalizzaemote
#' 
#' Identifies the UTF-8 codes of emoticons in the given text and replaces them with a corresponding keyword
#' 
#' 
#' 
#' \code{normalizzaEmoticons} replaces emoticons in \code{testo} with a keyword corresponding to what is represented
#' 
#' @param testo a set of texts to be preprocessed
#' 
#' 
#' @return a set of text where emoticons has been replaced by the respective keyword
#' @author Livio Finos, Antonio Calcagnì, Mattia Da Pont
#'  


normalizzaEmoticons<-function(testo){
  
  data(vocabolarioEmoteSorted)
  testo<-encodeString(testo)
  vocabolarioEmoteSorted[,1]<-encodeString(vocabolarioEmoteSorted[,1])
  
  
#  testo=stringi::stri_replace_all_fixed(testo,
#                       vocabolarioEmote[,1], 
#                                        vocabolarioEmote[,2], vectorize_all=TRUE)

  for(i in 1:nrow(vocabolarioEmoteSorted)){
    testo<-gsub(vocabolarioEmoteSorted[i,1],vocabolarioEmoteSorted[i,2],
                testo,ignore.case =TRUE)
  }
  testo
}

