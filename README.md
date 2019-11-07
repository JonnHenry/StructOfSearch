# StructOfSearch
Some structures used in algorithms of search in artificial inteligence
Install packages in R 

Install from GitHub :  devtools::install_github("JonnHenry/StructOfSearch")

To use this package you need import the libray with the next line in your script

    library(structOfSearch)

This package contain 3 basic structures of data

* **queue**

* **stack**

* **queue sorted**

## Queue
To use a queue we need create an object of class queque of the next way

        queue<-queue() 

**some methods are:**

```
look=> All objects in the list

pop=> get the first element

push=> append an element

clean=> clean the queue

isEmpty=> check if the queue is empty
```
## Stack
To use a stack we need create an object of class stack of the next way

        stack<-stack() 

**some methods are:**
```
look=> All objects in the list

pop=> get the first element

push(element)=> append an element

clean=> clean the queue

isEmpty=> check if the queue is empty
```


## Queue Sorted

To use a queue sorted we need create an object of class queueSorted of the next way
        queueSorted<-queueSorted(queue="data.frame") 
        
To create an object of type queueSorted we need create an data frame and call the property queue of the object, this is to adapt to the all possible structures that you need.


**some methods are:**
```
look=> All objects in the data frame 

pop=> get the first element of the data frame and it is of type vector

push(vector)=> append an element of type vector

clean=> clean the queue

sort(orderByCol)=> sort the data frame by column called orderByCol

isEmpty=> check if the queue is empty
```


