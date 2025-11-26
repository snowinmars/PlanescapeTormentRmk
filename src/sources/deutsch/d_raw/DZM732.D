// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM732.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM732~

IF ~  !HasItem("TomeBA","ZM732")
~ THEN BEGIN 0 // from: 4.0
  SAY #6529 /* ~Dieser tatterigen Leiche wurden die Augen und der Mund zugenäht, und die Zahl "732" ist in ihre Augenbraue geritzt. Die Fäden, die ihre Augenhöhlen zugenäht halten, sehen extrem alt aus... Du fragst dich, ob ihre Augen vor oder nach dem Tod des Mannes zugenäht wurden.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6533 /* ~"Tut mir leid, daß ich dir das Buch weggenommen habe... Es sah einfach zu interessant aus."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6532 /* ~"Tut mir leid, daß ich dir das Buch weggenommen habe... Es sah einfach zu interessant aus."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6534 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6535 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6536 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #6537 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6530 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #6538 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6531 /* ~Die Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~~ THEN REPLY #6539 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~  HasItem("TomeBA","ZM732")
~ THEN BEGIN 3 // from:
  SAY #64270 /* ~Dieser Tatterleiche wurden die Augen und der Mund zugenäht, und die Zahl "732" wurde ihm in die Stirn geritzt. Die Fäden, die seine Augenhöhlen verschlossen halten, sehen extrem alt aus... Du fragst dich, ob die Augen vor oder nach dem Tod des Mannes zugenäht wurden. Du erblickst ein riesiges Buch in seinen Händen, das er scheinbar irgendwohin tragen wollte. ~ */
  IF ~~ THEN REPLY #64271 /* ~Nimm den Wälzer aus seinen Händen... vorsichtig.~ */ DO ~GiveItem("TomeBA",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #64272 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64273 /* ~Vorsichtig nimmst du das alte Buch aus den Händen der Leiche - Sie scheint es nicht zu bemerken. Das Buch stellt sich als Buch über Zauberei und Bannsprüche heraus - Es ist mit Diagrammen und Tabellen gefüllt, die sich detailliert mit unterschiedlichen Aspekten der nekromantischen Künste befassen. Das Buch selbst ist extrem schwer; so unbeholfen der Zombie ist, er muss extrem stark sein.

^NHINWEIS: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #64274 /* ~Untersuche die Leiche noch einmal.~ */ GOTO 0
  IF ~~ THEN REPLY #64275 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
