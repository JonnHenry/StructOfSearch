# StructOfSearch

A few data structures used in AI search algorithms

Install package in R 

        Install from GitHub : devtools::install_github("JonnHenry/StructOfSearch")

To use this package you need import the libray with the next line in your script

    library(structOfSearch)

This package contains 3 basic data structures

* **queue**

* **stack**

* **queue sorted**

## Queue

To perform queue need to create a Queue object by the next way

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

To perform stack need to create a stackOwn object by the next way

        stackOwn<-stackOwn() 

**some methods are:**
```
look=> All objects in the list

pop=> get the first element

push(element)=> append an element

clean=> clean the queue

isEmpty=> check if the queue is empty
```


## Queue Sorted

To perform sorted queue need to create a queueSorted object by the next way

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


