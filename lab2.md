Part 1
![image](https://user-images.githubusercontent.com/77312914/198727921-0b0553b1-8208-4894-8b46-27422b876287.png)
![image](https://user-images.githubusercontent.com/77312914/198730872-d0224b44-d90a-4ab0-b9f0-45370de38c8e.png)
HandleRequest is called.
Add and pineapple are relevant arguments, relevant field is List, it is empty now
 List is where the word stored, hence when we using the “add” function, the list is changed, and a new word is added into this list. 
 
![image](https://user-images.githubusercontent.com/77312914/198730909-0888505a-752f-4b6b-a3f9-dad47c1cc39c.png)
HandleRequest is called.
Search and app are relevant arguments, relevant field is List, it has an item called “pineapple”now
List is where the word stored, hence when we using the “search” function, the list is iterated, and return a the result when we get the pineapple from the list. 

Part 2:
reverseInPlace method in ArrayExample.java
Junit Test:
 ![image](https://user-images.githubusercontent.com/77312914/198731029-38d8388b-965c-4e09-96d1-28d48d232d58.png)

Failure inducing input:
The point of this input is to give five items with duplicates as the input of the function, to see if it can reverse it in place and handle the situation of duplicate items.  
 ![image](https://user-images.githubusercontent.com/77312914/198731037-91ee8ca7-ddf8-40ac-b1e9-73dc506979c2.png)


Symptoms:
Input[3] is not changed as desired output. It should be 1 but is 2, and 2 is the item that at original place, which means that the last half of the array is not reversed.
 ![image](https://user-images.githubusercontent.com/77312914/198731049-1669c708-5cc4-4239-8695-6f889d18519d.png)

Bug:
The part in red underline needs to be fixed, it should changed to
int[] sub = new int[arr.length];
 and arr[i] = sub[arr.length - i - 1];
 ![image](https://user-images.githubusercontent.com/77312914/198731083-81326781-249a-48bc-877a-7dee46c274c9.png)

Explanation:
The variables “1” was not stored in the array, and it is lost after sorting the array, resulting in the bug like above.


2.
Test merge in ListExamples.java
Junit Test
![image](https://user-images.githubusercontent.com/77312914/198731173-a7553156-07e0-489f-8a6e-104e8f22ff5d.png)

Failure inducing input:
The point of the input is to give two inputs with different content and length, to see if the function can handle this condition successfully

![image](https://user-images.githubusercontent.com/77312914/198731182-0b514a2e-b6d7-4d2b-a676-3e478f975c58.png)

Symptoms:
The error message tells us that we ran into a out of memory error, which means that there could potentially have an infinite loop in the code.
![image](https://user-images.githubusercontent.com/77312914/198731198-2f038ee3-f308-430a-baec-eecac869604d.png)

Bug:
The part in red underline needs to be fixed, it should changed to
Index2 +=1;
 ![image](https://user-images.githubusercontent.com/77312914/198731215-81cc20f8-75ba-470c-931f-9672348fc18c.png)

Explanation:
The second item of input1 was added to the list2 at the second iteration, it should be added to the result and returned when index2 reach the list2.size, hence when index2 < list2.size, it should be added by one, but the function adds one to the index1 instead, which caused the index1 keep increasing while index2 remains the same, causing the out of memory error
