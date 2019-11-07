#' @title queue
#'
#' @description This class in R represent a queue using list
#'
#' @param none
#'
#' @return NULL
#'
#' @examples
#'
#' queue<-queue()
#'
#' @export queue

queue <- setRefClass("queue", fields = list(
  cola = "list"),
  methods = list(
    look = function() {
      return(unlist(cola, use.names = FALSE))
    },
    pop = function() {
      if (isEmpty()) {
        return(NULL)
      } else {
        valor <- cola[[1]]
        cola[[1]] <<- NULL
        return(valor)
      }
    },
    push = function(elemento) {
      punteroFin <- length(cola) + 1
      cola[[punteroFin]] <<- elemento
    },
    clean = function() {
      cola <<- list()
    },
    isEmpty = function() {
      if (length(cola) == 0) {
        return(TRUE)
      } else {
        return(FALSE)
      }
    }
  )
)
