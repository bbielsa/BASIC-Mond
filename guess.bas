10 PRINT 'GUESS THE NUMBER'
20 PRINT 'BETWEEN 0 AND 20'
30 TRIES = 1
35 SECRET = INT(RND(20))
40 INPUT GUESS : GUESS = NUM(GUESS)
50 IF GUESS = SECRET THEN 100
60 IF GUESS > SECRET THEN 92
70 IF GUESS < SECRET THEN 90
90 PRINT 'HIGHER' : TRIES = TRIES + 1
91 GOTO 40
92 PRINT 'LOWER' : TRIES = TRIES + 1
93 GOTO 40
94 PRINT 'CORRECT!'
100 FOPEN('record.txt')
110 HIGHSCORE = NUM(FREAD(0))
120 IF HIGHSCORE < TRIES THEN 200
130 PRINT 'YOU GUESSED THE NUMBER IN';TRIES;'ATTEMPTS, A NEW RECORD!'
140 FWRITE(TRIES)
150 END
200 PRINT 'YOU DID NOT BEAT THE RECORD OF';HIGHSCORE;'ATTEMPTS. TRY AGAIN!'
210 END
