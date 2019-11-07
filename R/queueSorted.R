#' @title queueSorted
#'
#' @description This class in R represent a queue sorted using dataframes
#'
#' @param data.frame
#'
#' @return NULL
#'
#' @examples
#'
#' queueSorted<-queueSorted(queue=data.frame("nodo"=character(),peso=numeric(),heuristica=numeric(),"suma"=numeric(),stringsAsFactors = FALSE))
#' queueSorted<-queueSorted(queue=data.frame("nodo"=character(),"heuristica"=numeric(),stringsAsFactors = FALSE))
#'
#'
#' @export queueSorted

queueSorted <- setRefClass("queueSorted", fields = list(
  queue = "data.frame"),
  methods = list(
    look = function() {
      if (isEmpty()) {
        return(NULL)
      }else{
        return(cola)
      }
    },
    pop = function() {
      if (isEmpty()) {
        return(NULL)
      } else {
        valor <- cola[c(1),]
        cola <<-cola[-c(1),]
        return(valor)
      }
    },
    sort = function(campoOrdenar){
      cola<<-cola[order(as.numeric(cola[[campoOrdenar]]),na.last = TRUE,method = c("radix"),decreasing = FALSE),]
    },
    push = function(elemento) {
      cola[nrow(cola) + 1,]<<-elemento
    },
    clean = function() {
      cola <<- cola[-c(1:nrow(cola)),]
    },
    isEmpty = function() {
      if (nrow(cola) == 0) {
        return(TRUE)
      } else {
        return(FALSE)
      }
    }
  )
)
