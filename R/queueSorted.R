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
        return(queue)
      }
    },
    pop = function() {
      if (isEmpty()) {
        return(NULL)
      } else {
        valor <- queue[c(1),]
        queue <<-queue[-c(1),]
        return(valor)
      }
    },
    sort = function(campoOrdenar){
      queue<<-queue[order(as.numeric(queue[[campoOrdenar]]),na.last = TRUE,method = c("radix"),decreasing = FALSE),]
    },
    push = function(elemento) {
      queue[nrow(queue) + 1,]<<-elemento
    },
    clean = function() {
      queue <<- queue[-c(1:nrow(queue)),]
    },
    isEmpty = function() {
      if (nrow(queue) == 0) {
        return(TRUE)
      } else {
        return(FALSE)
      }
    }
  )
)
