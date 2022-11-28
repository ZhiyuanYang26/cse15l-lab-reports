Part 1

	set -e

    rm -rf student-submission
    git clone $1 student-submission

    FILE="ListExamples.java"
    mkdir student-submission
    cp $FILE student-submission
    cd student-submission

    if [test ! -f "$FILE"]; then
        echo "$FILE not found"
        exit
    fi
    cp "TestListExamples.java" student-submission
    javac -cp ".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar" ./student-submission/*.java 

    cd student-submission
    java -cp ".:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar" org.junit.runner.JUnitCore TestListExamples
    if [ $? ! -eq 0 ]; then
        echo "$FILE failed to complie and run"
        exit
    fi
	count=`grep '^[\.F]\+$' < .unittest.error`
	false=`grep -o 'F' <<<"$result" | grep -c .`
	all=`grep -o '\.' <<<"$result" | grep -c .`
	echo "$((all-error))/$all passed."

Part 2

The method from starter code of lab3
score: 6
![image](https://user-images.githubusercontent.com/77312914/204197623-e5792c66-3778-4dee-bcb3-1d3579c006d7.png)

The method of correct version
score: 10
![image](https://user-images.githubusercontent.com/77312914/204199565-3e57dd6e-b54a-4333-9294-e5fec68b1f75.png)

The method with srong filename
![image](https://user-images.githubusercontent.com/77312914/204197831-abba9ecc-5f71-4244-9fad-3d2d904271a5.png)

Part 3

![image](https://user-images.githubusercontent.com/77312914/204198650-33f45ac5-fce4-459e-8f71-f80b3183065d.png)

When we run "The method with srong filename":
  
Commands from line 1 to 7:  
standard output and standard error: None  
return code: 0  
  
if statement in line 9:  
conditon is true, because the input filename is not in the directory  
  
therefore it runs line 10, prints the "filename not found"  
then runs line 11 and 12, exit it and stop running, hence lines below are not run  
