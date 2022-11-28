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
    if [ $? -eq 0 ]; then
        echo "$FILE Complied and running successfully "
    else 
        echo "$FILE failed to complie and run"
        exit
    fi

Part 2
![image](https://user-images.githubusercontent.com/77312914/204195575-0c20d99e-2624-452c-a868-f923565fcb87.png)

![image](https://user-images.githubusercontent.com/77312914/204195656-a1a0c426-0c2f-49c5-a65b-912086272e98.png)

![image](https://user-images.githubusercontent.com/77312914/204195834-70ed8555-4942-499b-9f92-eb6b42ffdb0c.png)

