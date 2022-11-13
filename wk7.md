
*Part 1*

    Vim TestDocSearch.java
    /start<Enter>cebase<Esc>:w<Enter>
    /start<Enter>cebase<Esc>:w<Enter>
    /start<Enter>cebase<Esc>:w<Enter>
    /start<Enter>cebase<Esc>:w<Enter>

step 1
type /start<Enter> to find the "start" and locate cursor on it
<img src="/l1.png">

step 2
type ce base to delete the "start" and change it to "base"
<img src="/l2.png">

step 3
press <Esc>:w to exit to normal mode and save the change
![Image](l3.png)

step 4
press <Enter> to excute the save and see the results saying that "saved successfully"
<img src="/l4.png">
    
step 5
Since there are 4 occurences of the word "start", we need to repeat process above 4 times.


*Part 2*
Method 1: start in VS Code then scp
![f525414a2b6cc9e3dd3b5395e45f10f](https://user-images.githubusercontent.com/77312914/201507363-1912a3eb-4777-4681-bdac-ed7d1d38b38a.jpg)

It took me about 2min 16s to do it. The difficulty is that running bash test.sh on the remote if a little bit confusing.

Method 2:
![e0d1e7bd86d6099879f3e9347e8e435](https://user-images.githubusercontent.com/77312914/201507380-19fd6c99-0622-4410-90af-cb18583c4f53.jpg)

It took me about 1min 46s to do it. The difficulty is that I am not very familliar with using vim on the server.

*Which of these two styles would you prefer using if you had to work on a program that you were running remotely, and why?*

The second one is faster but I would choose the first method since I am get used to it and more familliar with the local commands.

*What about the project or task might factor into your decision one way or another? (If nothing would affect your decision, say so and why!)*

If there are numbers of projects need similar editting, I might prefer the second method, since scp so many times would be annoying. 
