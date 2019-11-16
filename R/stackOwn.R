#' @title stack
#'
#' @description This class in R represent a stack using list
#'
#' @param none
#'
#' @return NULL
#'
#' @examples
#'
#' stackOwn<-stackOwn()
#'
#' @export stackOwn

stackOwn <- setRefClass("stackOwn", fields = list(
  pila = "list"),
  methods = list(
    look = function() {
      return(unlist(pila, use.names = FALSE))
    },
    pop = function() {
      if (isEmpty()) {
        return(NULL)
      } else {
        valor <- pila[[length(pila)]]
        pila[[length(pila)]] <<- NULL
        return(valor)
      }
    },
    push = function(elemento) {
      pila[[length(pila) + 1]] <<- elemento
    },
    clean = function() {
      pila <<- list()
    },
    isEmpty = function() {
      if (length(pila) == 0) {
        return(TRUE)
      } else {
        return(FALSE)
      }
    }
  )
)
