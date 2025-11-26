// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~ATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34604 /* ~"Little birdy lost his way, eh? Little birdy wants to pass today, little birdy gots to pay."~ */
  IF ~~ THEN REPLY #34605 /* ~"How much?"~ */ GOTO 1
  IF ~~ THEN REPLY #34606 /* ~"You want my money, you'll have to take it from me."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34607 /* ~"You'll have to catch me first."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34608 /* ~"Ten pieces o' jink, my fine friend!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34609 /* ~"Here you go."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34610 /* ~"I don't have that much."~ */ GOTO 3
  IF ~~ THEN REPLY #34611 /* ~"Forget it. You'll have to take it off my body if you want it."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34612 /* ~"You'll have to catch me first!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.0
  SAY #34613 /* ~The thug bows low, mockingly. "I do hope we'll be doin' business again soon."~ */
  IF ~~ THEN REPLY #34614 /* ~"Yeah, whatever. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #34615 /* ~The thug affects a shocked expression. "In that case, I'll have to take it out of ye in blood. Farewell, mate."~ */
  IF ~~ THEN REPLY #34616 /* ~"Hey, wait..."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #34617 /* ~"Let's have it."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #34618 /* ~"The little birdy's returned home, aye? Come to feed the rest of the nest?"~ */
  IF ~~ THEN REPLY #34619 /* ~"What are you talking about?"~ */ GOTO 5
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34620 /* ~"Yes. Here's your fee."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34621 /* ~"No. I've come to kill you."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34622 /* ~His face contorts into a parody of anguish. "D'ye mean to tell me you've already forgotten? Ah, dear. It's the ten jink payment ye owe me for passin' along my street. Come on... pony up now."~ */
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34623 /* ~"Here, then."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34624 /* ~"You'll have to fight me for it this time."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34625 /* ~"Can't we come to some sort of agreement on this?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #34626 /* ~"Sorry, berk. We all got rules to play by and ye got blood to pay by. Give your power my regards."~ */
  IF ~~ THEN REPLY #34627 /* ~Fight him.~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34628 /* ~Flee.~ */ DO ~Enemy()
~ EXIT
END
