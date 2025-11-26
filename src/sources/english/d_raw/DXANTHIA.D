// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANTHIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANTHIA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51104 /* ~You see a pretty young woman in fine clothes. Her skin lacks the usual yellow tint of the inhabitants of this ward. She appears to be watching three nearby creatures with interest.~ */
  IF ~~ THEN REPLY #51105 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #51106 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51107 /* ~She turns to face you and an annoyed look crosses her face. "Yes? What do you want?"~ */
  IF ~~ THEN REPLY #51108 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51109 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 7.1 8.1 9.1 10.1 12.1 13.0 14.1 15.0
  SAY #51110 /* ~"Fine." She looks irritated.~ */
  IF ~~ THEN REPLY #51111 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #51112 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #51113 /* ~"What can you tell me about this ward?"~ */ GOTO 14
  IF ~~ THEN REPLY #51114 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51115 /* ~"My name is Xanthia." She looks you up and down then frowns. "Is there something else you want?"~ */
  IF ~~ THEN REPLY #51116 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51117 /* ~"I'll be leaving now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #51118 /* ~"There's going to be a fight and I want to see it." She smiles wickedly. "It should be interesting." ~ */
  IF ~~ THEN REPLY #51119 /* ~"A fight?"~ */ GOTO 5
  IF ~~ THEN REPLY #51120 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51121 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #51122 /* ~"Yes. See the three thokola over there?" She points to three hulking creatures with rippling muscles. "They're going to try to kill an abishai." She snorts. "The stupid oafs."~ */
  IF ~~ THEN REPLY #51123 /* ~"I've heard of something called an abishai. What exactly is it?"~ */ GOTO 6
  IF ~~ THEN REPLY #51124 /* ~"The thokola look like they can take care of themselves."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51125 /* ~"It's a Lower Planes creature, a baatezu I think..." She frowns in thought. "In any case, abishai have nasty dispositions, sharp claws, and can cast spells. Very formidable..."~ */
  IF ~~ THEN REPLY #51126 /* ~"The thokola look like they can take care of themselves."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #51127 /* ~"Normally I would say yes, thokola are very powerful warriors..." She smiles slyly and leans in to whisper to you. "However, I know something they don't..."~ */
  IF ~~ THEN REPLY #51128 /* ~"What might that be?"~ */ DO ~SetGlobal("Know_Xanthia_Plan","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #51129 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51130 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51131 /* ~"Abishai can only be hurt by magic." She snickers. "The thokola will be slaughtered, I have no doubt of it." She straightens up and watches the thokola eagerly.~ */
  IF ~~ THEN REPLY #51132 /* ~"How do you know they can only be hurt by magic?"~ */ GOTO 9
  IF ~~ THEN REPLY #51133 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51134 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51135 /* ~She gives you an annoyed look. "My husband is very high up in the Harmonium. The Harmonium guards are trained to deal with creatures such as abishai." She looks away. "That's how I know, my husband told me."~ */
  IF ~~ THEN REPLY #51136 /* ~"Why don't you warn the thokola?"~ */ GOTO 10
  IF ~~ THEN REPLY #51137 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51138 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51139 /* ~"Why should I do that?" She smiles evilly. "I'm the one who suggested the fight."~ */
  IF ~~ THEN REPLY #51140 /* ~"Why?"~ */ GOTO 11
  IF ~~ THEN REPLY #51141 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51142 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51143 /* ~"My husband tries to better his social standing with his underlings by drinking with them in the local taverns. Last evening he forced me to just such an occasion. Those three oafs were there, boasting of their prowess as warriors. It was obvious they were in a drunken stupor. When they decided to leave one of them tripped and fell into the table I was sitting at." She pauses.~ */
  IF ~~ THEN REPLY #51144 /* ~"Go on."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51145 /* ~She frowns angrily. "Most of the drinks at the table spilled into my lap and ruined a very expensive evening gown. So, while the cretin was trying to apologize I whispered to him that I only accepted the apology of a warrior of stature. If he were truly such a warrior, he'd be able to defeat an abishai in hand-to-hand combat."~ */
  IF ~~ THEN REPLY #51146 /* ~"You're going to get them killed because they ruined a dress?"~ */ JOURNAL #67304 /* ~I met a woman named Xanthia in the Lower Ward. She is upset because three thokola ruined her evening gown by spilling drinks on her while they were drunk. She decided to get revenge by not accepting their apology unless they can defeat an abishai in hand-to-hand combat. She says that abishai can only be hurt by magic or magical weapons, neither of which the thokola have. She intends to watch the thokola get slaughtered by the abishai. Should I warn them?~ */ GOTO 13
  IF ~~ THEN REPLY #51147 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51148 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51149 /* ~"You obviously do not understand the intricacies behind this situation." She looks at you like you are an idiot child. "I was embarrassed and humiliated in front of my husband and his underlings!" She looks angry.~ */
  IF ~~ THEN REPLY #51150 /* ~"I see... I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51151 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #51152 /* ~"Nothing..." She looks about with distaste. "Were it not for the fight, I wouldn't be caught dead here."~ */
  IF ~~ THEN REPLY #51153 /* ~"Fight?"~ */ GOTO 5
  IF ~~ THEN REPLY #51154 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51155 /* ~"I must be going now, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 15 // from:
  SAY #51156 /* ~You see Xanthia. She gives you a bored look. "Why must you annoy me again?"~ */
  IF ~~ THEN REPLY #51157 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51158 /* ~"Never mind. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #51159 /* ~You see Xanthia. She gives you a look filled with hatred. "You warned the brute, didn't you?"~ */
  IF ~~ THEN REPLY #51160 /* ~"Yes, I did what I felt was right."~ */ DO ~AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #51161 /* ~"No, I don't know what you're talking about."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51162 /* ~She nods her head slowly. "I will not forget this insult. Good day to you." She turns and leaves.~ */
  IF ~~ THEN REPLY #51163 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #51164 /* ~She smiles at you. "Very well, play your games of deceit. Know you this, berk. I do not forget an insult. Good day to you." She turns and leaves.~ */
  IF ~~ THEN REPLY #51165 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 19 // from:
  SAY #64167 /* ~You see Xanthia. She gives you a bored look as you approach. "Well... I saw you talking to that oaf Thorp. Did you warn him?"~ */
  IF ~  !Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #64168 /* ~"No, I decided to enjoy the show with you."~ */ GOTO 20
  IF ~  Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #68127 /* ~"No, I wouldn't do that after the nice *gift* you gave me."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64169 /* ~Xanthia laughs and then smiles. "How nice... Please feel free to join me." She pauses in thought for a moment and then removes a pouch at her side. "Here... Take this as a reward for not spoiling a ladies fun." She hands you the pouch.~ */
  IF ~~ THEN REPLY #64170 /* ~"Thank you, Xanthia. Farewell."~ */ DO ~SetGlobal("Xanthia_Rewarded","GLOBAL",1)
AddexperienceParty(500)
GivePartyGold(500)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #68128 /* ~Xanthia laughs and then smiles. "How nice..." She turns her attention away from you.~ */
  IF ~~ THEN REPLY #68129 /* ~"Farewell."~ */ EXIT
END
