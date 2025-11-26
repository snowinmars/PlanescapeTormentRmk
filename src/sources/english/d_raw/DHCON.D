// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60814 /* ~You see a mechanical man with volcanic red skin along one arm. It watches your approach with a wary eye.~ */
  IF ~~ THEN REPLY #60815 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #60816 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60817 /* ~It cocks its head to one side and gives you a questioning look. "Greetings, intruder." ~ */
  IF ~~ THEN REPLY #60818 /* ~"What makes you think I'm an intruder?"~ */ GOTO 2
  IF ~~ THEN REPLY #60819 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #60820 /* ~"What are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #60821 /* ~"What are you doing?"~ */ GOTO 5
  IF ~~ THEN REPLY #60822 /* ~"I must be going. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60823 /* ~It gives you a wicked smile. "Because you are not one of us. Therefore, you are an intruder. As an intruder, you must die." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60824 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60825 /* ~"I have no identity, only a purpose. My purpose is to kill you." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60826 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #60827 /* ~"I am a heavy combat drone. I feature: Above average combat abilities, superior intelligence, and competent weapon skills. As a bonus, I have been imbued with a bad attitude." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60828 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #60829 /* ~"I am taking note of where your vital organs are located. Now that I have compiled this information, I will use it to inflict some serious pain upon you." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60830 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #60831 /* ~It smiles at you evilly. "Yes, you will be going, intruder. Only it will be feet first after I slay you!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60832 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY #60833 /* ~You see a mechanical man with volcanic red skin along one arm. It watches your approach with a wary eye.~ */
  IF ~~ THEN REPLY #60834 /* ~"Greetings."~ */ GOTO 8
  IF ~~ THEN REPLY #60835 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60836 /* ~It cocks its head to one side and gives you a questioning look. "Why do you persist in questioning us? I do not understand."~ */
  IF ~~ THEN REPLY #60837 /* ~"There is always the chance that I might learn something."~ */ GOTO 9
  IF ~~ THEN REPLY #60838 /* ~"Who are you?"~ */ GOTO 10
  IF ~~ THEN REPLY #60839 /* ~"What are you?"~ */ GOTO 11
  IF ~~ THEN REPLY #60840 /* ~"What are you doing?"~ */ GOTO 12
  IF ~~ THEN REPLY #60841 /* ~"I must be going. Farewell."~ */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60842 /* ~It looks away for a moment in thought. Returning its gaze to you, it nods its head in agreement. "Yes... I suppose that's true... Let me teach you about pain." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60843 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #60845 /* ~"I am a servant of the Evil Wizard and He commands your death." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60846 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #60847 /* ~"I am the one who will finally bring you to your knees, intruder!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60848 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #60849 /* ~"I am alerting the Evil Wizard of your location in the maze before I slay you..." It pauses for a moment. "Done, now comes the slaying." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60850 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4
  SAY #60851 /* ~"Leaving? So soon? Let me help you on your way!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #60852 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 14 // from:
  SAY #60853 /* ~You see a mechanical man with volcanic red skin along one arm. It watches your approach with a wary eye.~ */
  IF ~~ THEN REPLY #60854 /* ~"Greetings."~ */ GOTO 15
  IF ~~ THEN REPLY #60855 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60856 /* ~It cocks its head to one side and gives you a questioning look. "Your tenacity is impressive, intruder, but foolish none the less." ~ */
  IF ~~ THEN REPLY #60857 /* ~"Why do we have to fight? It seems so pointless."~ */ GOTO 16
  IF ~~ THEN REPLY #60858 /* ~"Who are you?"~ */ GOTO 17
  IF ~~ THEN REPLY #60859 /* ~"What are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #60860 /* ~"What are you doing?"~ */ GOTO 19
  IF ~~ THEN REPLY #60861 /* ~"I must be going. Farewell."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60862 /* ~It stares at you a while before answering. "It only seems pointless, intruder. There is meaning behind our madness..." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60863 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #60864 /* ~"As an individual, nobody. As a part of the whole, everybody." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60865 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY #60866 /* ~"A means to an end, intruder." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60867 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #60868 /* ~"I am reporting your every success, your every failure, and your every move to the Evil Wizard. From you, we learn. Because of you, we will better ourselves." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60869 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #60870 /* ~"Yes... Until we meet again, intruder." It leaps to the attack.~ */
  IF ~~ THEN REPLY #60871 /* ~Defend yourself.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
