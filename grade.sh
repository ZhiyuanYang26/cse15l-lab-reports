# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission

FILE="ListExamples.java"
mkdir student-submission
cp $FILE student-submission
cd student-submission

if test -f "$FILE"; then
    echo "file found"
else
    echo "file not found"
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