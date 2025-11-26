// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGS1~

IF ~  NumTimesTalkedToLT(1)
~ THEN BEGIN 0 // from:
  SAY #1910 /* ~The man looks up slowly as you approach. He takes a look at you and sneers in disgust. "What in the nine hells be ye?" He wrinkles his nose. "Mayhap the Dusties are missing one of their rotting dogs." He laughs. "Ha! *Never* have I seen anythin' so ugly."~ */
  IF ~~ THEN REPLY #1911 /* ~"Except your reflection?"~ */ GOTO 1
  IF ~~ THEN REPLY #1912 /* ~"You'd better watch your tongue, or it'll be lying at your feet."~ */ GOTO 1
  IF ~~ THEN REPLY #1913 /* ~"Farewell."~ */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 11.0 11.1
  SAY #1914 /* ~The man seems taken aback for a moment, then sneers again, fingering the hilt of his blade. "Ye look due for a bleeding, guvner."~ */
  IF ~~ THEN REPLY #1915 /* ~"Draw that blade and the only man you'll be killing is yourself."~ */ GOTO 2
  IF ~~ THEN REPLY #1916 /* ~"Settle down, I have no interest in fighting you."~ */ GOTO 3
  IF ~~ THEN REPLY #1917 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1918 /* ~"Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1919 /* ~He reaches for his weapon. "We'll see, guvner, we'll see..."~ */
  IF ~~ THEN REPLY #1945 /* ~"I warned you..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #1920 /* ~"Oh, ye don't, do ye?" He spits at your feet. "What, does the thin, watery blood of cowards fill yer veins, berk? Or did it all seep out during yer last mangling?"~ */
  IF ~~ THEN REPLY #1921 /* ~"As I recall, your mother is the one who has the thin, watery blood of cowards running in her veins... by my count, that means half the city's bastards carry the same bloodline as you."~ */ GOTO 4
  IF ~~ THEN REPLY #1922 /* ~"Let's stop this before there's any trouble."~ */ GOTO 5
  IF ~~ THEN REPLY #1923 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1924 /* ~"Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1
  SAY #1925 /* ~The man blinks for a moment, as if digesting what you said, then his face flushes with anger. He draws his blade and lunges at you.~ */
  IF ~~ THEN REPLY #1946 /* ~Defend yourself...~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #1926 /* ~"Nay, nay, berk, it's not that simple. Ye'll have to *pay* fer the privilege of not wearing me blade."~ */
  IF ~~ THEN REPLY #1927 /* ~"All right then. How much?"~ */ GOTO 6
  IF ~~ THEN REPLY #1929 /* ~"But your mother doesn't charge. Why do you?"~ */ GOTO 4
  IF ~~ THEN REPLY #1930 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1931 /* ~Just walk away.~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #1932 /* ~"All ye're carrying should settle the matter by my reckoning." He laughs. "Come on now, hand it over."~ */
  IF ~~ THEN REPLY #1936 /* ~Give him all your money.~ */ GOTO 10
  IF ~~ THEN REPLY #1937 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1938 /* ~Leave.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY #1933 /* ~"Maybe ye better decide fer sure next time if ye want ta talk to me, ye disease of yer mother's loins."~ */
  IF ~~ THEN REPLY #1939 /* ~"*What* did you say?"~ */ GOTO 9
  IF ~~ THEN REPLY #1940 /* ~Let it go and leave.~ */ EXIT
  IF ~~ THEN REPLY #1941 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 3.3 5.3 6.2 11.2
  SAY #1934 /* ~"Aye, be on yer way back to the butcher's shop then, coward." He laughs.~ */
  IF ~~ THEN REPLY #1942 /* ~"*What* did you say?"~ */ GOTO 9
  IF ~~ THEN REPLY #1943 /* ~Let it go and leave.~ */ EXIT
  IF ~~ THEN REPLY #1944 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #1935 /* ~"Aw... my most sincerest apologies, cutter... are ye deaf?" He looks at you contemptuously. "Aw, now, didja take a few knocks on the head, is that it?" He taps his head for emphasis. "Do I haveta talk slow-like to ye, berk?"~ */
  IF ~~ THEN REPLY #1947 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1948 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #1949 /* ~He holds up his hands as you reach for your money. "No, coward, ye hold on to it for me for a moment... I think I'll be takin' it anyway, after I gut ye." He draws his blade and smiles. "Looks like I'll be making ye uglier than ye are."~ */
  IF ~~ THEN REPLY #1950 /* ~Defend yourself...~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #1951 /* ~"Eh?" He sneers. "Ye again, berk? Ye lookin' for handouts? Best beg somewhere else." He looks you up and down. "Never have I seen anything uglier."~ */
  IF ~~ THEN REPLY #1953 /* ~"Except your reflection?"~ */ GOTO 1
  IF ~~ THEN REPLY #1954 /* ~"You'd better watch your tongue, or it'll be lying at your feet."~ */ GOTO 1
  IF ~~ THEN REPLY #1955 /* ~"Farewell."~ */ GOTO 8
END
