// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60874 /* ~You see a mechanical man with sickly yellow skin along one arm. Although it is obviously a construct, it does have a very animated face, which is scowling at you.~ */
  IF ~~ THEN REPLY #60875 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #60876 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60877 /* ~With a whir of gears its eyes narrow to slits as it continues to stare at you. Suddenly it beats on its chest with both arms, making mighty clangs in the cube, and jumps up and down a couple of times. Finally it settles down and leers at you. "Oook!"~ */
  IF ~~ THEN REPLY #60878 /* ~"Just what was that supposed to accomplish?"~ */ GOTO 2
  IF ~~ THEN REPLY #60879 /* ~"Who are you?"~ */ GOTO 5
  IF ~~ THEN REPLY #60880 /* ~"What are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #60881 /* ~"What are you doing?"~ */ GOTO 7
  IF ~~ THEN REPLY #60882 /* ~"I really don't have time for this. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60883 /* ~It looks at you in confusion as it straightens up and scratches its head. "It was intended to induce a fear response. Did it succeed?"~ */
  IF ~~ THEN REPLY #60884 /* ~"Not really."~ */ GOTO 3
  IF ~~ THEN REPLY #60885 /* ~"Yes, it was brilliantly done."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60886 /* ~It sighs and looks away for a moment. "I am sorry to hear that. I was hoping to increase my life expectancy enough to get in a few extra hits on you. Oh well..." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60887 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #60888 /* ~It smiles and nods its head. "Excellent. I will note this as a viable technique for future use." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60889 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #60890 /* ~"I am your sworn enemy." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60891 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60892 /* ~"I am a medium combat construct. I currently feature: Average combat abilities, average intelligence, and mediocre skill in the use of my weapon of choice." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60893 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60894 /* ~"I am currently assessing you to determine your weaknesses." The construct pauses. "I have completed my assessment, and I will now attack you without mercy." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60895 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY #60896 /* ~"You dare to attract my attention and then just summarily dismiss me? I don't think so!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60897 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60898 /* ~You see a mechanical man with sickly yellow skin along one arm. Although it is obviously a construct, it does have a very animated face, which is scowling at you.~ */
  IF ~~ THEN REPLY #60899 /* ~"Greetings."~ */ GOTO 10
  IF ~~ THEN REPLY #60900 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60901 /* ~It looks at you with an exaggerated sneer as it examines you. Finally it barks out a monotone laugh. "Is this the best they can send? Ha! I pity the fools." It continues to leer at you.~ */
  IF ~~ THEN REPLY #60903 /* ~"The best that who can send?"~ */ GOTO 11
  IF ~~ THEN REPLY #60904 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #60905 /* ~"What are you?"~ */ GOTO 13
  IF ~~ THEN REPLY #60906 /* ~"What are you doing?"~ */ GOTO 14
  IF ~~ THEN REPLY #60907 /* ~"I must be going now. Farewell."~ */ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60908 /* ~It throws back its head and laughs. "Ha! Ha! Your pitiful attempt at ignorance will not save you. Know that you are doomed, fool!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60909 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60910 /* ~"I have no identity, I am just another nameless piece of cannon fodder placed in your way as you explore these halls." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60911 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #60912 /* ~It pauses for a moment to scratch its head. "I am the monster that is going to beat you profusely until you die... unless, of course, you kill me first." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60915 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #60916 /* ~"I am assuming an air of confidence and superiority in order to induce a feeling of incompetence in you. If successful, this will ensure my victory in the battle that I will now initiate." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60917 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #60918 /* ~"Ha! You think you can escape my wrath with your nonchalant attitude and a simple dismissal? Nay, fool!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60919 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 16 // from:
  SAY #60920 /* ~You see a mechanical man with sickly yellow skin along one arm. Although it is obviously a construct, it does have a very animated face, which is scowling at you.~ */
  IF ~~ THEN REPLY #60921 /* ~"Greetings."~ */ GOTO 17
  IF ~~ THEN REPLY #60922 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60923 /* ~"Greetings to you as well." It looks at you with a blank expression.~ */
  IF ~~ THEN REPLY #60924 /* ~"Who are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #60926 /* ~"What are you?"~ */ GOTO 19
  IF ~~ THEN REPLY #60927 /* ~"What are you doing?"~ */ GOTO 20
  IF ~~ THEN REPLY #60928 /* ~"I must be going now, farewell."~ */ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60929 /* ~It pauses to think then shrugs its shoulders. "I have no idea." It frowns. "I am not sure that I have ever known who I am. I feel as if my identity, my very purpose in life, is somehow inconsequential. I feel lost... alone... I feel like... taking my frustrations out on someone or something..." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60930 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #60931 /* ~It frowns. "I am nothing more than a pawn in some cruel game. I have no identity, no life, and now you show up and start irritating me with your meaningless questions. I hate life, I hate you." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60932 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #60933 /* ~It looks at you with disdain. "I am waiting for us to finish this meaningless banter so that I may then beat you senseless." It glares at you.~ */
  IF ~~ THEN REPLY #60934 /* ~"Why do you want to do that?"~ */ GOTO 21
  IF ~~ THEN REPLY #60935 /* ~Attack the creature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60937 /* ~It shrugs its shoulders. "No other options have been given to me by my creator. Once this sentence is complete I will initiate combat with you." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60938 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #60939 /* ~"Farewell to you as well. However, before you go, please allow me to vent some frustrations on you that were induced by your presence here."~ */
  IF ~~ THEN REPLY #60941 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
