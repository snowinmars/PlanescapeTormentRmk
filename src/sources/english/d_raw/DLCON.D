// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60952 /* ~You see a mechanical man with pale green skin. Although it is obviously a construct, it does have an animated face, which is scowling at you.~ */
  IF ~~ THEN REPLY #60953 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #60954 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60955 /* ~"Grrrr." The creature growls at you and then pauses, weighing your reaction.~ */
  IF ~~ THEN REPLY #60956 /* ~"Am I supposed to be frightened by that?"~ */ GOTO 2
  IF ~~ THEN REPLY #60957 /* ~"Who are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #60958 /* ~"What are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #60959 /* ~"What are you doing?"~ */ GOTO 7
  IF ~~ THEN REPLY #60960 /* ~"I don't have time for this, farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60961 /* ~It looks confused. "Grrrr?" It makes a feeble threatening gesture toward you.~ */
  IF ~~ THEN REPLY #60962 /* ~"I asked you if I'm supposed to be frightened by that."~ */ GOTO 3
  IF ~~ THEN REPLY #60963 /* ~"I don't have time for this, farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60965 /* ~It stares at you for a moment while considering your question. "Yes. *Grrrr* is a sound indicative of a threat. I have included an appropriate gesture to add weight to the threat. Fear is the anticipated response which will give me the advantage in the fight that follows." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60966 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #60967 /* ~Your question seems to throw the creature completely off balance. It stands staring at you with its head cocked to one side, unsure of what to do. "I am a monster. Now we do battle?"~ */
  IF ~~ THEN REPLY #60968 /* ~"You've got to be kidding..."~ */ GOTO 5
  IF ~~ THEN REPLY #60969 /* ~Attack the creature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60970 /* ~It continues to stare at you for a moment. "No... Grrrr." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60971 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60972 /* ~"I am a light combat construct. I currently feature: Poor combat abilities, low intelligence, and a feeble weapon that I can use with little skill." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60973 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60975 /* ~It stares at you with its head cocked to one side, unsure of what to do. "I am a dungeon inhabitant. You have intruded upon my personal space and must now face the consequences. Therefore I am initiating proper attack sequence as follows: *Grrrr* sound, threatening gesture, and battle." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60976 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.1
  SAY #60977 /* ~The creature raises its arms and brandishes its weapon. "See my enemy driven before me. Hear the lamentations of the women. I am victorious." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60978 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60979 /* ~You see a mechanical man with pale green skin. Although it is obviously a construct, it does have an animated face, which is scowling at you.~ */
  IF ~~ THEN REPLY #60980 /* ~"Greetings."~ */ GOTO 10
  IF ~~ THEN REPLY #60981 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60982 /* ~"Die in the name of the Evil Wizard!" The creature brandishes a weapon at you.~ */
  IF ~~ THEN REPLY #60983 /* ~"What evil wizard are you talking about?"~ */ GOTO 11
  IF ~~ THEN REPLY #60984 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #60985 /* ~"What are you?"~ */ GOTO 14
  IF ~~ THEN REPLY #60986 /* ~"What are you doing?"~ */ GOTO 15
  IF ~~ THEN REPLY #60987 /* ~"Am I supposed to be frightened by all of this?"~ */ GOTO 16
  IF ~~ THEN REPLY #60988 /* ~"I don't have time for this, farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60989 /* ~The creature stops waving its weapon and pauses to think for a moment. "Uh... The one that doesn't exist until you set the Rubikon Dungeon Construct to *hard* difficulty level. Boy, will you be in trouble then. Meanwhile, Die in the name of the Evil Wizard!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60990 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60991 /* ~"I am just another faceless minion of evil who you must either destroy or be destroyed by!"~ */
  IF ~~ THEN REPLY #60992 /* ~"This is a joke, right?"~ */ GOTO 13
  IF ~~ THEN REPLY #60993 /* ~Attack the creature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #60994 /* ~The creature's face becomes a showcase of various emotions until it settles into one that it feels to be appropriate. "You mock me! Die, putrid offspring of a humanoid female!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60995 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #60996 /* ~"I am a light combat construct programmed to kill all intruders who dare to challenge Rubikon!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60997 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #60998 /* ~"I am enacting the script that was attached to my model type by the Rubikon Dungeon Construct. Now I am going to become hostile and either kill you or die by your hand!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60999 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY #61000 /* ~The creature stops waving its weapon and pauses to think for a moment. "Yes... Mentioning the evil one always strikes fear into the hearts of the masses, giving cause for the hero to travel forth facing many perils until he finally defeats the evil one due to an act of total stupidity." It leaps to the attack.~ */
  IF ~~ THEN REPLY #61001 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.5
  SAY #61002 /* ~The creature raises its arms and brandishes its weapon. "See the worm cower before me in all my might and splendor. Beg not for mercy, worm. For I have none to give!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #61003 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 18 // from:
  SAY #61004 /* ~You see a mechanical man with pale green skin. Although it is obviously a construct, it does have an animated face, which is scowling at you.~ */
  IF ~~ THEN REPLY #61005 /* ~"Greetings."~ */ GOTO 19
  IF ~~ THEN REPLY #61006 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61007 /* ~The creature suddenly stops scowling at you and adopts a look of mock terror. "Eeeek! It is the hero, sent here no doubt, to slay the evil one. Woe to me, the hapless construct on duty at the time of his arrival!"~ */
  IF ~~ THEN REPLY #61008 /* ~"What are you going on about?"~ */ GOTO 20
  IF ~~ THEN REPLY #61009 /* ~"Who are you?"~ */ GOTO 21
  IF ~~ THEN REPLY #61010 /* ~"What are you?"~ */ GOTO 23
  IF ~~ THEN REPLY #61011 /* ~"What are you doing?"~ */ GOTO 24
  IF ~~ THEN REPLY #61012 /* ~"I don't have time for this, farewell."~ */ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61013 /* ~The creature places its hands on its hips and frowns at you. "The plot, you dolt, stick to the plot. How do you expect me to play my part if you do not cooperate? Where were we..." It pauses to think for a moment. "Oh, I remember, I was about to trounce you." It leaps to the attack.~ */
  IF ~~ THEN REPLY #61014 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #61015 /* ~The creature pauses to think for a moment then gives an exaggerated shrug of its shoulders. "Your hapless victim?" It readies itself for an attack.~ */
  IF ~~ THEN REPLY #61016 /* ~"This can't be happening, can it?"~ */ GOTO 22
  IF ~~ THEN REPLY #61017 /* ~Attack the creature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61018 /* ~"Ah! But it is! Have at ye, knave!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #61019 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #61020 /* ~"I am the dungeon inhabitant that is going to attempt to kick your arse!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #61021 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY #61022 /* ~The creature leans in and begins to whisper to you. "I am currently enacting the frightened minion who meets the hero for the first time." It then straightens and begins to call out in a frightened voice. "To arms, fellow constructs, we must strike down the hero!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #61023 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY #61024 /* ~The creature gives you a dark but gloating look. "Nay, snake. You cannot flee the terror that stands before you. When one transgresses as you have, one must pay the price." It leaps to the attack.~ */
  IF ~~ THEN REPLY #61025 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
