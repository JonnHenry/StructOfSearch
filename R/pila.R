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
#' stack<-stack()
#'
#' @export stack

stack <- setRefClass("stack", fields = list(
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
        pila[[ultimoValor]] <<- NULL
        return(valor)
      }
    },
    push = function(elemento) {
      punteroFin <- length(pila) + 1
      pila[[punteroFin]] <<- elemento
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
