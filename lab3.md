*grep -l*

    [z6yang@ieng6-201]:biomed:236$ grep -l "amazing" *
    1471-2180-3-10.txt
    1471-2350-3-12.txt
    gb-2003-4-5-r34.txt

This command gives us a list of files that contains the pattern. It is useful when we want to know the name of the files that containing certain words.

*grep -n*

    [z6yang@ieng6-201]:biomed:238$ grep -n "amazing" *
    1471-2180-3-10.txt:546:        differences between these genomes with amazing detail.
    1471-2350-3-12.txt:628:        amazingly consistent for fold change and direction of
    1471-2350-3-12.txt:699:        not used on the GeneChip ®analysis revealed amazing
    gb-2003-4-5-r34.txt:756:        showed that the infinite mixture approach works amazingly
    
This command tells us the line number in the each file that contains the pattern. It is useful when we want to know the location in the files that containing certain words.

*grep -c*

    [z6yang@ieng6-201]:911report:244$ grep -c "day" *
    chapter-1.txt:5
    chapter-10.txt:20
    chapter-11.txt:7
    chapter-12.txt:10
    chapter-13.1.txt:11
    chapter-13.2.txt:2
    chapter-13.3.txt:8
    chapter-13.4.txt:18
    chapter-13.5.txt:23
    chapter-2.txt:8
    chapter-3.txt:31
    chapter-5.txt:11
    chapter-6.txt:25
    chapter-7.txt:33
    chapter-8.txt:23
    chapter-9.txt:12
    preface.txt:3

This command tells us the count of the pattern in each file. It is useful when we want to know the occurency of certain words in each files.
