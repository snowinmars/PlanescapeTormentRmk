// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
GlobalLT("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #1981 /* ~You see a striking red-haired girl dressed in leather armor. Her right arm is covered with a series of interlocking plates that look as if they were taken from the skin of some creature, and a horned shoulder piece protects her left arm. Oddly enough, she has a tail... that is flicking back and forth as you watch. "Pike off."~ [ANA377A] */
  IF ~~ THEN REPLY #1982 /* ~"Greetings."~ */ DO ~SetGlobal("Know_Annah","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #1983 /* ~Pass on by.~ */ DO ~SetGlobal("Know_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1984 /* ~The girl ignores you.~ */
  IF ~~ THEN REPLY #1985 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #1986 /* ~"Can you tell me where I am?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1987 /* ~"I'm looking for someone named Pharod. Do you know where I can find him?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1988 /* ~"I'm missing a journal. Have you seen one?"~ */ GOTO 29
  IF ~~ THEN REPLY #1989 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1990 /* ~The girl sneers, then makes an obscene gesture with her tail. "Pike off, yeh clueless sod."~ */
  IF ~~ THEN REPLY #2119 /* ~"Hey, easy, I just had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2120 /* ~"Watch your mouth, girl. I'm *not* in the mood. Now answer my question. Who are you?"~ */ GOTO 16
  IF ~~ THEN REPLY #2121 /* ~"Uh... Farewell, then."~ */ GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.2 10.3 11.3
  SAY #1991 /* ~"Aye, I might. I might say more if yeh sweeten th'question, aye?" She clicks her tongue and rubs two fingers together. "Jink-jink, aye?"~ */
  IF ~  Global("Know_Jink","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #1992 /* ~"'Jink-jink'?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Know_Jink","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #1993 /* ~"'Jink-jink'?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ EXTERN ~DMORTE~ 39
  IF ~  Global("Know_Jink","GLOBAL",1)
~ THEN REPLY #1994 /* ~"All right... how much?"~ */ GOTO 6
  IF ~~ THEN REPLY #1995 /* ~"Never mind, then. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 4 // from: 3.0 197.1 198.1
  SAY #1996 /* ~The girl stares at you in disbelief and her tail stops moving for a moment. "What are you about? Jink - coin... copper, silver, gold... money, aye?" She raises an eyebrow. "Yeh have it, I might have something yeh want ta hear."~ */
  IF ~~ THEN REPLY #1997 /* ~"All right. How much?"~ */ GOTO 6
  IF ~~ THEN REPLY #1998 /* ~"I doubt you have *anything* I want to hear, but try me. Then I'll decide whether it's worth it."~ */ GOTO 16
  IF ~~ THEN REPLY #1999 /* ~"Never mind. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 5 // from:
  SAY #2002 /* ~"Aye..." She glances at Morte, then shrugs. "What the skull said. Hard coin." ~ */
  IF ~~ THEN REPLY #2003 /* ~"All right. How much?"~ */ GOTO 6
  IF ~~ THEN REPLY #2004 /* ~"I doubt you have *anything* I want to hear, but try me. Then I'll decide whether it's worth it."~ */ GOTO 16
  IF ~~ THEN REPLY #2005 /* ~"Never mind. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0
  SAY #2006 /* ~"How much is it ta yeh t'know, aye?" She studies you, then folds her arms. "C'mon, I haven't got all day, I haven't."~ */
  IF ~  PartyGoldGT(9)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #2008 /* ~"How about ten? That enough?"~ */ GOTO 7
  IF ~  PartyGoldGT(9)
CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #2007 /* ~Turn on the Charm: "How about ten? If your information's good enough, it could be more."~ */ DO ~TakePartyGold(10)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2009 /* ~"How about twenty?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(10)
~ THEN REPLY #2010 /* ~"I don't think I have enough to interest you."~ */ GOTO 14
  IF ~~ THEN REPLY #2011 /* ~"Never mind. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #2012 /* ~"That lump a copper isn't enough ta whet a Fated's appetite. You'll be needing more if you want ta make friends here, 'tard."~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2013 /* ~"How about twenty, then?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(20)
~ THEN REPLY #2014 /* ~"I don't think I have enough to interest you, then."~ */ GOTO 19
  IF ~~ THEN REPLY #2015 /* ~"Never mind, then. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 7.0
  SAY #2016 /* ~"Aye, all right then..." She pockets the money. It's gone so quickly, you have no idea where it vanished to. "Look for him in the Alley spireward from the Mortuary... that's ta the south an' west of the Mortuary, aye?"~ */
  IF ~~ THEN REPLY #2017 /* ~"Very well. I had some other questions..."~ */ GOTO 10
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2018 /* ~"Oddly enough... south and west of the Mortuary is an alley filled with heavily-armed thugs. Know anything about that?"~ */ GOTO 30
  IF ~~ THEN REPLY #2040 /* ~"South and west of the Mortuary? Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 10.2 11.2
  SAY #2019 /* ~"Ye're lost, but ye're about ta find trouble. Make yerself lost somewhere else, bubber."~ */
  IF ~~ THEN REPLY #2020 /* ~"I had some other questions I wanted to ask first..."~ */ GOTO 10
  IF ~~ THEN REPLY #2021 /* ~"Farewell then."~ */ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 2.0 8.0 9.0 12.4 18.1 21.0 22.1 23.0 26.1 29.0 30.2 31.0
  SAY #2022 /* ~"Aye? And what is it yeh want?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2023 /* ~"You know you've got a tail?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2024 /* ~"I can't help but notice that you have a tail."~ */ GOTO 12
  IF ~~ THEN REPLY #2025 /* ~"Can you tell me where I am?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2026 /* ~"I'm looking for someone named Pharod. Do you know where I can find him?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2027 /* ~"You said Pharod was to the south and west of the Mortuary, correct?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2028 /* ~"Oddly enough... south and west of the Mortuary is an alley filled with heavily-armed thugs. Know anything about that?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2029 /* ~"I'm missing a journal. Have you seen one?"~ */ GOTO 29
  IF ~~ THEN REPLY #2030 /* ~"Nothing. Farewell."~ */ GOTO 19
END

IF WEIGHT #3 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
Global("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #2031 /* ~The red-haired girl scowls as you approach, and her tail begins to lash back and forth. "Well? What is it?"~ [ANA238D] */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2032 /* ~"You know you've got a tail?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2033 /* ~"I can't help but notice that you have a tail."~ */ GOTO 12
  IF ~~ THEN REPLY #2034 /* ~"Can you tell me where I am?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2035 /* ~"I'm looking for someone named Pharod. Do you know where I can find him?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2036 /* ~"You said Pharod was to the south and west of the Mortuary, correct?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2037 /* ~"Oddly enough... south and west of the Mortuary is an alley filled with heavily-armed thugs. Know anything about that?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2038 /* ~"I'm missing a journal. Have you seen one?"~ */ GOTO 29
  IF ~~ THEN REPLY #2039 /* ~"Nothing. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 11.0 11.1
  SAY #2041 /* ~"*Do* I now?" The girl looks at her tail. "So I do! An' here I was thinking that it was a trick of me eye. My, aren't yeh a sharp cutter?" She bares her teeth. "Why don't yeh piss off ta whatever hole yeh crawled out of and leave me be?! Me nor me tail is for trade, jig?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2042 /* ~"All right... I was just cur-"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2043 /* ~"Uh, okay... I had some other quest-"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2044 /* ~"Never mind, then. Fare-"~ */ EXTERN ~DMORTE~ 40
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2045 /* ~"Yeah, but *why* do you have a tail?"~ */ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2046 /* ~"Uh, okay... I had some other questions..."~ */ GOTO 10
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2047 /* ~"Never mind... Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2050 /* ~"What are yeh about, yeh blighter?! Say it again!"~ */
  IF ~~ THEN REPLY #2051 /* ~"He didn't say anything... but I'm still curious... *why* do you have a tail?"~ */ GOTO 15
  IF ~~ THEN REPLY #2052 /* ~"Forget him... I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #2053 /* ~"He said that you couldn't make a living selling yourself."~ */ GOTO 22
  IF ~~ THEN REPLY #2054 /* ~"He said, and I disagree, that you couldn't make a living selling yourself."~ */ GOTO 23
  IF ~~ THEN REPLY #2055 /* ~"He said, and I agree, that you couldn't make a living selling yourself."~ */ GOTO 24
  IF ~~ THEN REPLY #2056 /* ~"Nothing. We're going. Farewell."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 2.2 6.3 13.5 15.2 24.2
  SAY #2057 /* ~"Aye, piss off then."~ */
  IF ~~ THEN REPLY #2065 /* ~"I've had enough of your lip, girl... time for you to die."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #2066 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3 13.0
  SAY #2058 /* ~The girl's eyes narrow to slits. "Are yeh *daft?* Can it be that ye're dumber than stone, or mayhap ye're the power o' ignorance? May the dabus brick yeh over and make yeh a street!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2059 /* ~"Look..."~ */ EXTERN ~DMORTE~ 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2060 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2061 /* ~"Farewell, then."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 2.1 4.1 5.1 13.1 15.1 24.1 27.0 28.0 30.0 30.1
  SAY #2062 /* ~"Bar that! I have nothing more ta say t'yeh, berk! Get!"~ */
  IF ~~ THEN REPLY #2063 /* ~"You better watch your tongue, girl, or it's coming off. You better remember that if we speak again."~ */ GOTO 19
  IF ~~ THEN REPLY #2064 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2070 /* ~"Yeh better latch yer bone-box, yeh foul-mouthed mimir, 'fore I splits it from yer jaw, jig?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 42
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2078 /* ~"Aye, that's right. Leash yer mimir, 'tard, or I'll bury him with his body, jig?"~ */
  IF ~~ THEN REPLY #2086 /* ~"Mimir? What are you talking about?"~ */ GOTO 20
  IF ~~ THEN REPLY #2087 /* ~"Fine. Look, I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2088 /* ~"Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 3.3 4.2 5.2 6.4 7.1 7.2 9.1 10.7 11.7 12.5 16.0 18.2 21.1 22.2 24.3 25.2 25.3 26.2 27.1 28.1 29.1 30.3 31.2
  SAY #2081 /* ~"Aye, pike off ta wherever yeh came from, then."~ */
  IF ~~ THEN REPLY #2082 /* ~"Farewell to you, too."~ */ EXIT
  IF ~~ THEN REPLY #2083 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #2084 /* ~"Aye, mimir! What, the gulf between yer ears so wide me words echo? Eejit!"~ */
  IF ~~ THEN REPLY #2085 /* ~"You still haven't answered my question. What's a mimir?"~ */ EXTERN ~DMORTE~ 43
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2089 /* ~She glances at Morte, then you, then sneers. "I guess I know which o' yeh has the brains, eh?"~ */
  IF ~~ THEN REPLY #2090 /* ~"Yeah, yeah. Look, I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2091 /* ~"Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 13.2
  SAY #2092 /* ~"Oh, aye? It's good I sell corpses then, aye? Yeh look ready for the Dustman's furnace, skull."~ */
  IF ~~ THEN REPLY #2095 /* ~"Sell corpses?"~ */ GOTO 25
  IF ~~ THEN REPLY #2096 /* ~"I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2097 /* ~"Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 23 // from: 13.3
  SAY #2093 /* ~"What's all this now? Yeh be playing stern hardhead, friendly hardhead with me?" She sneers. "Pike off, yeh lecherous filth."~ */
  IF ~~ THEN REPLY #2098 /* ~"Not yet... I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2099 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.4
  SAY #2094 /* ~"Oh, aye? It's good I sell corpses then, aye? Yeh look ready for the Dustman's furnace, the both of yeh." Her tail begins to lash back and forth. "Don't make me put yeh in the dead-book."~ */
  IF ~~ THEN REPLY #2101 /* ~"Sell corpses?"~ */ GOTO 25
  IF ~~ THEN REPLY #2102 /* ~"Calm down, girl. I had some other questions, then we'll leave you be..."~ */ GOTO 16
  IF ~~ THEN REPLY #2103 /* ~"This is going nowhere. Farewell."~ */ GOTO 14
  IF ~~ THEN REPLY #2104 /* ~Leave.~ */ GOTO 19
END

IF ~~ THEN BEGIN 25 // from: 22.0 24.0
  SAY #2100 /* ~"Aye, the Dustman pay a lil' jink for anyone with a will ta scrape deaders off the street and bring 'em ta the Mortuary. This is me territory, though, so don't yeh even think about fishing for deaders here, right?"~ */
  IF ~~ THEN REPLY #2105 /* ~"What do the Dustmen want with the dead?"~ */ GOTO 26
  IF ~~ THEN REPLY #2106 /* ~"Your territory?"~ */ GOTO 28
  IF ~~ THEN REPLY #2107 /* ~"Fine."~ */ GOTO 19
  IF ~~ THEN REPLY #2108 /* ~"Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #2109 /* ~"Ta bury 'em proper like. Send them all ta their right Plane and make sure that everything in the multiverse be nice and tidy."~ */
  IF ~~ THEN REPLY #2111 /* ~"'Plane'?"~ */ GOTO 27
  IF ~~ THEN REPLY #2112 /* ~"I see. Look, I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2113 /* ~"Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2110 /* ~"Aye, *Plane!* Be the gulf between yer ears so wide me words echo? Pah! Yeh ask too many questions, scab. Pike off and nettle someone else wit' yer questions."~ */
  IF ~~ THEN REPLY #2114 /* ~"I just had one more question..."~ */ GOTO 16
  IF ~~ THEN REPLY #2115 /* ~"All right then. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #2116 /* ~"Aye, *my* territory! What, is the gulf between yer ears so wide that me words echo? Pah! Yeh ask too many questions, scab. Pike off and nettle someone else wit' yer questions."~ */
  IF ~~ THEN REPLY #2117 /* ~"I just had one more question..."~ */ GOTO 16
  IF ~~ THEN REPLY #2118 /* ~"All right then. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 29 // from: 1.3 10.6 11.6
  SAY #2122 /* ~She looks at you strangely. "Nay... I've seen nothing like that, I haven't."~ */
  IF ~~ THEN REPLY #2123 /* ~"All right. I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2124 /* ~"Thanks anyway. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.5 11.5 31.1
  SAY #2125 /* ~"Oh, aye? Well, maybe yeh'd be best asking them where ol' stutter-crutch is."~ */
  IF ~~ THEN REPLY #2126 /* ~Truth: "Enough of your lies. Tell me where Pharod is, girl, or you'll soon number amongst the city's dead."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Annah_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2127 /* ~Bluff: "Enough of your lies. Tell me where Pharod is, girl, or you'll soon number amongst the city's dead."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2128 /* ~"Maybe I will. Look, I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2071 /* ~"Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 10.4 11.4
  SAY #2129 /* ~"Aye..." She studies you. "I did. Have yeh forgotten already?"~ */
  IF ~~ THEN REPLY #2130 /* ~"No, but I did have some questions..."~ */ GOTO 10
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2131 /* ~"No, but I was wondering if *you* had... you see, south and west of the Mortuary is an alley filled with heavily-armed thugs. Know anything about that?"~ */ GOTO 30
  IF ~~ THEN REPLY #2132 /* ~"Not this time. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 32 // from:
  SAY #2359 /* ~"I'd leave be, cutter, no sense bandying words with a gith that don't want ta make talk, aye? Let's go."~ */
  IF ~  Global("Know_Gith","GLOBAL",0)
~ THEN REPLY #9023 /* ~"Gith?"~ */ DO ~SetGlobal("Know_Gith","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Know_Gith","GLOBAL",0)
~ THEN REPLY #9024 /* ~"Gith?"~ */ GOTO 74
  IF ~~ THEN REPLY #9025 /* ~"I'm not ready to leave just yet. I'm going to ask him some questions first..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9026 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2365 /* ~"Never yeh mind... let's just go, aye?"~ */
  IF ~~ THEN EXTERN ~DGITH~ 7
END

IF ~~ THEN BEGIN 34 // from:
  SAY #6807 /* ~"Eh..." Annah looks at you oddly. "He's a dabus, he is."~ */
  IF ~~ THEN REPLY #6961 /* ~"What's a 'dabus'?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #6811 /* ~Annah's voice drops. "Dabus is one o' *Her* kin - they take care o' the city, fixin' it and tearin' it down and buildin' it back up n' all. They talk in symbol-puzzles in the air - yeh gotta piece 'em together t'figure out the chant." Annah looks irritated. "Gives yer head pains, so it does."~ */
  IF ~~ THEN REPLY #6962 /* ~"'Her' kin? Who?"~ */ GOTO 36
  IF ~~ THEN REPLY #6963 /* ~"I see."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #6813 /* ~"The Lady of Pain." Annah makes a semicircle in the air in front of her. "They work for her, an' she protects them. Don't be mucking about wit' em, or yeh might draw her gaze."~ */
  IF ~~ THEN REPLY #6964 /* ~"Can you tell me about the Lady of Pain?"~ */ GOTO 37
  IF ~~ THEN REPLY #6965 /* ~"I see."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #6814 /* ~"Hsssst!" Annah draws a finger across her throat. "Don't yeh be rattlin' yer bone-box 'bout her. She has ears *everywhere,* so she does, so don't be bandyin' her name 'bout, aye?"~ */
  IF ~~ THEN REPLY #6966 /* ~"Oh."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6967 /* ~"All right, all right."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6815 /* ~She pauses for a moment. "Aye... I can."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6968 /* ~"Will you?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6970 /* ~"Will you?"~ */ GOTO 39
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6971 /* ~"Then do it."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6972 /* ~"Then do it."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 39
  IF ~~ THEN REPLY #6973 /* ~"Never mind. Let's just leave."~ */ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.3
  SAY #6818 /* ~Annah shakes her head. "Nay, I'm not about ta walk with yeh into the Lady's shadow, so's I'm not. Let's not linger, aye? Nothin' ta be gained except drawing the Lady's gaze by talking ta her kin."~ */
  IF ~~ THEN REPLY #6975 /* ~"I see."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6974 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.2 41.0 44.0 45.1 46.1 48.1
  SAY #6822 /* ~Annah nods. The dabus continues to stare at the two of you, arms folded in its sleeves.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6976 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6977 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6978 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6979 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6980 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6981 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #6982 /* ~"Ask him to tell us about the Lady of Pain."~ */ GOTO 45
  IF ~~ THEN REPLY #6983 /* ~"Ask him to tell us about Fell."~ */ GOTO 48
  IF ~~ THEN REPLY #6984 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 41 // from:
  SAY #6825 /* ~"He jest said he was one of the dabus." She shrugs. "They don't have names."~ */
  IF ~~ THEN REPLY #6985 /* ~"Can you ask it another question?"~ */ GOTO 40
  IF ~~ THEN REPLY #6986 /* ~"That's all I wanted to know. Let's get out of here."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 42 // from:
  SAY #6826 /* ~"He jest said he was one of the dabus." She shrugs. "They don't have names."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 115
END

IF ~~ THEN BEGIN 43 // from:
  SAY #6828 /* ~"Well, this one dinnae give 'is name, now *did* he, skull?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 116
END

IF ~~ THEN BEGIN 44 // from:
  SAY #6835 /* ~She shrugs. "He says he's doin' his work. Y'know - tendin' ta th' city an' all."~ */
  IF ~~ THEN REPLY #6987 /* ~"Can you ask it another question?"~ */ GOTO 40
  IF ~~ THEN REPLY #6988 /* ~"That's all I wanted to know. Let's get out of here."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 45 // from: 40.6
  SAY #6840 /* ~Annah shakes her head. "Nay, I'm not about ta walk with yeh into the Lady's shadow, so's I'm not. Yeh'll only draw the Lady's gaze if yeh rattle yer trap about her ta her kin."~ */
  IF ~~ THEN REPLY #6989 /* ~"Look, just ask it about the Lady, all right?"~ */ GOTO 46
  IF ~~ THEN REPLY #6990 /* ~"All right. Could you ask them another question for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6991 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0
  SAY #6845 /* ~Annah shakes her head. "Nay, I won't."~ */
  IF ~~ THEN REPLY #6992 /* ~"Look, *do* it. I'm warning you."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 47
  IF ~~ THEN REPLY #6993 /* ~"All right. Could you ask them another question for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6994 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #6848 /* ~Annah crosses her arms, and her tail begins to lash back and forth.~ */
  IF ~~ THEN REPLY #6995 /* ~"Let me try then..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6996 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 48 // from: 40.7
  SAY #6851 /* ~"Nay, I won't be askin' Fell's ol' kin 'bout him, so I won't. It's bad blood, an' it don't do nobody no good ta bring up such things."~ */
  IF ~~ THEN REPLY #6997 /* ~"Look, just *ask* the damn question, all right?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 46
  IF ~~ THEN REPLY #6998 /* ~"Can you ask it another question for me?"~ */ GOTO 40
  IF ~~ THEN REPLY #6999 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1855 /* ~Annah bristles as you are about to walk away with the woman. "Are yeh *daft*... or jest an eejt?!" Her tail lashes back and forth, then she whirls on the harlot. "Hsst!" She brandishes her punch daggers at the startled harlot. "Git, yeh Sig whore!"~ */
  IF ~~ THEN REPLY #7469 /* ~"Whoa! Calm down, Annah!"~ */ GOTO 50
  IF ~~ THEN REPLY #7470 /* ~"Put those damned blades away!"~ */ GOTO 50
  IF ~~ THEN REPLY #7471 /* ~Watch, see what happens.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 53.0 53.1
  SAY #1856 /* ~She whirls on you. "An' yeh, yeh soddin' piker - yeh'd best stop messin' about else I'll be trimmin' yer stem, aye?"~ */
  IF ~~ THEN REPLY #7472 /* ~"'Trimmin' my stem'? Do I have to pay for that?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7473 /* ~"Stop threatening the woman, or I'll trim *your* tail, understand?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7474 /* ~"I didn't ask for your views on the matter, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7475 /* ~"All right, all right... calm down."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3
  SAY #7183 /* ~Annah simmers down slightly, but her tail is still lashing back and forth. "Yeh'd best watch yerself if yeh want ta stay breathin' an' in one piece."~ */
  IF ~~ THEN REPLY #7476 /* ~"Don't *threaten* me, Annah. You're the one with one life, understand?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7477 /* ~"I didn't ask for your views on the matter, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7478 /* ~"All right, all right... just calm down. Your fiend blood's gonna boil over."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 50.0 51.0 51.1 51.2
  SAY #7184 /* ~Annah makes a gesture with her tail... evidently meant to be obscene.~ */
  IF ~~ THEN EXTERN ~DHARLOTN~ 35
END

IF ~~ THEN BEGIN 53 // from: 49.2
  SAY #7185 /* ~Annah nicks the woman with the edge of her blades, drawing a thin line of blood. "Yeh're marked, yeh are," she hisses. The woman looks paralyzed with fear, unable to move. ~ */
  IF ~~ THEN REPLY #7480 /* ~"Heh. Nice work."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Harlot_2","GLOBALLaw",-1)
~ GOTO 50
  IF ~~ THEN REPLY #7481 /* ~"Calm down, Annah..."~ */ GOTO 50
END

IF ~~ THEN BEGIN 54 // from:
  SAY #1884 /* ~Annah suddenly gives a hiss as you turn away, and you see the drunk woman take a step back, frightened.~ */
  IF ~~ THEN REPLY #7598 /* ~"What's the matter?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #1885 /* ~Annah nods at the woman, then punch daggers sprout from Annah's hands. "This witch's peeled yeh, she has." One of Annah's blades nestles itself under the woman's throat. "Yeh might be short of jink after this Sig whore was rubbin' herself on yeh."~ */
  IF ~~ THEN REPLY #7599 /* ~"What do you-?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #1886 /* ~The drunk woman looks at Annah, then at you, and shakes her head, frightened. "I didn't steal anything, cutter! She's wrong!"~ */
  IF ~~ THEN REPLY #7600 /* ~"Uh... are you sure, Annah?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 57
  IF ~~ THEN REPLY #7601 /* ~"Put away those damned blades before *I* lose my temper, all right?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7602 /* ~"Sorry, woman, I'd believe the tiefling over you any day. Give the money back."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #7603 /* ~"Let her go, Annah. She's not worth it."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #1887 /* ~"Eh?" Annah snarls, and her tail begins to lash. "Am I *sure?!*" Her blade pokes deeper into the woman's throat. "Aye... I'm sure." Her eyes narrow as she looks at you. "Yeh don't believe me?" She spits. "No matter. I'll gut her, take her jink meself."~ */
  IF ~~ THEN REPLY #7604 /* ~"Put away those damned blades before *I* lose my temper, all right?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7605 /* ~"Let her go, Annah. She's not worth it."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.1 56.3 57.0 57.1
  SAY #1888 /* ~"Eh?" Annah hisses like a cat. "Are yeh *daft?!* She's peeled yeh, she has."~ */
  IF ~~ THEN REPLY #7606 /* ~"I won't let you hurt her unless you can prove she's done something wrong."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_Harlot_1","GLOBALLaw",1)
~ GOTO 61
  IF ~~ THEN REPLY #7607 /* ~"Last time. Put down the blades, let her go."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
  IF ~~ THEN REPLY #7608 /* ~"So what if she has? She's not worth it."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY #1889 /* ~The woman pauses for a moment, nods, then slowly reaches up and peels back her sleeve to reveal a small bag tied to her wrist. Annah slices it off and pockets it. "Yeh'd best git." She then pushes the woman away. "Hssst! Git!"~ */
  IF ~~ THEN REPLY #7609 /* ~"Get out of here, woman. We better not see you around here again."~ */ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 60 // from: 58.1 58.2 61.1
  SAY #1890 /* ~Annah is silent for a long time, then withdraws the blade and steps back. She then gives a hiss and spits at the woman's feet. "Hssst! Git!"~ */
  IF ~~ THEN REPLY #7610 /* ~"Woman, you'd better leave."~ */ EXTERN ~DHARLOTD~ 27
END

IF ~~ THEN BEGIN 61 // from: 58.0
  SAY #1891 /* ~Annah snarls, then slashes her punch dagger up in an arc... cutting through the sleeves of the woman's dress and revealing a bag tied the woman's wrist. It looks like it is kept there to palm money quickly.~ */
  IF ~~ THEN REPLY #7611 /* ~"Looks like you were right, Annah. All right, woman, return what you stole."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #7612 /* ~"Doesn't matter. Forget about it, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #1892 /* ~The woman nods, then slowly reaches up and unties the small bag from her wrist. Annah snatches it away and pockets it. ~ */
  IF ~~ THEN REPLY #7613 /* ~"Get out of here, woman. I don't want to see you again."~ */ DO ~GivePartyGold(100)
GiveGoldForce(38)
~ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 63 // from:
  SAY #7701 /* ~As you turn away, Annah suddenly steps close to you and rubs up against you.~ */
  IF ~~ THEN REPLY #7702 /* ~"What are you doing?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #7703 /* ~Annah nods back at the man who is still standing around, staring at the buildings. "That Sig bastard peeled yeh, he did." Annah smiles. "Yeh'd best take care when rattlin' yeh bone-box or yeh might be short of jink at the end."~ */
  IF ~~ THEN REPLY #7704 /* ~"What are you talking about?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #7705 /* ~She holds out a handful of coins, which she hands to you. "All yeh jink, back ta its owner, aye?" She throws another glance back. "Ee's a piss-poor blighter, he is, cannae pick a berk's pocket without ringin' alla bells o' Sigil. Ee peeled yeh, I peeled it back." She smiles. "Aye?"~ */
  IF ~~ THEN REPLY #7706 /* ~"Uh... are you sure he stole from me, Annah?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 66
  IF ~~ THEN REPLY #7707 /* ~"Hey... thanks."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #7708 /* ~"Eh?" Annah frowns, and her tail begins to lash. "Am I *sure?!*" She steps back from you. "Yeh don't believe me?" She spits. "No matter."~ */
  IF ~~ THEN REPLY #7709 /* ~"It matters to me. If that money isn't ours..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_3","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 67
  IF ~~ THEN REPLY #7710 /* ~"Never mind, then."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #7711 /* ~"Eh?" Annah hisses like a cat. "Are yeh *daft?!* He peeled yeh, he did. If yeh were too blind ta see it, then yeh deserved it, yeh did!"~ */
  IF ~~ THEN REPLY #7712 /* ~"Can you prove it?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_4","GLOBALLaw",1)
TakePartyGold(5)
~ GOTO 68
  IF ~~ THEN REPLY #7713 /* ~"Never mind, then."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #7714 /* ~Annah is silent for a time, then she snatches the money from your palm and hurls it. You watch the coins scatter into the street, some of them splashing into puddles, others falling into gutters and drains. "Let him have it, then!" Annah spits at your feet. "Yeh dinnae deserve ta keep yer jink *anyway!*"~ */
  IF ~~ THEN REPLY #7715 /* ~"Keep your voice down. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #7716 /* ~Annah nods and gives an evil smile. "Aye, it was my pleasure, so it was."~ */
  IF ~~ THEN REPLY #7717 /* ~"All right. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #7822 /* ~"Nay!" Annah looks terrified. "Nay, don't be rattlin' yer bone-box wit one o' 'em! Those fiends'll gut yeh alive!"~ */
  IF ~~ THEN REPLY #7826 /* ~"I wanted to ask it some questions..."~ */ GOTO 71
  IF ~~ THEN REPLY #7827 /* ~"All right, never mind, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #7829 /* ~Annah shakes her head. "It'll gut yeh fer sure, it will."~ */
  IF ~~ THEN REPLY #7830 /* ~"I'll risk it."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7831 /* ~Leave the creature alone.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #7832 /* ~"Are yeh *daft?!*" Annah breaks in, her tail lashing back and forth. "Have yeh heard nothing I've said t'yeh?! Don't be rattlin' yer bone-box with fiends!"~ */
  IF ~~ THEN REPLY #7833 /* ~"I'll risk it."~ */ GOTO 73
  IF ~~ THEN REPLY #7834 /* ~"All right, then. I'll leave it alone... let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #7835 /* ~"Yeh're a right royal eejit, yeh are!" Annah spits. She looks furious. "Yeh'll run out of lives soon enough and then I'll take me leave of yeh, I will!"~ */
  IF ~~ THEN REPLY #7836 /* ~"And I'll be the more blessed for it. Now let me talk."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7837 /* ~"I'll just be a moment. Calm down."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7838 /* ~"All right, then. I'll leave it alone... let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 32.0 32.1
  SAY #2360 /* ~"Aye, a gith." She doesn't seem to want to discuss it while the gith is staring at the both of you. "Let's give this place the laugh, aye?"~ */
  IF ~~ THEN REPLY #9027 /* ~"I'm not ready to leave just yet. I'm going to ask him some questions first..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9028 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #9801 /* ~She makes to say something, but you give her a hard look before she can protest. She sneers at you, arms crossed and tail lashing.~ */
  IF ~~ THEN REPLY #9835 /* ~Shake him to get his attention.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9837 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #9802 /* ~She simply pretends not to hear you, poking about the man's lice-ridden clothes as he stumbles about. Satisfied he's penniless, she gives him a little push and turns away. "Huh! He's got nothin' on him, anyway. Pikin' bubbers..."~ */
  IF ~~ THEN REPLY #9840 /* ~Shake him to get his attention.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9842 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #9803 /* ~Annah pokes about the man's lice-ridden clothes as he stumbles about. Satisfied he's penniless, she gives him a little push and turns away. "Huh! Nothin' on him, the pikin' bubber..."~ */
  IF ~~ THEN REPLY #9844 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #10078 /* ~"Ha! Yeh're as obvious as teats on a donkey! Yeh breed amateurs in this town!" She turns to you. "Yeh're right ta watch this one. He's casin' the joint ta peel some sod."~ */
  IF ~~ THEN REPLY #10079 /* ~"I do believe you're right, Annah. Maybe we should do something about this." ~ */ EXTERN ~DCSTCROG~ 4
END

IF ~~ THEN BEGIN 79 // from:
  SAY #11267 /* ~Annah retorts angrily: "Aye, and the Abyss be the best place for him, but he toils by free will. He's got choice, demonling, which is more'n I can say fer a spirit construct like yerself!"~ */
  IF ~~ THEN EXTERN ~DILQUIXT~ 20
END

IF ~~ THEN BEGIN 80 // from:
  SAY #11270 /* ~Every muscle in her face tightens, and she explodes: "D'yeh honestly mean t' tell me that yeh're going ta let this... this... this pitspawn tell yeh how t' live? Aye, I'll still meself, and I'll watch as it eats yer soul, yeh stupid berk!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11271 /* ~"Go ahead, then. Ilquix, I had some other questions..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11272 /* ~"Go ahead, then. Ilquix, I had some other questions..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY #11667 /* ~She smiles tightly. "Aye, fiend, yeh'll find that we believe in *true* freedom here. None'll keep from speakin' as I truly feel." Ilquix sneers for a moment, and then composes its face into an urbane mask once again.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11668 /* ~"Go ahead, then. Ilquix, I had some other questions..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11669 /* ~"Go ahead, then. Ilquix, I had some other questions..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 82 // from:
  SAY #13084 /* ~"I can speak for meself, yeh know! I'm Annah, as if it's any business of yers." Annah crosses her arms with a *hmph.* Nalls only smiles and turns her good eye back to you.~ */
  IF ~~ THEN REPLY #13231 /* ~"Watch that tongue of yours, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 87
  IF ~~ THEN REPLY #13232 /* ~"Never mind her, Nalls. I had some questions..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13233 /* ~"I had some questions, Nalls..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13234 /* ~"Never mind. Farewell."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 83 // from:
  SAY #13085 /* ~"I can speak for meself, yeh know! I'm Annah, as if it's any business of yers. And as fer *this* lout," she throws you a fiery glance, "I'm not as yet sure if he's any friend o' mine!" Nalls smiles slightly before turning her good eye back to you.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13235 /* ~Truth: "Annah... my apologies if I've been less than a friend. I hope you can forgive me any offense I've given you so far."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13236 /* ~Truth: "Annah... my apologies if I've been less than a friend. I hope you can forgive me any offense I've given you so far."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13237 /* ~Lie: "Annah... my apologies if I've been less than a friend. I hope you can forgive me any offense I've given you so far."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13238 /* ~Lie: "Annah... my apologies if I've been less than a friend. I hope you can forgive me any offense I've given you so far."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13239 /* ~"Never mind her, Nalls. I had some questions..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13240 /* ~"I had some questions, Nalls..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13241 /* ~"Never mind. Farewell."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 84 // from: 83.0 87.0
  SAY #13086 /* ~Annah's tail suddenly stops lashing, and she turns her head to look at you - her eyes are wide with surprise. She seems as if she's going to speak... and then looks away, simply nodding. The back of her neck seems flushed - you wonder if she's blushing.~ */
  IF ~~ THEN REPLY #13242 /* ~"Nalls... I had some questions..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13243 /* ~"Never mind me, Nalls. Farewell."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 85 // from: 83.1 83.2 87.1 87.2
  SAY #13087 /* ~Annah's tail stops its lashing. She doesn't speak, but merely nods.~ */
  IF ~~ THEN REPLY #13244 /* ~"Nalls... I had some questions."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13245 /* ~"Never mind me, Nalls. Farewell."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 86 // from: 83.3 87.3
  SAY #13088 /* ~Annah's eyes flash like green flames, but she doesn't say a word - she merely scowls at you.~ */
  IF ~~ THEN REPLY #13246 /* ~"Er... Nalls, I had some questions..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13247 /* ~"Never mind me, Nalls. Farewell."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 87 // from: 82.0
  SAY #13089 /* ~Annah's whole body tenses up for a moment - she doesn't speak, but her anger at your words seems to fill the air around her. You expect the worst - but she remains silent, giving you only a disgusted sneer.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13248 /* ~Truth: "Annah... my apologies if I've offended you. I misspoke, and hope you can forgive me... for friendship's sake, if nothing else."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13249 /* ~Truth: "Annah... my apologies if I've offended you. I misspoke, and hope you can forgive me... for friendship's sake, if nothing else."~ */ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13250 /* ~Lie: "Annah... my apologies if I've offended you. I misspoke, and hope you can forgive me... for friendship's sake, if nothing else."~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13251 /* ~Lie: "Annah... my apologies if I've offended you. I misspoke, and hope you can forgive me... for friendship's sake, if nothing else."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13252 /* ~"Don't mind her, Nalls. I had some questions..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13253 /* ~"I had some questions, Nalls."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13254 /* ~"Never mind, Nalls. Farewell."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 88 // from:
  SAY #13090 /* ~Annah tilts her head and frowns at Nalls. "Why doncha' not concern yerself with me an' what I know, an' answer the man's questions?" She gives Nalls a smirk for good measure.~ */
  IF ~~ THEN EXTERN ~DIRONNA~ 29
END

IF ~~ THEN BEGIN 89 // from:
  SAY #13751 /* ~As you are about to speak, Annah grabs you and hisses. "Are yeh *daft?!* 'Nare another word to that one! One of the Starved Dogs he is." She lowers her voice. "A Chaosmen, barmy, dangerous! Thick as flies, they are, and more's likely about."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13780 /* ~"Starved Dog? What are you talking about?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13781 /* ~"Starved Dogs? Who are they again?"~ */ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13782 /* ~"I'm still going to speak to him anyway."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13783 /* ~"Maybe you're right. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #13752 /* ~"A Hiver gang they are, and Chaosmen ta boot!" She shakes her head, then pokes you in the back with her tail. "Steer clear and watch yer back with them, yeh should. I've tangled with them, and their bite is worse than their bark, it is."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13784 /* ~"Chaosmen?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 91
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13785 /* ~"Who are the Chaosmen again?"~ */ GOTO 91
  IF ~~ THEN REPLY #13786 /* ~"I'm still going to speak to him anyway."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13787 /* ~"Thought I might be able to learn something from him. Never mind, let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1
  SAY #13753 /* ~"They're a faction they are, like the Dusties and the Guvners and the Sensates... 'cept they don't have any rules or beliefs..." Annah makes a corkscrew with her tail for emphasis. "They're just cackled, cracked, barmy, aye?" She chews it over for a moment. "Some call 'em Xaositects, but it's no matter to them, it isn't."~ */
  IF ~~ THEN REPLY #13788 /* ~"How do they get new members?"~ */ GOTO 92
  IF ~~ THEN REPLY #13789 /* ~"I'm still going to speak to him anyway."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13790 /* ~"I see. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #13754 /* ~Annah shrugs. "I donnae. They jest do. Flies to piles, as I sees it."~ */
  IF ~~ THEN REPLY #13791 /* ~"I think I'll speak to him anyway."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13792 /* ~"I see. Thanks for the information."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #13831 /* ~As you are about to speak, Annah grabs you and hisses. "Are yeh *daft?!* 'Nare another word to that one! One of the Starved Dogs he is." She lowers her voice. "A Chaosmen, barmy, dangerous! Thick as flies, they are, and more's likely about."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13992 /* ~"Starved Dog? What are you talking about?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13993 /* ~"Starved Dogs? Who are they again?"~ */ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13994 /* ~"I'm still going to speak to him anyway."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13995 /* ~"Maybe you're right. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1
  SAY #13832 /* ~"A Hiver gang they are, and Chaosmen ta boot!" She shakes her head, then pokes you in the back with her tail. "Steer clear and watch yer back with them, yeh should. I've tangled with them, and their bite is worse than their bark, it is."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13996 /* ~"Chaosmen?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 95
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13997 /* ~"Who are the Chaosmen again?"~ */ GOTO 95
  IF ~~ THEN REPLY #13998 /* ~"I'm still going to speak to him anyway."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13999 /* ~"Thought I might be able to learn something from him. Never mind, let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 94.1
  SAY #13833 /* ~"They're a faction they are, like the Dusties and the Guvners and the Sensates... 'cept they don't have any rules or beliefs..." Annah makes a corkscrew with her tail for emphasis. "They're just cackled, cracked, barmy, aye?" She chews it over for a moment. "Some call 'em Xaositects, but it's no matter to them, it isn't."~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #14000 /* ~"How do they get new members?"~ */ GOTO 96
  IF ~~ THEN REPLY #14001 /* ~"I'm still going to speak to him anyway."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14002 /* ~"I see. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #13834 /* ~Annah shrugs. "I donnae. They jest do. Flies to piles, as I sees it."~ */
  IF ~~ THEN REPLY #14003 /* ~"I think I'll speak to him anyway."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14004 /* ~"I see. Thanks for the information."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #15337 /* ~Annah yanks at your shoulder before you can greet the man. "Hold, there... I done heard o' this blood. New ta the Hive, an' fancies himself a swordsman, he does. Slain every cutter's who's fought him, too. Yeh'd do well ta steer clear o' the likes o' him."~ */
  IF ~~ THEN REPLY #15486 /* ~"I'll speak to him just the same."~ */ GOTO 98
  IF ~~ THEN REPLY #15487 /* ~"I'll avoid him, then."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #15338 /* ~"Heh! Fine! See if I care! Just don't expect me ta be waitin' fer yeh when yeh come to, now!"~ */
  IF ~~ THEN REPLY #15488 /* ~Speak to the man.~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ EXTERN ~DADYZOEL~ 1
  IF ~~ THEN REPLY #15489 /* ~"Perhaps you're right, Annah. I'll avoid him."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #16621 /* ~"What? Yeh can't be serious, now!"~ */
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16902 /* ~"Yes, I am. Can you help?"~ */ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16903 /* ~"I am, Annah. I'd be grateful if you could just see to give them a fair thought or two... as a favor to me, if for no other reason."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #16622 /* ~"Heh! Not likely! Get someone else ta mope about for yer pikin' trees. Yeh're daft ta be thinkin' I'd waste me time even thinkin' o' such things. Daft, I tell yeh!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16904 /* ~"Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16905 /* ~"Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16906 /* ~"Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16907 /* ~"Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16908 /* ~"Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16909 /* ~"Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16910 /* ~"Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16911 /* ~"Fine. I had some questions, Mourns..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16912 /* ~"Never mind, then. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #16623 /* ~Her smirk at last gives way to a smile. "Ah, ta Baator with it! If yeh're so soddin' caught up in it all, why not? Sure, I'll 'care' about yer trees, cutter. But yeh owe me for me time, yeh do!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16913 /* ~"Thanks. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16914 /* ~"Thanks. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16915 /* ~"Thanks. Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16916 /* ~"Thanks. Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16917 /* ~"Thanks. Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16918 /* ~"Thanks. Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16919 /* ~"Thanks. Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16920 /* ~"Thanks. I had some questions, Mourns..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16921 /* ~"Thanks, Annah. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #17207 /* ~Annah pokes you in the ribs before you can approach the man. "I wouldn't waste me time talkin' ta that old ghoul, if I was yeh."~ */
  IF ~~ THEN REPLY #17348 /* ~"Well, you're not, and I'm speaking to him."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17349 /* ~"I see. I'd best talk to him just the same, though."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17350 /* ~"Why not? Who is he?"~ */ GOTO 103
  IF ~~ THEN REPLY #17351 /* ~"I'll stay away, then."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.2
  SAY #17210 /* ~Annah speaks as if recounting an old legend: "Ol' 'Marrow-Friend' is as barmy as they come, he is. He was one o' the oldest an' worst Collectors in the Square. Barely able to scrounge enough jink to eat from collectin' bodies, he went 'hungry-mad' some years past an' took ta eatin' corpses ta get by. Now the other Collectors shun an' ridicule him, throwin' dung at him whenever they get the chance. He just stares at 'em... imaginin' what a meal they'd make, if I had ta guess."~ */
  IF ~~ THEN REPLY #17352 /* ~"Hmm. I'll speak with him, just in case."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17354 /* ~"I'll stay away, then."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #17426 /* ~"Aye, he's sure; didn't yeh hear the man?" Annah rolls her eyes. "Fer the love o' the powers, why don't yeh pry yerself off the sod fer a bit? Yeh're embarrasin' yerself, yeh are."~ */
  IF ~~ THEN REPLY #17427 /* ~Let the merchant respond to Annah.~ */ EXTERN ~D300MER4~ 11
  IF ~~ THEN REPLY #17428 /* ~"Annah... be quiet."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17466 /* ~"She's right; there's nothing I need. My questions..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17467 /* ~"She's right; there's nothing I need. Farewell."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #17429 /* ~Annah looks horrified, then furious: "*Jealous?!* Bar that! Watch yer tongue, woman, or I'll split it from yer bone-box an' bury it an' yer corpse on opposite ends o' Sigil, I will!" The merchant, clearly frightened, steps back a ways. "And yeh!" she turns to you, eyes flashing with rage, and makes a disgusted sneer. "Not a *word!* Don't go gettin' any ideas from this addle-coved chit's blatherin', or yeh'll be good an' sorry!"~ */
  IF ~~ THEN REPLY #17468 /* ~"Annah... be quiet."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17469 /* ~"She's right; there's nothing I need. My questions..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17470 /* ~"She's right; there's nothing I need. Farewell."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 106 // from: 104.1 105.0
  SAY #17430 /* ~"Ha! Not likely! I'll speak when I want, I will, an' don't yeh *ever* forget it! An' don't think I'll be forgettin' *this,* either, yeh mussed-up leather-head."~ */
  IF ~~ THEN REPLY #17471 /* ~"Fine, Annah. She's right, merchant; there's nothing I need. My questions..."~ */ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17472 /* ~"Fine, Annah. She's right, merchant; there's nothing I need. Farewell."~ */ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 107 // from:
  SAY #17534 /* ~"Huh!" Annah shakes her head, rolling her eyes at you. "I think yeh're an idjit fer even considerin' it! But they *are* kind a' cute... it's yer jink, berk. Yeh got ta decide fer yerself, yeh do."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17589 /* ~"Morte? What do you think?"~ */ EXTERN ~DMORTE~ 187
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17590 /* ~"I'll take one, merchant."~ */ DO ~TakePartyGold(40)
~ EXTERN ~D300MER5~ 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17591 /* ~"I'd best not spend the copper. I had some questions, merchant..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17592 /* ~"I'll keep my copper, actually. Farewell."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17593 /* ~"I don't have enough, merchant, but I have some questions..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17594 /* ~"Never mind, merchant; I don't have the coin for one. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #18796 /* ~Annah pulls out her knives in a flash. "Touch me, an' yeh'll be too dead ta walk, yeh will."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18797 /* ~"Annah: Calm yourself."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18798 /* ~Let Annah work.~ */ EXTERN ~DCOLYLFN~ 59
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18799 /* ~"Annah: Calm yourself."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18800 /* ~Let Annah work.~ */ EXTERN ~DCOLYLFN~ 60
END

IF ~~ THEN BEGIN 109 // from:
  SAY #19035 /* ~Annah looks disgusted. "Let's go."~ */
  IF ~~ THEN REPLY #19036 /* ~"I had some other questions for him, first."~ */ EXTERN ~DOJO~ 12
  IF ~~ THEN REPLY #19037 /* ~"All right."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #19230 /* ~Annah snorts. "Still smarting, are yeh, Quint? Be off wit' yeh."~ */
  IF ~~ THEN REPLY #19231 /* ~"I had some other questions for him first, Annah..."~ */ EXTERN ~DQUINT~ 1
  IF ~~ THEN REPLY #19232 /* ~"Farewell, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #20625 /* ~Annah shuffles her feet nervously. "'Tis best not ta muck wi' the dead. Brings bad luck, so it does."~ */
  IF ~~ THEN REPLY #20626 /* ~"That's okay. This body isn't saying anything anyway. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #20627 /* ~Annah shuffles her feet nervously. "'Tis best not ta muck wi' the dead. Brings bad luck, so it does."~ */
  IF ~~ THEN REPLY #20628 /* ~"Perhaps it will have some answers for us."~ */ EXTERN ~DBODY1~ 2
END

IF ~~ THEN BEGIN 113 // from:
  SAY #20629 /* ~"Sure an' there's nothin' here for us. Let's go, aye? Nothin' t'be gained by havin' truck wi' corpses."~ */
  IF ~~ THEN REPLY #20630 /* ~"Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #20775 /* ~"Gris, yeh half-witted vulture, yeh had none o' the sense that the powers gave yeh an' ye're dead, so yeh are, rot an' gone. May no power o' death take pity on yer flyblown carcass. Twice glad I am an' thrice-glad be yer mum that yeh rots down here. 'Tis a pity yeh cannot speak t' tell o' yer demise."~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN REPLY #20776 /* ~"That's Gris?"~ */ JOURNAL #66263 /* ~I found the body of Gris the Vulture, one of the Collectors from the Buried Village. It was stuck in a sarcophagus in a tomb inhabited by ghouls, horribly mutilated.~ */ GOTO 115
  IF ~~ THEN REPLY #20777 /* ~"That's a fine sentiment, Annah. Let's go."~ */ JOURNAL #66263 /* ~I found the body of Gris the Vulture, one of the Collectors from the Buried Village. It was stuck in a sarcophagus in a tomb inhabited by ghouls, horribly mutilated.~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #20778 /* ~"Aye, Gris the Vulture, with a beak like an ill-tempered carrion bird. He was all hands an' leers, an' more's the pity I never slit his throat when he got too fresh."~ */
  IF ~~ THEN REPLY #20779 /* ~"Right, Annah. Thanks. Let's get out of here."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #20780 /* ~Annah nudges the corpse with her toe, and turns to you. "Yeh know why they called him Gris the Vulture, don't yeh? It was 'cause the idjit's got such a large beak on him. His nose always was walkin' a few feet ahead of him."~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20781 /* ~"Quint was looking for you, Gris. He said you had something of his."~ */ EXTERN ~DGRIS~ 10
  IF ~~ THEN REPLY #20782 /* ~"Gris, eh? I'll let the other villagers know he's dead."~ */ EXTERN ~DGRIS~ 19
  IF ~~ THEN REPLY #20783 /* ~"Thanks for your input, Annah. I had more questions for Gris."~ */ EXTERN ~DGRIS~ 9
  IF ~~ THEN REPLY #20784 /* ~"Thanks, Annah. Let's go."~ */ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.3
  SAY #20785 /* ~"Dinna yeh mention it." She smiles sweetly. "An' a farewell ta yeh, too, Gris! Tell the rats not ta gnaw too hard on yer bones!" She spits on the body.~ */
  IF ~~ THEN REPLY #20786 /* ~"Let's go, Annah."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #21611 /* ~"Hssssst!" Annah gives a warning hiss, and as you turn to face her, you notice she is staring wide-eyed at the creature. She makes a semi-circle over her heart.~ */
  IF ~~ THEN REPLY #24723 /* ~"What's wrong, Annah?"~ */ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #21612 /* ~"Are yeh daft?!" Annah turns to you... and you suddenly realize she's *frightened.* "Are yeh so pig-eager to dance in the Lady's shadow yeh'll bandy words with this one?! Let's give this place the laugh before we get penned in the dead-book!"~ */
  IF ~~ THEN REPLY #24724 /* ~"What's the problem?"~ */ GOTO 120
  IF ~~ THEN REPLY #24725 /* ~"We'll go, then."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #21613 /* ~"It's *Fell.*" Annah throws a fearful glance at the creature... presumably Fell. "Let's be away, aye? No good'll come of being here, so it won't!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #24726 /* ~"I'll ask again... what's the problem?"~ */ GOTO 121
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #24727 /* ~"Fell?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 7
  IF ~~ THEN REPLY #24728 /* ~"We'll go, then."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #21614 /* ~"He's a dabus who's not a dabus, aye? He walks on the ground..." Annah's voice drops to a whisper, and she starts trembling. "No more questions, let's give this place the laugh, aye?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24729 /* ~"Annah, no harm will come to you while I'm here. Tell me, what's a 'dabus'?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 122
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24730 /* ~"What's a 'dabus'?"~ */ GOTO 122
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24731 /* ~"Annah, no harm will come to you while I'm here. Now tell me what's wrong."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 123
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24732 /* ~"I think it'd be better if we cleared this matter up now."~ */ GOTO 123
  IF ~~ THEN REPLY #24733 /* ~"We'll go, then."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1
  SAY #21615 /* ~"Dabus are *Her* kin - they take care o' the city, fixin' it an' tearin' it down an' buildin' it back up n' all. They talk in symbol-puzzles in the air - yeh gotta piece 'em together t'figure out the chant."~ */
  IF ~~ THEN REPLY #24734 /* ~"All right... but Fell's a dabus, too. What's wrong?"~ */ GOTO 123
  IF ~~ THEN REPLY #24751 /* ~"Annah, I just want to ask Fell a few questions. We'll be gone in no time."~ */ GOTO 126
  IF ~~ THEN REPLY #24752 /* ~"I see. Very well, we'll go."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 121.2 121.3 122.0
  SAY #21616 /* ~Annah throws a frightened glance at Fell. "Fell's a dabus who angered *Her.* It's said he's a dabus who isn't a dabus, and the time's close when the Lady's gaze'll fall on him, so it will."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #24753 /* ~"'Her'?"~ */ GOTO 124
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24754 /* ~"'Her'? You mean the Lady of Pain?"~ */ GOTO 125
  IF ~~ THEN REPLY #24755 /* ~"Annah, I just want to ask Fell a few questions. We'll be gone in no time."~ */ GOTO 126
  IF ~~ THEN REPLY #24756 /* ~"I see. Very well, we'll go."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #21617 /* ~"The Lady of Pain." Annah makes another semicircle in the air in front of her. "The dabus work for her, an' she protects them... 'cept Fell." She shudders. "Let's be away, aye?"~ */
  IF ~~ THEN REPLY #24757 /* ~"I'd like to speak to Fell, first."~ */ GOTO 126
  IF ~~ THEN REPLY #24758 /* ~"Very well, we'll go."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY #21618 /* ~"Aye... and heed yer tongue." Annah makes another semicircle in the air in front of her as you mention the Lady's name. "The dabus work for the Lady, an' she protects them... 'cept Fell." She shudders. "Let's be away, aye?"~ */
  IF ~~ THEN REPLY #24759 /* ~"I'd like to speak to Fell, first."~ */ GOTO 126
  IF ~~ THEN REPLY #24760 /* ~"I see. Very well, we'll go."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from: 122.1 123.2 124.0 125.0
  SAY #21619 /* ~Annah grabs your arm. "Please, nay, nay! No good'll come of it - anyone speakin' ta Fell could draw the Lady's gaze. I donnae want t'die, I don't!" To your surprise, Annah looks close to tears.~ */
  IF ~~ THEN REPLY #24761 /* ~"Be *quiet*... nothing will happen. Now I'm going to speak to Fell, and I want you to be silent."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 127
  IF ~~ THEN REPLY #24762 /* ~Promise: "Annah, no harm will come to you while I'm here - I promise. I just want to speak to him for a moment."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Fell_2","GLOBALLaw",1)
~ GOTO 128
  IF ~~ THEN REPLY #24763 /* ~Lie to silence her crying: "Annah, no harm will come to you while I'm here - I promise. I just want to speak to him for a moment."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Fell_2","GLOBALLaw",-1)
~ GOTO 128
  IF ~~ THEN REPLY #24764 /* ~"All right, all right. We'll leave."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #21620 /* ~Annah flushes, as if slapped. She snarls, her tail lashing and her familiar anger re-surfacing. "I donnae why I bother... go on, talk ta him till yer tongue slits yer own throat!"~ */
  IF ~~ THEN REPLY #24765 /* ~"Very well."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 128 // from: 126.1 126.2
  SAY #21621 /* ~For a minute, Annah just looks at you. Then, something in your gaze seems to calm her, for she steels herself. "I donnae why I..." She shakes her head. "Go on, then, talk ta him! I donnae care!" There is an undercurrent of fear in her voice.~ */
  IF ~~ THEN REPLY #24766 /* ~"Very well."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 129 // from:
  SAY #21622 /* ~Annah pauses for a moment. She looks torn. "Aye... I can."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24767 /* ~"Will you?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24768 /* ~"Will you?"~ */ GOTO 130
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24769 /* ~"Then do it."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24770 /* ~"Then do it."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 130
  IF ~~ THEN REPLY #24771 /* ~"Never mind. Let's just leave."~ */ EXIT
END

IF ~~ THEN BEGIN 130 // from: 129.1 129.3
  SAY #21623 /* ~Annah shakes her head. "Nay, I'm not about ta walk with yeh inta the Lady's shadow, so's I'm not."~ */
  IF ~~ THEN REPLY #24772 /* ~"I see. I'll just try and speak with him myself..."~ */ EXTERN ~DFELL~ 8
  IF ~~ THEN REPLY #24773 /* ~"Very well. Let's leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 129.0 129.2 132.0 133.1 134.3 135.3 136.0 137.12 138.12 139.12 140.9 141.9 142.0 143.3 144.1 145.3 146.3 147.3 148.0 149.3 150.3 151.1 152.3 153.3 154.3 155.12 158.0 159.0
  SAY #21624 /* ~Annah nods. The dabus continues to stare at the two of you, arms folded in its sleeves.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24774 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24775 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24776 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24777 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24778 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24779 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24780 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24781 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24782 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24783 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24784 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24785 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64394 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64395 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64396 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64397 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64398 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64399 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24786 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24787 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24788 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #24789 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24790 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24791 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #24792 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24793 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24794 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24795 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24796 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24797 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24798 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24799 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24800 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24801 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #21625 /* ~Annah shrugs, her tail lashing slowly back and forth. "Says his name's 'Fell.'"~ */
  IF ~~ THEN REPLY #24802 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24803 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #21626 /* ~Annah frowns, studying the symbols. "Don't know all the symbols he's spitting out..." She glances around the walls of the building. "Still... if my eyes see true, this looks like a tattoo parlor."~ */
  IF ~~ THEN REPLY #24804 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24805 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24806 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #21627 /* ~Annah squints at the symbols. "First, he says... no, wait." She frowns. "He says it's the *first* time yeh've come here... but at the same time, it's not." Annah hisses in irritation, and her tail lashes back and forth like a snake. "Hssst! He's as barmy as *yeh* are - there's no sense in what he says."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24807 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24808 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24809 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #24810 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24811 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #21628 /* ~Annah blinks. "Oh, this is grand. He says he knows yeh, right enough... but then he says he can't tell yer story."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24812 /* ~"Why not?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24813 /* ~"Why not?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24814 /* ~"Why not?"~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #24815 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24816 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #21629 /* ~"He says he can't. He says he's sorry and all... then..." Annah frowns. "He says 'he can't change man's nature.'" She skims the symbols again, then shrugs. "Don't know what he's on about with that last bit."~ */
  IF ~~ THEN REPLY #24817 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24818 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #21630 /* ~Annah chews her lower lip. "Says the hag's no fairy's tale. She's real, she is."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24819 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24820 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24821 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24822 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24823 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24824 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24825 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24826 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24827 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24828 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24829 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24830 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24831 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24832 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #21631 /* ~"He..." Annah makes a semi-circle over her heart. "He says she's been mazed, so she has..." Her voice drops to a whisper. "She's in one o' the Lady's cages." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24833 /* ~"Mazed?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24834 /* ~"Mazed?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24835 /* ~"Mazed?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24836 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24837 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24838 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24839 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24840 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24841 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24842 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24843 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24844 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24845 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24846 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #21632 /* ~"She..." Annah squints at the symbols. "Something about the two of them not gettin' along, and the Lady punishing Ravel. Put her in a maze, the Lady did." Annah turns to you. "Mazes are like the cackle-house for berks who think they can pull one over on the Lady... never works. Only makes more mazes."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24847 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24848 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24849 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24850 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24851 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24852 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24853 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24854 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24855 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24856 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24857 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24858 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24859 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24860 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #21633 /* ~Annah seems nervous the more she translates, and you see her shudder. "'Ee says she tried ta crack Sigil like an egg."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24861 /* ~"Does he know how to reach Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24862 /* ~"Does he know how to reach Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24863 /* ~"Does he know how to reach Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24864 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24865 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24866 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24867 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24868 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24869 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24870 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24871 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 156.5
  SAY #21634 /* ~Annah frowns. "He says don't go lookin' for her..." She scratches herself uncomfortably. "He says she's in the Lady's keepin'." She turns to you. "He's speakin' sense... one doesn't cross Her, so best leave well enough alone, aye?"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24872 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24873 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24874 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24875 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24876 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24877 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24878 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24879 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24880 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24881 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24882 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #21635 /* ~"He says not to go lookin' for her, 'cause..." She squints at the symbols. "Cause she has an evil heart." She pauses. "He says she will do anythin' ta hurt yeh an' those that walk with yeh." Annah sighs, then throws an uneasy glance at you. "He's right, y'know. If she lives, she's misery only, trouble o' the blackest kind, she is."~ */
  IF ~~ THEN REPLY #24883 /* ~"I'll keep that in mind. I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24884 /* ~"I think our paths are destined to cross. Farewell."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #21636 /* ~Annah's tail lashes back and forth. "'Ee says the arm's yours, but the tattoos are his." She frowns as she studies the symbols that float in the air. "...Can't make out the last part."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24885 /* ~"What tattoos?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24886 /* ~"What tattoos?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24887 /* ~"What tattoos?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #24888 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24889 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #21637 /* ~"'Ee says that they're his, but he'd forgotten about them. He says he can carve them on yeh again, if yeh want."~ */
  IF ~~ THEN REPLY #24890 /* ~"Okay... I'd like to see all the tattoos he has available."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24891 /* ~"I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24892 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #21638 /* ~"'Ee says that they're not his."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Can he tell me anything about them?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Can he tell me anything about them?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Can he tell me anything about them?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #24896 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24897 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #21639 /* ~"He says... the ones on yer back, they're directions. The other, the one on yer shoulder..." Suddenly, one of the symbols around Fell brightens, and the rest vanish. The symbol becomes larger and more focused.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24898 /* ~"What's that symbol on my shoulder?"~ */ EXTERN ~DFELL~ 69
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24899 /* ~"What's that symbol on my shoulder?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24900 /* ~"What's that symbol on my shoulder?"~ */ EXTERN ~DFELL~ 70
  IF ~~ THEN REPLY #24901 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24902 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #21640 /* ~"Shadows." Annah's tail begins lashing back and forth... strangely enough, she seems nervous. "He says yeh were killed by shadows."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24934 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24935 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24936 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #24937 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24938 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #21641 /* ~"He says..." Annah's tail stops lashing back and forth and begins moving slower, like a snake about to strike. "He says yeh were killed by many shadows. He doesn't know why."~ */
  IF ~~ THEN REPLY #24939 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24940 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #21642 /* ~"He says... it's his temple... his gallery. He says, uh... that yeh are his *canvas.* He both admires yeh... an' is saddened for yeh."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24941 /* ~"Saddened for me?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24942 /* ~"Saddened for me?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24943 /* ~"Saddened for me?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #24944 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24945 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #21643 /* ~Annah seems to be struggling. "He says... torture's, nay... *torment's* mark floats over, above yeh. That tragedy... tragedies... an' losses have all been... uh, chipped inta yer flesh. He says yeh've survived great pain."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24946 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24947 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24948 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #24949 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24950 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from:
  SAY #21644 /* ~Annah frowns. "Can't quite get it all, but..." She squints at the symbols. "He... feels admiration... *admires* yeh, because yeh have surrendered... nay, nay... because yeh've *not* surrendered ta the weight o' loss... losses... chains..." Annah snarls, then spits on the floor. "Dammit! A-cursed rebuses! Don't make a lick a sense!"~ */
  IF ~~ THEN REPLY #24951 /* ~"Take a deep breath, try again."~ */ GOTO 152
  IF ~~ THEN REPLY #24952 /* ~"Forget it, then. I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24953 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #21645 /* ~"All right, 'oul on." Annah takes a breath, then squints at the rebuses again. "He says he admires yeh because yeh've not surrendered ta the weight o' these losses... even though the chains still hang above yeh... eh, on yeh."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24954 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24955 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24956 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #24957 /* ~"Forget it, then. I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24958 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #21646 /* ~Annah frowns. "He says... these losses cover over this life an' all the ones since. That yeh split skins... eh... *shed* skins... like a snake. Yeh're walkin' the paths o' life, the many..." She pauses. "Uh, the infinite paths o' life."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24959 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24960 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24961 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #24962 /* ~"Forget it, then. I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24963 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #21647 /* ~"Eh... he says ta warn yeh of something... each of your, eh, lives, past life, lives..." She squints, then continues. "Carnations... *incarnations* casts a shadow. An' that yeh need travel... ta a place where there's mad shadows, where mad shadows live, an' the earth is cut from regrets."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24964 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24965 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24966 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #24967 /* ~"Forget it, then. I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24968 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #21648 /* ~"He also says not t'sign anythin'."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24969 /* ~"Very well."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24970 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24971 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24972 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24973 /* ~"Very well."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24974 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24975 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24976 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24977 /* ~"Very well."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24978 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24979 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24980 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #24981 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24982 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #21649 /* ~"Fell says... uh, no, he *asks* if yeh feel 'un-whole.'" Annah frowns. "I *think* he asked yeh if yeh feel complete."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24983 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24984 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24985 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #24986 /* ~"That is none of your concern."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24987 /* ~Lie: "I feel complete, yes. Why?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24988 /* ~"I had another question I wanted to ask him..."~ */ GOTO 141
  IF ~~ THEN REPLY #24989 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #21650 /* ~"Fell says... that yeh're strong. An' yeh should keep faith. Then yeh shall become whole again."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24991 /* ~"I'll try."~ */ EXTERN ~DFELL~ 103
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24992 /* ~"I'll try."~ */ EXTERN ~DFELL~ 104
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24993 /* ~"I'll try."~ */ EXTERN ~DFELL~ 105
END

IF ~~ THEN BEGIN 158 // from:
  SAY #21651 /* ~Annah blinks. "He... told me not ta surrender my heart."~ */
  IF ~~ THEN REPLY #24994 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24995 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #21652 /* ~"He says it's torture..." She frowns. "Nay, he means 'torment,' I think. Somethin' about the skin an' the mind I cannae make out." She shakes her head. "Gives my head the pains, it does."~ */
  IF ~~ THEN REPLY #24996 /* ~"I had another question I wanted to ask him..."~ */ GOTO 131
  IF ~~ THEN REPLY #24997 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #23928 /* ~"Aw, Shad, now yeh know we were all worried fer yeh, aye? 'Tis a pity yeh're here." She looks at him with more affection than you've ever seen in her eyes. "Go on and let us out an' then get out o' here. Oul' Bumpy here's goin' to get some revenge on the rats, I reckon."~ */
  IF ~~ THEN REPLY #23929 /* ~"You've got that right."~ */ EXTERN ~DSHAD~ 7
  IF ~~ THEN REPLY #23930 /* ~"Please, Shad."~ */ EXTERN ~DSHAD~ 7
END

IF ~~ THEN BEGIN 161 // from:
  SAY #28622 /* ~Next to you, Annah hisses. "Hssst! What are yeh on about, bandyin' them fancy words around? Has yer sense left yeh?"~ */
  IF ~~ THEN REPLY #28623 /* ~"Annah, calm down and be silent... I'm speaking to someone here, all right?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 162
  IF ~~ THEN REPLY #28624 /* ~"I was just complimenting her so she would pardon my rudeness, Annah, all right?"~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0 161.1
  SAY #28625 /* ~Annah spits. "Ye're playing the dandy, so's yeh are, and more fool yeh are fer doin' it with a fiend! Are yeh bound fer the cackle-house next?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 53
END

IF ~~ THEN BEGIN 163 // from:
  SAY #28626 /* ~"She's one o' the fiends, one o' the succubi, she is. She'll take yer measure, then she'll take yer soul to the Lower Planes, so's she will."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 72
END

IF ~~ THEN BEGIN 164 // from:
  SAY #28627 /* ~Annah stiffens, then starts muttering under her breath. "Who's ta say she'll be comin' with us? We donnae need the likes o' her, so's we don't."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 118
END

IF ~~ THEN BEGIN 165 // from:
  SAY #28628 /* ~Annah stiffens, then starts muttering under her breath. "Who's to say she'll be comin' with us? We donnae need the likes o' her, so's we don't."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 277
END

IF ~~ THEN BEGIN 166 // from:
  SAY #28629 /* ~"Ye'd best latch yer bone-box, skull, or I'll rattle yeh so hard they'll be pickin' yer teeth off the spire-!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 117
END

IF ~~ THEN BEGIN 167 // from:
  SAY #30829 /* ~Annah shrugs, rolling her eyes. "Talk as yeh like, cutter; I care not a whit fer what yeh say... unless ye're rattlin' yer bone-box about *me,* that is."~ */
  IF ~~ THEN REPLY #30836 /* ~Try and get his attention.~ */ EXTERN ~DABLE~ 7
END

IF ~~ THEN BEGIN 168 // from:
  SAY #30830 /* ~"Aye, it hurts ta look at 'im, it does."~ */
  IF ~~ THEN REPLY #30837 /* ~"Very amusing, Annah. I had some questions, sir..."~ */ EXTERN ~DABLE~ 16
  IF ~~ THEN REPLY #30838 /* ~"An odd comment from someone with what looks to be a giant rat's tail sprouting from her bottom..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY #30831 /* ~Annah bares her teeth, tail lashing. "Is that *so,* yeh pikin' leatherhead? If yeh *wants,* me an' me tail can just walk right out a' yer sight fer good! Would *that* make yeh happy, eh?"~ */
  IF ~~ THEN REPLY #30839 /* ~"No, Annah; stay. I was only teasing... an eye for an eye."~ */ GOTO 170
  IF ~~ THEN REPLY #30840 /* ~"Annah, no... I'd hate to see you leave. My apologies for the comment - please remain with me."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 171
  IF ~~ THEN REPLY #30841 /* ~"Whatever suits you, Annah."~ */ GOTO 172
END

IF ~~ THEN BEGIN 170 // from: 169.0 171.0 172.0 173.0
  SAY #30832 /* ~"Hmph." She smirks at you, but makes no move to leave.~ */
  IF ~~ THEN REPLY #30842 /* ~"Thanks, Annah. And you, sir... I had some questions."~ */ EXTERN ~DABLE~ 16
END

IF ~~ THEN BEGIN 171 // from: 169.1
  SAY #30833 /* ~Annah becomes quiet for a time. She opens her mouth to speak, then stops herself...~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 172 // from: 169.2
  SAY #30834 /* ~Annah stares at you for a time, shocked, before becoming livid with rage. "*FINE!*" she screams. "Powers tell me *why* I wasted so much time walkin' about with yeh!" She begins to stomp away, loudly cursing you, your ancestors, and anyone who's ever crossed your path.~ */
  IF ~~ THEN REPLY #30843 /* ~"Annah, wait... my apologies, please return."~ */ GOTO 170
  IF ~~ THEN REPLY #30844 /* ~Grab her as she walks off.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 173
  IF ~~ THEN REPLY #30845 /* ~Let her go.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 172.1
  SAY #30835 /* ~As you grab her arm, she rips out of your grip and hisses. "Don't yeh *ever* so much as look at me again, yeh soddin' idjit!" She raises her punch daggers. "An' any part o' yeh which *touches* me'll end up layin' in the gutters o' Sigil, so's I swear it!"~ */
  IF ~~ THEN REPLY #30846 /* ~"Annah, wait... I just wanted to apologize. I never meant to get you so upset. Please don't leave."~ */ GOTO 170
  IF ~~ THEN REPLY #30847 /* ~"I dare you to try and make good on that threat, you foul-mouthed tiefling trash."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30848 /* ~"Farewell for good, Annah."~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #32668 /* ~As you kneel before the woman, Annah sputters with rage. "Yeh *can't* be serious now! Just bleed the prissy whore, yeh sod! Here... I'll do it for yeh..."~ */
  IF ~~ THEN REPLY #32689 /* ~"Annah, wait!"~ */ DO ~Attack("Sarhava")
~ EXIT
  IF ~~ THEN REPLY #32690 /* ~Step between Annah and the woman.~ */ GOTO 175
  IF ~~ THEN REPLY #32691 /* ~Join Annah's attack on the woman.~ */ DO ~Attack("Sarhava")
~ EXTERN ~DSARHAVA~ 15
  IF ~~ THEN REPLY #32692 /* ~Let Annah work.~ */ DO ~Attack("Sarhava")
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY #32669 /* ~You move to defend the woman; Annah merely stares at you, shocked. "What... are... are yeh *daft?*"~ */
  IF ~~ THEN REPLY #32693 /* ~"This isn't the Hive, Annah... we can't just fight as we please. If we're not careful the guard will be summoned."~ */ GOTO 176
  IF ~~ THEN REPLY #32694 /* ~"Come on, Annah; let's just go."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #32670 /* ~Annah makes a sour face and spits at the woman's feet. Surprisingly enough, the woman makes no move to attack. "Sickenin', is what it is... sickenin'." She falls to muttering to herself; you catch the words "wilted" and "stem."~ */
  IF ~~ THEN REPLY #32695 /* ~"Look, madam... we don't want any trouble. Let's end this before I call the guards myself."~ */ EXTERN ~DSARHAVA~ 7
  IF ~~ THEN REPLY #32696 /* ~"Come on, Annah; let's just go."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 177 // from:
  SAY #32671 /* ~Annah glares at Grace and Sarhava furiously.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 178 // from:
  SAY #32672 /* ~Annah flushes, and with a snarl, blades sprout from her fists.~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DSARHAVA~ 30
END

IF ~~ THEN BEGIN 179 // from:
  SAY #32673 /* ~"Yeh have a sharp tongue on yeh, wee lass." Annah spits and sharpens her blades against each other. "I wonder how sweet yer tacky jewels an' harlot's clothes'll look on yeh when ye're dead in the street!"~ */
  IF ~~ THEN REPLY #32674 /* ~"Annah, wait!"~ */ EXTERN ~DSARHAVA~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #33296 /* ~"Shut yer yap, yeh loathsome tard! Didn't I tell yeh last time never ta speak ta me again? Lady knows how yeh ever got me name in the first place!"~ */
  IF ~~ THEN EXTERN ~DGHIVEM~ 53
END

IF ~~ THEN BEGIN 181 // from:
  SAY #33297 /* ~"Don't say I didnae warn yeh, deader!" Annah's blades lash out at the man's outstretched hands...~ */
  IF ~~ THEN REPLY #33298 /* ~Attack the man yourself.~ */ EXIT
  IF ~~ THEN REPLY #33299 /* ~Let Annah work.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #33435 /* ~"Shut yer yap, yeh loathsome tard! Didn't I tell yeh last time never ta speak ta me again? Lady knows how yeh ever got me name in the first place!"~ */
  IF ~~ THEN EXTERN ~DGHIVEF~ 51
END

IF ~~ THEN BEGIN 183 // from:
  SAY #33437 /* ~"Don't say I didnae warn yeh, deader!" Annah's blades lash out at the man's outstretched hands...~ */
  IF ~~ THEN REPLY #33438 /* ~Attack the man yourself.~ */ EXIT
  IF ~~ THEN REPLY #33439 /* ~Let Annah work.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 218 227 even though they appear after this state */
~  GlobalGT("Annah","GLOBAL",0)
!Global("Annah_Talked_Grace","GLOBAL",5)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 184 // from:
  SAY #33981 /* ~Annah watches you as you approach, her tail lashing back and forth. "So, uh... ya need my help yet?"~ [ANA454A] */
  IF ~~ THEN REPLY #33982 /* ~"I wanted us to travel together again."~ */ GOTO 185
  IF ~~ THEN REPLY #33983 /* ~"Nothing, sorry to disturb you."~ */ EXIT
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY #33984 /* ~"Oh, are yeh SURE now? Yeh left me here once, and I dinnae care for it. I've no time for yer mitherings, so I haven't. If you're not dead-sure this time, then ye'd better leave."~ */
  IF ~~ THEN REPLY #33985 /* ~"I'm certain. I need your help, Annah."~ */ GOTO 186
  IF ~~ THEN REPLY #33986 /* ~"I'd best go, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #33987 /* ~"Tchhh. There's no sense in it, but I'll come with yeh. Yeh need all the help yeh can get, yeh do."~ */
  IF ~~ THEN REPLY #33988 /* ~"All right, let's go."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 451 460 218 227 even though they appear after this state */
~  InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 187 // from:
  SAY #33989 /* ~"Aye? What is it yeh want then?"~ [ANA579B] */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67680 /* ~"So where's the place where you found my body?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67681 /* ~"So where's the place where you found my body?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67682 /* ~"So where's the place where you found my body?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67683 /* ~"I had a question about how you found my body..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67684 /* ~"Annah... didn't I meet you in the Hive, before I found Pharod?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67685 /* ~"Annah, did you find anything on my body before you brought it to the Mortuary?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67693 /* ~"Annah, I found Pharod dead in Ill-Wind Court."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67694 /* ~"Annah, do you know how Pharod died?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67686 /* ~"Tell me a little bit about Pharod."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67687 /* ~"Annah, when Pharod went to return the tribute he took from my body, he vanished for a while, then came back - but he never left Ill-Wind Court. Do you know where he went?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67690 /* ~"Annah, can you train me in thieving skills?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68261 /* ~"Annah, can you train me in thieving skills?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67688 /* ~"I wanted you to know that when I kissed Ravel in the maze, I..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67689 /* ~"I wanted you to know that when I kissed Ravel in the maze, I..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67695 /* ~"In the maze, Ravel said you were tormented... what did she mean?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67051 /* ~"Have you heard of a night hag called Ravel Puzzlewell?"~ */ GOTO 316
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67052 /* ~"Do you know where I could find a 'piece' of Ravel?"~ */ GOTO 319
  IF ~~ THEN REPLY #33990 /* ~"Nothing, Annah. Just checking to see if you were still with me."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #39003 /* ~"Ach, 'tis a collection o' brain vermin! We'd best be gone as soon as possible - they'll crush yeh mind! I've seen ten ta twenty o' them lay ambushes fer drunks, sabotage buildin's, an' I even heard rumor that they ken cast spells when there's lots o' them. I cannae imagine what a hundred or more o' the pests might be able ta do together..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 189 // from:
  SAY #39004 /* ~"Ach, 'tis a collection o' brain vermin! We'd best be gone as soon as possible - they'll crush yeh mind! I've seen ten ta twenty o' them lay ambushes fer drunks, sabotage buildin's, an' I even heard rumor that they ken cast spells when there's lots o' them. I cannae imagine what a hundred or more o' the pests might be able ta do together..."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 5
END

IF ~~ THEN BEGIN 190 // from:
  SAY #39005 /* ~Annah whispers to you: "Yeh've managed ta get the brain vermin mad at yeh, aye? Let me tell yeh this, then: We'd best be gone as soon as possible before they crush us all. They're smarter in groups, they are - I've seen 'em lay ambushes fer drunkards, sabotage buildin's, an' I hear tell they cast spells when they gather. I cannae imagine how powerful this collection is - and yeh've managed ta pike 'em off. Tread carefully here, aye?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 191 // from:
  SAY #39006 /* ~Annah whispers to you: "Yeh've managed ta get the brain vermin mad at yeh, aye? Let me tell you this, then: We'd best be gone as soon as possible before they crush us all. They're smarter in groups, they are - I've seen 'em lay ambushes fer drunkards, sabotage buildin's, an' I hear tell they cast spells when they gather. I cannae imagine how powerful this collection is - and yeh've managed ta pike 'em off. Tread carefully here, aye?"~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 58
END

IF ~~ THEN BEGIN 192 // from:
  SAY #39007 /* ~"I don't ken what sort o' game the brain vermin are playin' with yeh, but if they're offerin' peace, yeh'd be best off acceptin' it. They get smarter in groups, they do, and even though yeh've hurt 'em, a band this size can still send yeh ta the dead-book."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 193 // from:
  SAY #39008 /* ~"I don't ken what sort o' game the brain vermin are playin' with yeh, but if they're offerin' peace, yeh'd be best off acceptin' it. They get smarter in groups, they do, and even though yeh've hurt 'em, a band this size can still send yeh ta the dead-book."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 78
END

IF ~~ THEN BEGIN 194 // from:
  SAY #39200 /* ~Annah mumbles something angrily; you catch the words "piking" and "idjit-stick."~ */
  IF ~~ THEN EXTERN ~DVIVIAN~ 12
END

IF ~~ THEN BEGIN 195 // from:
  SAY #39585 /* ~"Aye, I'm a no good at telling such things, I'm not." She frowns, and waves her hands as if trying to shoo away the idea. "Donnae be asking me fer such nonsense, now."~ */
  IF ~~ THEN EXTERN ~DYVES~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #39586 /* ~Annah looks uncomfortable, her tail lashing slowly back and forth. "Well, I know one story..." She suddenly becomes angry, glaring at Yves. "...but yeh might not like it, yeh won't, so don't be blamin' *me* fer yer chokin' it outta me!"~ */
  IF ~~ THEN REPLY #39764 /* ~"Go ahead, Annah..."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 197
  IF ~~ THEN REPLY #39765 /* ~"Wait... I've a tale to share with you, Yves."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39766 /* ~"Forget it, Annah. I had a question Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39767 /* ~"Don't worry about it, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #39587 /* ~Annah scowls, then finally relents with an exasperated sigh. "I heard a story when I was a wee lass."

"This berk's walkin' home real late, near anti-peak, an' passes an old toothless crone in a dark an' otherwise empty street. 'Where yeh goin'?' she asks him." ~ */
  IF ~~ THEN REPLY #39768 /* ~"Go on, Annah..."~ */ GOTO 198
  IF ~~ THEN REPLY #39769 /* ~"Wait... I had a question for Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39770 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #39588 /* ~"'Home, to me wife an' kip,' he says."

"'Near the Slags?' she asks him."

"'Sure enough,' he says."~ */
  IF ~~ THEN REPLY #39771 /* ~"Go on, Annah..."~ */ GOTO 199
  IF ~~ THEN REPLY #39772 /* ~"Wait... I had a question for Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39773 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #39589 /* ~"So she asks him a favor... ta take a box she's got ta Deader's Pit an' give it ta the woman there. Now this berk's a real sap, too nice ta say no despite the fact he's sure somethin's not quite *right* about this old crone, and agrees. 'But what's the woman's name?' he asks. 'Where does she live? Where should I look fer her if she's not by Deader's Pit?'"~ */
  IF ~~ THEN REPLY #39774 /* ~"Go on, Annah..."~ */ GOTO 200
  IF ~~ THEN REPLY #39775 /* ~"Wait... I had a question for Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39776 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #39590 /* ~"The woman hands him the box - a wooden thing, wrapped in colored cloth - an' tells him ta just go, an' she'll be there. Finally, she warns him: 'An' whatever yeh does, do *NOT* open the box!'"~ */
  IF ~~ THEN REPLY #39777 /* ~"Go on, Annah..."~ */ GOTO 201
  IF ~~ THEN REPLY #39778 /* ~"Wait... I had a question for Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39779 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #39591 /* ~"So he takes it home with him an' hides it in the rafters, thinkin' he'll bring it by Deader's Pit when it's light out. His wife, though, seein' him hidin' the box, gets right jealous thinkin' it's a gift fer a lover or somethin', an' opens it up as soon as he's not lookin'."~ */
  IF ~~ THEN REPLY #39780 /* ~"Go on, Annah..."~ */ GOTO 202
  IF ~~ THEN REPLY #39781 /* ~"Wait... I had a question for Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39782 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY #39592 /* ~"Well, turns out the box was full o' gouged-out eyes an' severed male members with the hair still on 'em. Her scream brought the berk runnin'... he remembered what the crone said, got right scared and wrapped the box back up."~ */
  IF ~~ THEN REPLY #39783 /* ~"Go on, Annah..."~ */ GOTO 203
  IF ~~ THEN REPLY #39784 /* ~"Wait... I had a question for Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39785 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #39593 /* ~"He went out straight away ta Deader's Pit, an' sure enough there was another old hag waitin' there for him. He hands her the box, an' she says ta him: 'This box has been opened and looked into.'"~ */
  IF ~~ THEN REPLY #39786 /* ~"Go on, Annah..."~ */ GOTO 204
  IF ~~ THEN REPLY #39787 /* ~"Wait... I had a question for Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39788 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #39594 /* ~"The poor berk tries ta deny it, but she gets this dreadful look on her face. 'Ye've done somethin' horrible!' she tells him, then disappears. That done, he hurries back ta his kip."~ */
  IF ~~ THEN REPLY #39789 /* ~"Go on, Annah..."~ */ GOTO 205
  IF ~~ THEN REPLY #39790 /* ~"Wait... I had a question for Yves..."~ */ EXIT
  IF ~~ THEN REPLY #39791 /* ~"We'll hear it another time, Annah. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #39595 /* ~"He's feelin' ill when he gets back, an' takes ta bed. His wife bitterly regretted openin' the box an' all, but it was too late... the next day he died of a rottin' disease, an' the first things ta go was his eyes an' stem."

Annah nods grimly, her tale complete.~ */
  IF ~~ THEN EXTERN ~DYVES~ 64
END

IF ~~ THEN BEGIN 206 // from:
  SAY #41137 /* ~"Tch." Annah sneers, rolling her eyes. "Idjit."~ */
  IF ~~ THEN REPLY #41138 /* ~Ignore Annah's comment.~ */ EXTERN ~DKESAI~ 35
  IF ~~ THEN REPLY #41139 /* ~"Just ignore her, Kesai."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 207
  IF ~~ THEN REPLY #41140 /* ~"Annah, please... it's only a compliment."~ */ GOTO 207
  IF ~~ THEN REPLY #41141 /* ~"Don't be upset, Annah... you're just as lovely."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 208
END

IF ~~ THEN BEGIN 207 // from: 206.1 206.2
  SAY #41142 /* ~Annah stares at you coldly, but says nothing.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 208 // from: 206.3
  SAY #41143 /* ~"An' what's *that* supposed ta mean, yeh pikin' tard?! Didja think me *jealous* o' this chatty tart? Yeh sod!" Annah spits and looks away from you.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 209 // from:
  SAY #43906 /* ~"Pah!" Annah sneers at Morte. "Stop yer droolin', yeh leerin' skull."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 469
END

IF ~~ THEN BEGIN 210 // from:
  SAY #43907 /* ~"Get a hair's breadth closer, skull, an I'll see to it that not one o' yer chatterin' teeth lies within a hundred paces of another!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 470
END

IF ~~ THEN BEGIN 211 // from:
  SAY #44246 /* ~"Sweet sufferin' *pike*..." Annah snarls. "Yeh there! We'll be having no more o' this waiting, so yeh'd better..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 18
END

IF ~~ THEN BEGIN 212 // from:
  SAY #44250 /* ~Annah looks surprised. "Eh?" Her surprise quickly falls into a frown. "What d'yeh *mean?*"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 19
END

IF ~~ THEN BEGIN 213 // from:
  SAY #44252 /* ~Annah seems confused. "Nay. Nay, I'm not a Sensate..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 21
END

IF ~~ THEN BEGIN 214 // from:
  SAY #44253 /* ~"Nay, I like these. I donnae need ta worry about th'cold or heat, it's me blood, I think. An' watch th' talk about th' tieflings, aye?"~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 22
END

IF ~~ THEN BEGIN 215 // from:
  SAY #45721 /* ~"I'd gut yeh if yeh had somethin' t' gut, skull."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 486
END

IF ~~ THEN BEGIN 216 // from:
  SAY #46094 /* ~"'Scrag'?! What in the nine Planes o' Baator are yeh talkin' about, yeh idjit? Scrag's nagged, nipped, yanked by the Hardheads, yeh clueless, addle-coved berk."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 1
END

IF ~~ THEN BEGIN 217 // from:
  SAY #46095 /* ~Annah snickers, shaking her head. "Rattle, yeh sod. Rattlin' yer bone-box, it is. I'd so like ta see how long yeh'd last dropped smack in the middle o' the Hive, actin' as yeh are..." Annah turns to you. "C'mon, let's be off. No use wastin' our time with this wee-stemmed basher would-be."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 3
END

IF WEIGHT #1 /* Triggers after states #: 227 even though they appear after this state */
~  Global("0110_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 218 // from:
  SAY #47311 /* ~"Ah, what now?" You turn to see a striking red-haired girl dressed in leather armor... you didn't even hear her enter the chamber. Her right arm is covered with a series of interlocking plates that look as if they were taken from the skin of some creature, and a horned shoulder piece protects her left arm. Oddly enough, she has a tail... that is flicking back and forth as you watch.~ [ANA229B] */
  IF ~  Global("Know_Annah","GLOBAL",0)
~ THEN REPLY #47320 /* ~"So you're the one who's going to show me where you found my body?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #47321 /* ~"You're Annah? I met you in the Hive - outside the Mortuary, correct?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0 218.1
  SAY #47312 /* ~The girl ignores you and turns to Pharod. "What's this about, then? I'm not playing the leash-pull with this scarred dog, so I'm not. Get one of your other gullies to do it."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 81
END

IF ~~ THEN BEGIN 220 // from:
  SAY #47313 /* ~"Eh? What are yeh on about?" She squints at you. "'Ee's not a deader."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 82
END

IF ~~ THEN BEGIN 221 // from:
  SAY #47314 /* ~"So?" Annah glances at you, then shrugs. "He shouldn't be playing deader on the Hive while I'm about, or he'll wake up in a Dustie's arms, he will."~ */
  IF ~~ THEN REPLY #47322 /* ~"Maybe you could have CHECKED to see if I was alive before dumping me off there."~ */ GOTO 222
  IF ~~ THEN REPLY #47323 /* ~"Enough of this - where did you find my body?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #47315 /* ~"Oh, aye, and maybe YEH should have been more careful an' maybe yeh wouldn't have been lying face-down n' stone-still on the alley cobbles like a deader, aye?!"~ */
  IF ~~ THEN REPLY #47324 /* ~"Maybe I should show your filthy, corpse-pirate hide what it's like to be lying near-dead in an alleyway." ~ */ GOTO 223
  IF ~~ THEN REPLY #47325 /* ~"Enough of this - where did you find my body?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #47316 /* ~"I'm not afraid of YEH -" Annah's hands drop down to her sides, and she draws two wicked punch daggers from their sheaths. "Yeh'd best step down, or yeh'll have these in yer eyes, yeh will!"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 224 // from:
  SAY #47317 /* ~"Tchhhh..." Annah sneers at Pharod, then throws a glance at you. "C'mon, then. And keep yer steps quick, jig? I've little time tae waste on the likes of yeh."~ */
  IF ~~ THEN REPLY #47326 /* ~"Actually, I'm not done exploring the Buried Village yet... let's head to the site where I died after I'm done here."~ */ GOTO 225
  IF ~~ THEN REPLY #47327 /* ~"Very well. Let's head there now."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
StartCutSceneMode()
StartCutSceneEx("0110cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #47318 /* ~"Oh, aye? Well, then, yeh can sniff out yer grave on yer own, eejit! I'm not wai-"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 84
END

IF ~~ THEN BEGIN 226 // from:
  SAY #47319 /* ~Annah spits on the ground. "Pox on yeh both..."~ */
  IF ~~ THEN REPLY #47328 /* ~"That's what I was thinking... now let's go."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Annah_AR0400_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 227 // from:
  SAY #47329 /* ~Annah points at the door in front of you. "Through there's where we want ta be."~ */
  IF ~~ THEN REPLY #47330 /* ~"All right, let's head on in."~ */ DO ~SetGlobal("Annah_AR0400_Cut_Scene","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #47849 /* ~"Aye... it's been smeared with barmy paints from the Starved Dogs, it has - it's a real door until yeh look at it, then it turns into a painting."~ */
  IF ~~ THEN REPLY #47850 /* ~"How did they do that?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #47851 /* ~Annah shrugs. "There's stranger things in th' planes." She suddenly frowns. "You might as well ask how yeh got yerself out of the dead-book after I was SURE yeh were dead."~ */
  IF ~~ THEN REPLY #47852 /* ~"So, this door... I just don't look at it? And *then* open it?"~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #47853 /* ~Annah glances at the door, then nods. "That's the dark of it, if chant be true."~ */
  IF ~~ THEN REPLY #47854 /* ~"All right, then... I'll do what you say. You just -"~ */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #47855 /* ~"Houl' on!" Annah stops you before you reach for the door. "This is the only path I know ta reach the place I found yer corpse, but it's not the safest road, aye? Yeh sure you're ready? I'm not here to play yer minder, no matter what ol' stutter-crutch says."~ */
  IF ~~ THEN REPLY #47856 /* ~"What's beyond this door that's so dangerous?"~ */ GOTO 232
  IF ~~ THEN REPLY #47857 /* ~"I don't think you need to worry for my sake - just stay behind me. Now let me open this door."~ */ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47858 /* ~"Let me go grab some more weapons and rest up a bit before we head in."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #47859 /* ~"Chaosmen," Annah whispers. "Barmy as they come. Barking wild into th' day and night, ready to either paint yeh with colors or crack yer brain-box with a chamber pot. Dangerous bloods, they are."~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47860 /* ~"Not to worry - I'm a member of their faction."~ */ GOTO 233
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47861 /* ~"If they're so dangerous, then how did you get through?"~ */ GOTO 234
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47862 /* ~"I don't think you need to worry for my sake - just stay behind me. Now let me open this door."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47863 /* ~"Hmmm. Let's get re-equipped and come back later, then."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #47864 /* ~"Oh, so yeh think all Chaosmen play the friendly with each other?" She sneers. "Then yeh ARE barmy enough ta be one of them."~ */
  IF ~~ THEN REPLY #47865 /* ~"If they're so dangerous, then how did you get through?"~ */ GOTO 234
  IF ~~ THEN REPLY #47866 /* ~"I don't think you need to worry for my sake - just stay behind me. Now let me open this door."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47867 /* ~"Hmmm. Let's get re-equipped and come back later, then."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.1 233.0
  SAY #47868 /* ~"I crept in nice and quiet-like. Can't paint yeh or kill yeh when they can't SEE yeh." She looks you up and down with a frown. "Doubt I can pull that twice with yeh around. Yeh look right clumsy, yeh do."~ */
  IF ~~ THEN REPLY #47869 /* ~"Just stay behind me. Now let me open the door..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47870 /* ~"Hmmm. Let's get re-equipped and come back later, then."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from:
  SAY #50111 /* ~"Eh..." Annah looks at you oddly. "He's a dabus, he is."~ */
  IF ~~ THEN REPLY #50112 /* ~"What's a 'dabus'?"~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #50113 /* ~Annah's voice drops. "Dabus is one o' *Her* kin - they take care o' the city, fixin' it and tearin' it down and buildin' it back up n' all. They talk in symbol-puzzles in the air - yeh gotta piece 'em together t'figure out the chant." Annah looks irritated. "Gives yer head pains, so it does."~ */
  IF ~~ THEN REPLY #50114 /* ~"'Her' kin? Who?"~ */ GOTO 237
  IF ~~ THEN REPLY #50302 /* ~"I see."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #50115 /* ~"The Lady of Pain." Annah makes a semicircle in the air in front of her. "They work for her, an' she protects them. Don't be mucking about wit' em, or yeh might draw her gaze."~ */
  IF ~~ THEN REPLY #50116 /* ~"Can you tell me about the Lady of Pain?"~ */ GOTO 238
  IF ~~ THEN REPLY #50301 /* ~"I see."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #50117 /* ~"Hsssst!" Annah draws a finger across her throat. "Don't yeh be rattlin' yer bone-box 'bout her. She has ears *everywhere,* so she does, so don't be bandyin' her name 'bout, aye?"~ */
  IF ~~ THEN REPLY #50118 /* ~"Oh."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50300 /* ~"All right, all right."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 239 // from:
  SAY #50153 /* ~"He jest said he was one of the dabus." She shrugs. "They don't have names."~ */
  IF ~~ THEN REPLY #50154 /* ~"Can you ask it another question?"~ */ GOTO 240
  IF ~~ THEN REPLY #50235 /* ~"That's all I wanted to know. Let's get out of here."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 240 // from: 239.0 243.0 244.1 245.1 247.1 248.0 248.2
  SAY #50155 /* ~Annah nods. The dabus continues to stare at the two of you, arms folded in its sleeves.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50156 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50157 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50213 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50214 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50215 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50216 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50217 /* ~"Ask him to tell us about the Lady of Pain."~ */ GOTO 244
  IF ~~ THEN REPLY #50229 /* ~"Ask him to tell us about Fell."~ */ GOTO 247
  IF ~~ THEN REPLY #50234 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 241 // from:
  SAY #50161 /* ~"He jest said he was one of the dabus." She shrugs. "They don't have names."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 490
END

IF ~~ THEN BEGIN 242 // from:
  SAY #50163 /* ~"Well, this one dinnae give 'is name, now *did* he, skull?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 491
END

IF ~~ THEN BEGIN 243 // from:
  SAY #50185 /* ~She shrugs. "He says he's doin' his work. Y'know - tendin' ta th' city an' all."~ */
  IF ~~ THEN REPLY #50186 /* ~"Can you ask it another question?"~ */ GOTO 240
  IF ~~ THEN REPLY #50187 /* ~"That's all I wanted to know. Let's get out of here."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 244 // from: 240.6
  SAY #50218 /* ~Annah shakes her head. "Nay, I'm not about ta walk with yeh into the Lady's shadow, so's I'm not. Yeh'll only draw the Lady's gaze if yeh rattle yer trap about her ta her kin."~ */
  IF ~~ THEN REPLY #50219 /* ~"Look, just ask it about the Lady, all right?"~ */ GOTO 245
  IF ~~ THEN REPLY #50227 /* ~"All right. Could you ask them another question for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50228 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 245 // from: 244.0 247.0
  SAY #50220 /* ~Annah shakes her head. "Nay, I won't."~ */
  IF ~~ THEN REPLY #50221 /* ~"Look, *do* it. I'm warning you."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 246
  IF ~~ THEN REPLY #50225 /* ~"All right. Could you ask them another question for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50226 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #50222 /* ~Annah crosses her arms, and her tail begins to lash back and forth.~ */
  IF ~~ THEN REPLY #50223 /* ~"Let me try then..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50224 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 247 // from: 240.7
  SAY #50230 /* ~"Nay, I won't be askin' Fell's ol' kin 'bout him, so I won't. It's bad blood, an' it don't do nobody no good ta bring up such things."~ */
  IF ~~ THEN REPLY #50231 /* ~"Look, just *ask* the damn question, all right?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 245
  IF ~~ THEN REPLY #50232 /* ~"Can you ask it another question for me?"~ */ GOTO 240
  IF ~~ THEN REPLY #50233 /* ~"Forget it, then. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 248 // from:
  SAY #50275 /* ~She pauses for a moment. "Aye... I can."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50276 /* ~"Will you?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50277 /* ~"Will you?"~ */ GOTO 249
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50281 /* ~"Then do it."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50282 /* ~"Then do it."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 249
  IF ~~ THEN REPLY #50283 /* ~"Never mind. Let's just leave."~ */ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.3
  SAY #50278 /* ~Annah shakes her head. "Nay, I'm not about ta walk with yeh into the Lady's shadow, so's I'm not. Let's not linger, aye? Nothin' ta be gained except drawing the Lady's gaze by talking ta her kin."~ */
  IF ~~ THEN REPLY #50279 /* ~"I see."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50280 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 250 // from:
  SAY #50702 /* ~"Have yeh gone pikin' *barmy,* yeh sod? Powers above an' below, yeh'd best be makin' some sorry jest, or I swears I'll do me best ta put yeh down fer *good,* so I will!"~ */
  IF ~~ THEN REPLY #50703 /* ~"I'm serious. Will you buy her, Vrischika?"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
SetGlobal("Sell_Annah","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #50704 /* ~"I was, I was. I had another question, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50705 /* ~"You're right... it was a jest in poor taste, Annah. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #52530 /* ~Annah makes no response - Ravel's mere presence seems to have silenced her. Her tail has stopped flicking, however, and her eyes have lost their hard edge. ~ */
  IF ~~ THEN REPLY #52531 /* ~"Enough with this, Ravel. What other questions did you have?"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 252 // from:
  SAY #52533 /* ~Annah seems paralyzed, her eyes wide as Ravel turns her black-veined gaze to her. You can see her trembling, her heart beating fast.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 39
END

IF ~~ THEN BEGIN 253 // from:
  SAY #52534 /* ~"Aye, life may have swallowed 'im, but he dinnae come out o' *that* end, so he didn't..."~ */
  IF ~~ THEN REPLY #52535 /* ~"Enough of this - look, Ravel, you took my mortality from me, and it has caused more harm than good. I would take it back now - you have had it overlong, I think."~ */ EXTERN ~DRAVEL~ 126
END

IF ~~ THEN BEGIN 254 // from:
  SAY #52536 /* ~"Yeh *loved* him!" Annah breaks her silence - she sounds astonished. "Yeh *loved* him, yeh did!"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 129
END

IF ~~ THEN BEGIN 255 // from:
  SAY #52537 /* ~Annah seems paralyzed, her eyes wide as Ravel turns her black-veined gaze to her. You can see her trembling, her heart beating fast. ~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 91
END

IF ~~ THEN BEGIN 256 // from:
  SAY #52639 /* ~"I donnae know." Annah stares at the face in disbelief, her hands nervously fingering her daggers. "But I'm fer leavin' 'fore we find out, aye?" ~ */
  IF ~~ THEN REPLY #52773 /* ~"Not just yet. There is something..."~ */ EXTERN ~DPREGAL~ 1
END

IF ~~ THEN BEGIN 257 // from:
  SAY #52640 /* ~"I think it means the dabus. They're always fixin' and repairin' things."~ */
  IF ~~ THEN REPLY #52772 /* ~"I see."~ */ EXTERN ~DPREGAL~ 9
END

IF ~~ THEN BEGIN 258 // from:
  SAY #52641 /* ~"Uh, it must be in the 'way.'"~ */
  IF ~~ THEN REPLY #52768 /* ~"What are you talking about?"~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0
  SAY #52642 /* ~"I think it's pregnant."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #52769 /* ~"Oh."~ */ EXTERN ~DPREGAL~ 10
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52770 /* ~"Oh."~ */ EXTERN ~DMORTE~ 510
END

IF ~~ THEN BEGIN 260 // from:
  SAY #52988 /* ~Annah is watching you, terrified. She looks like she wants to step forward, help, but she's paralyzed. "Yeh... are yeh all right...?"~ */
  IF ~~ THEN REPLY #52989 /* ~"Yes... yes... I just need a moment..."~ */ GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #52990 /* ~Annah is silent, staring at you, hypnotized. Your blood drips upon the floor, each tear splattering into a crimson circle as it strikes the flagstones of the sensorium. "What did yeh see... what did yeh see in that fiend stone?"~ */
  IF ~~ THEN REPLY #52991 /* ~"Longing..."~ */ GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #52992 /* ~Annah frowns, confused, then stares daggers at the sensory stone, as if she's thinking about shattering it. "Aye? I'm longing ta *break* that stone, I am, ta tear yeh up so!"~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52993 /* ~"No... no, I just need a moment, Annah. I'll be fine..."~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52996 /* ~"No... no, I just need a moment, Annah. I'll be fine..."~ */ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 263 // from:
  SAY #53933 /* ~"Da! What yeh be doin' in this place?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 7
END

IF ~~ THEN BEGIN 264 // from:
  SAY #53974 /* ~Annah stares hard at the pillar, eyes narrowed, her fists clenched and tail rigid. A mixture of fury and anguish is smeared across her trembling face.~ */
  IF ~~ THEN REPLY #53975 /* ~"Annah... are you all right?"~ */ GOTO 265
  IF ~~ THEN REPLY #53976 /* ~Truth: "I wish we could help him, Annah. It's a tragic thing to happen to anyone."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pillar_1","GLOBALGood",1)
~ GOTO 265
  IF ~~ THEN REPLY #53977 /* ~Truth: "It's sad, Annah, but he earned himself such a fate. Try not to suffer too greatly over it."~ */ GOTO 265
  IF ~~ THEN REPLY #53978 /* ~Truth: "I'm glad to see that bastard in there - and 'father' or no, so should you be, Annah."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_1","GLOBALGood",-1)
~ GOTO 265
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53979 /* ~Remain silent.~ */ EXTERN ~DGRACE~ 171
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #53980 /* ~Remain silent.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1 264.2 264.3
  SAY #53982 /* ~Annah smirks, spits, and turns away from the pile of rotting heads. She shrugs, but won't look at you. "No matter."~ */
  IF ~~ THEN REPLY #54056 /* ~"Did you love Pharod, Annah?"~ */ GOTO 266
  IF ~~ THEN REPLY #54057 /* ~Remain silent.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 266 // from: 265.0 268.0
  SAY #54040 /* ~Annah turns, eyes blazing. "He was my *Da.*" She bares her teeth. "I *hated* him. He only saw in me a way to scarper more bodies, more jink an' more junk ta line his vault. 'Annah dear,' 'Annah lass, yeh're the most precious thing in me vault,' he'd lie. An' he'd lie. An' he was weak o' mind an' weak o' body. An' he smelled o' corpse rot an' had all the feelin's o' a vulture picking at a corpse."~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY #54047 /* ~Annah's voice lowers, but the fire in her eyes burns brighter. "And he was the only one ever ta show me a scrap o' kindness. Is that what yeh *wanted* ta hear, is it? Yeh *pleased* now, aye?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 268 // from:
  SAY #54050 /* ~Annah smirks, spits, and turns away from the pile of rotting heads. She shrugs, but won't look at either Grace or you. "No matter."~ */
  IF ~~ THEN REPLY #54058 /* ~"Did you love Pharod, Annah?"~ */ GOTO 266
  IF ~~ THEN REPLY #54059 /* ~Remain silent.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 269 // from:
  SAY #54051 /* ~"Yeh mean *lies!*" hisses Annah.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 517
END

IF ~~ THEN BEGIN 270 // from:
  SAY #54052 /* ~"What are yeh, an idjit?! It's the brain-boxes o' sods whose lyin' sent some poor berk ta his death. It can answer almost anythin' - but it'll want a pikin' *lot* fer its answer, so's it will. Donnae be askin' it questions like that!"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 271 // from:
  SAY #54062 /* ~"It can *have* me, can it?! I think not, yeh pikin' idjit! What're yeh thinkin', yammerin' about so?" She suddenly stops, narrowing her eyes at you. "Lady's shadow, yeh better not be serious, now... if yeh are, so helps me, I'll feed yeh to it meself, I will..."~ */
  IF ~~ THEN REPLY #54063 /* ~Truth: "I was serious. Get in there, Annah, or I'll stuff you in myself."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_4","GLOBALGood",-1)
SetGlobal("Pillar_Question","AR1001",0)
LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #54064 /* ~"I wasn't serious. Pillar: All right. What *other* gifts would you accept?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54065 /* ~"Of *course* I was jesting. Let's go."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54066 /* ~"Of *course* I was jesting. Let's go."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #54129 /* ~"I..." Annah shivers as another wave of cold emanates from the portal. "Aye, I'll follow yeh... 'sides, yeh'd lose yer own head if it weren't attached. Yeh'll need a minder, so yeh will."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54130 /* ~"Perhaps so. Dak'kon? You with me?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54131 /* ~"Perhaps so. Dak'kon? You with me?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54132 /* ~"Perhaps so. Morte? You with me?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54133 /* ~"Perhaps so. Morte? You with me?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54134 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54135 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54136 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from:
  SAY #54137 /* ~"I..." Annah glares at Fall-from-Grace, then turns to you, fires in her eyes. "If *she* goes, I'll go, so I will. I'll not turn stag on yeh here, I won't."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54138 /* ~"Very well. Dak'kon? You with me?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54139 /* ~"Very well. Dak'kon? You with me?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54140 /* ~"Very well. Morte? You with me?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54141 /* ~"Very well. Morte? You with me?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54142 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54143 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54144 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from:
  SAY #56678 /* ~Annah's eyes narrow. "Yeh best be keepin' yer blind eye off me, spirit! I'll have no dealin's with yeh, so I won't."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 94
END

IF ~~ THEN BEGIN 275 // from:
  SAY #56679 /* ~As Vhailor's eyes fall upon Annah, she flinches, as if burned. "Nay, spirit, and yeh've no business a-questionin' me, yeh don't."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 95
END

IF ~~ THEN BEGIN 276 // from:
  SAY #56680 /* ~"Aye? An' what justice might THAT be?! Yer justice is not MY justice - it's as hollow as yer suit o' armor! Yeh make yer OWN justice which yeh blindly ignore when it comes tae judgin' yourself!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 96
END

IF ~~ THEN BEGIN 277 // from:
  SAY #56681 /* ~"Oh, aye? Well, yeh and yer *Mercykillers* swung many o' me friends from the leafless tree in the name o' justice when the inclination struck yeh! Burn in Baator's fires, yeh cursed half-dead thing, and may the powers water on yeh fer good measure! I wish yer armor ta be dropped inta the Foundry's vats an' melted down so that not a plate remains!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 97
END

IF ~~ THEN BEGIN 278 // from:
  SAY #56682 /* ~Annah looks desperate. "Nay, so I haven't. Now leave me be, damn yeh!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 98
END

IF ~~ THEN BEGIN 279 // from:
  SAY #57162 /* ~Annah rolls her eyes and gives a sour *Hpmh.*~ */
  IF ~~ THEN REPLY #57163 /* ~"Farewell."~ */ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 280 // from:
  SAY #57164 /* ~Annah sneers. "Tch! Why don't yeh just lay with her *now,* here in the street, why don't yeh?"~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 281 // from:
  SAY #61416 /* ~Annah bristles as you are about to follow the woman off. "What are yeh *thinkin,* yeh eejt?!" She whirls on the courtesan, drawing her punch daggers. "Away, ye brazen strumpet!"~ */
  IF ~~ THEN REPLY #61425 /* ~"Whoa! Calm down, Annah!"~ */ GOTO 282
  IF ~~ THEN REPLY #61427 /* ~"Put those damned blades away!"~ */ GOTO 282
  IF ~~ THEN REPLY #61428 /* ~Watch, see what happens.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 285
END

IF ~~ THEN BEGIN 282 // from: 281.0 281.1
  SAY #61417 /* ~She whirls on you. "An' yeh, ye soddin' piker - yeh'd best stop messin' about else I'll be trimmin' yer stem, aye?"~ */
  IF ~~ THEN REPLY #61429 /* ~"'Trimmin' my stem'? Do I have to pay for that?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61430 /* ~"Stop threatening the woman, or I'll trim *your* tail, understand?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61431 /* ~"I didn't ask for your views on the matter, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61432 /* ~"All right, all right... calm down."~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.1 282.2 282.3
  SAY #61418 /* ~Annah simmers down slightly, but her tail is still lashing back and forth. "Yeh'd best watch yerself if yeh want ta stay breathin' an' in one piece."~ */
  IF ~~ THEN REPLY #61433 /* ~"Don't *threaten* me, Annah. You're the one with one life, understand?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61434 /* ~"I didn't ask for your views on the matter, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61435 /* ~"All right, all right... just calm down. Your fiend blood's gonna boil over."~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 282.0 283.0 283.1 283.2
  SAY #61419 /* ~Annah makes a gesture with her tail... evidently meant to be obscene.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 285 // from: 281.2
  SAY #61420 /* ~Annah starts towards the woman; it looks as if she'll cut the prostitute.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 6
END

IF ~~ THEN BEGIN 286 // from:
  SAY #61421 /* ~Annah hesitates, mumbling. "Pikin' hardheads..." She sheathes her blades, crosses her arms, and satisfies herself with venomous glances directed at both you and the courtesan.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 287 // from:
  SAY #61664 /* ~"Mind your own business, succubus. I've nothing tae say to yeh."~ [ANA626A] */
  IF ~~ THEN EXTERN ~BGRACE~ 10
END

IF ~~ THEN BEGIN 288 // from:
  SAY #61665 /* ~"I've got nothing to say to you, succubus."~ [ANA625A] */
  IF ~~ THEN EXTERN ~BGRACE~ 12
END

IF ~~ THEN BEGIN 289 // from:
  SAY #61762 /* ~"Aye, it could... hurt yeh, that is."~ [ANA571B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #61763 /* ~"If yeh shut yer trap, then I'll stop waving my tail."~ [ANA569A] */
  IF ~~ THEN EXTERN ~BMORTE~ 2
END

IF ~~ THEN BEGIN 291 // from:
  SAY #61764 /* ~"Oh, aye... up yer bone-box to rip out yer brains."~ [ANA572C] */
  IF ~~ THEN EXTERN ~BMORTE~ 4
END

IF ~~ THEN BEGIN 292 // from:
  SAY #61765 /* ~"Accent? What are yeh on about?"~ [ANA614B] */
  IF ~~ THEN EXTERN ~BMORTE~ 6
END

IF ~~ THEN BEGIN 293 // from:
  SAY #61766 /* ~"Oh yea. You TRYING to sit on me lap will make a grand tale. An' a short one."~ [ANA570C] */
  IF ~~ THEN EXTERN ~BMORTE~ 8
END

IF ~~ THEN BEGIN 294 // from:
  SAY #61767 /* ~"No, only to you."~ [ANA573A] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from:
  SAY #61768 /* ~"Play the wise fella with me again, skull, an' I'll shove yer head up yer arse."~ [ANA611A] */
  IF ~~ THEN EXTERN ~BMORTE~ 11
END

IF ~~ THEN BEGIN 296 // from:
  SAY #61769 /* ~"Oh sweet suffering powers, skull, don't yeh ever get tired of hearing yerself jabber?"~ [ANA619] */
  IF ~~ THEN EXTERN ~BMORTE~ 13
END

IF ~~ THEN BEGIN 297 // from:
  SAY #61770 /* ~"Aye, and if yeh weren't yerself all the time, you might be a fine skull, too."~ [ANA610A] */
  IF ~~ THEN EXTERN ~BMORTE~ 15
END

IF ~~ THEN BEGIN 298 // from:
  SAY #61771 /* ~"Latch yer bone-box, skull! Don't be taking her name in vain like that!"~ [ANA622B] */
  IF ~~ THEN EXTERN ~BMORTE~ 17
END

IF ~~ THEN BEGIN 299 // from:
  SAY #61772 /* ~"Are you trying ta get us all carved ta pieces?! Don't yeh be tempting fate like that, skull!"~ [ANA622CA] */
  IF ~~ THEN EXTERN ~BMORTE~ 18
END

IF ~~ THEN BEGIN 300 // from:
  SAY #61773 /* ~"Oh, if I were you, I'd learn to latch my bone-box."~ [ANA616B] */
  IF ~~ THEN EXTERN ~BMORTE~ 20
END

IF ~~ THEN BEGIN 301 // from:
  SAY #61774 /* ~"I'd stop now, if I were you."~ [ANA617A] */
  IF ~~ THEN EXTERN ~BMORTE~ 22
END

IF ~~ THEN BEGIN 302 // from:
  SAY #61775 /* ~"You know skull? Yer going ta be doin' yer grinning onna tip of a pike one of these days... aye, and that'll be the least of yer worries after I'm through with yeh."~ [ANA607C] */
  IF ~~ THEN EXTERN ~BMORTE~ 23
END

IF ~~ THEN BEGIN 303 // from:
  SAY #61776 /* ~"Serves yeh right, skull. Yeh sure irritate the rest of us enough."~ [ANA624A] */
  IF ~~ THEN EXTERN ~BMORTE~ 25
END

IF ~~ THEN BEGIN 304 // from:
  SAY #61777 /* ~"Many a man's tongue's broke his nose, skull."~ [ANA618A] */
  IF ~~ THEN EXTERN ~BMORTE~ 27
END

IF ~~ THEN BEGIN 305 // from:
  SAY #61778 /* ~"I *never* tell him how I feel. Nor shall you prattle on to him about it. 'Ee has the mark of doom upon him, and I'll not sway him from his path. D'yeh hear me, skull?"~ [ANA621B] */
  IF ~~ THEN EXTERN ~BMORTE~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY #61779 /* ~"It lets my skin breath, yeh eejit."~ [ANA620B] */
  IF ~~ THEN EXTERN ~BMORTE~ 31
END

IF ~~ THEN BEGIN 307 // from:
  SAY #61780 /* ~"Why don't you go rut with an Aoskan hound!"~ [ANA588A] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #62891 /* ~"She's one o' the fiends, one o' the succubi, she is. She'll take yer measure, then she'll take yer soul to the Lower Planes, so's she will."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 213
END

IF ~~ THEN BEGIN 309 // from:
  SAY #63485 /* ~TBD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #63693 /* ~"No, it's fer scratchin' me back, yeh soddin' box!"~ [ANA565A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 23
END

IF ~~ THEN BEGIN 311 // from:
  SAY #63694 /* ~::Sigh::~ [ANA565BC] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #63695 /* ~"What kinda stupid question's *that,* yeh pikin' sod-box?!"~ [ANA566C] */
  IF ~~ THEN EXTERN ~BNORDOM~ 25
END

IF ~~ THEN BEGIN 313 // from:
  SAY #63696 /* ~"*WHAT?!*"~ [ANA567E] */
  IF ~~ THEN EXTERN ~DMORTE~ 643
END

IF ~~ THEN BEGIN 314 // from:
  SAY #63859 /* ~"Leave 'im alone, already; yeh don't know him!"~ [ANA568C] */
  IF ~~ THEN EXTERN ~BVHAILOR~ 3
END

IF ~~ THEN BEGIN 315 // from:
  SAY #64221 /* ~::Scowls at Morte::~ */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 187.15 477.15
  SAY #67053 /* ~At the mention of the name, Annah spits three times and makes a semi-circle over her heart. "Hssst! Are yeh *daft?!* Don't be mentioning *her* name, if yeh value yer life!"~ */
  IF ~~ THEN REPLY #67055 /* ~"Why?"~ */ GOTO 317
  IF ~~ THEN REPLY #67054 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67056 /* ~"Forget I asked, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #67057 /* ~"She's the evilest o' the Gray Ladies, she is." Annah's voice drops to almost a whisper, as if afraid of being overheard. "Filthy mean, an' with more power tae toss around than some powers. It's said she's all a-brambles through and through - even her *heart.* It's said yeh can NEVER kill her, 'cause her body's like a tree - yeh lop off one limb, an' there's always another still growing somewhere *else* across the planes."~ */
  IF ~~ THEN REPLY #67058 /* ~"You speak as if she's still alive."~ */ GOTO 318
  IF ~~ THEN REPLY #67059 /* ~"Never mind. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67060 /* ~"Forget I asked, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 317.0
  SAY #67061 /* ~"A-course she is. She *has* t'be." Annah's voice drops again. "How would yeh *kill* a thing such as her? That's why the Lady had to MAZE her, so it's said."~ */
  IF ~~ THEN REPLY #67062 /* ~"Hmmm. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67063 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 187.16 477.16
  SAY #67064 /* ~"A piece of that hag? Nay, I donnae know where yeh'd find such a thing." Annah thinks for a moment, her tail waving slowly back and forth, then she smirks. "A-course, she's probably left enough o' her seed scattered around the planes that yeh might be able tae ask one o' them."~ */
  IF ~~ THEN REPLY #67065 /* ~"'Seed'? What do you mean?"~ */ JOURNAL #67068 /* ~Annah said that Ravel had 'seed' - either one daughter or several daughters, scattered throughout the planes. I wonder if I could find one of them... maybe they would know how to reach her maze. I don't know where I'd begin looking, though.~ */ GOTO 320
  IF ~~ THEN REPLY #67066 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67067 /* ~"Forget I asked, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #67069 /* ~"Seed, kin, wee ones - Oul' Ravel's said tae have a mess o' daughters, so the tale-tellers say - or just one, dependin' on which tale-teller yeh ask - an' whether they're downing bub when yeh talkin' to 'em." Annah's voice drops again. "Ravel birthed 'em from some *fiend,* the tales say."~ */
  IF ~~ THEN REPLY #67070 /* ~"Do you think one of these daughters might still be around? They might know something about how to reach her."~ */ GOTO 321
  IF ~~ THEN REPLY #67071 /* ~"Interesting. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67072 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #67073 /* ~Annah shrugs. "I donnae know. I sure as copper wouldn't want tae *find* one o' em. If they're half as mean as she is..."~ */
  IF ~~ THEN REPLY #67074 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67075 /* ~"Maybe I'll keep an eye out for one of them, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 187.10 477.10
  SAY #67076 /* ~"Eh?" She frowns. "What are yeh on about?"~ */
  IF ~  Class(Protagonist,FIGHTER)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67077 /* ~"I want to give up weapon craft for a while and take up stealthier pursuits."~ */ GOTO 325
  IF ~  Class(Protagonist,MAGE)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67078 /* ~"I'd like to shelve the Art for a while and try my hand at stealthier pursuits."~ */ GOTO 325
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67079 /* ~"I want to give up weapon craft for a while and return to the thieving profession. Can you teach me?"~ */ GOTO 323
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67080 /* ~"I'd like to shelve the Art for a while and return to the thieving profession. Can you teach me?"~ */ GOTO 323
  IF ~  Class(Protagonist,THIEF)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67081 /* ~"I wanted to learn more about stealth and thieving from you."~ */ GOTO 348
  IF ~~ THEN REPLY #67082 /* ~"Forget it. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67083 /* ~"Never mind, Annah. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.2 322.3
  SAY #67085 /* ~She looks skeptical, then rolls her eyes. "Aye, I can... but to do it, yeh'll need to shut your trap and lissen to me... and follow my lead, jig?" She looks you up and down. "The first thing yeh need to do is change your stance, none of that loin-juttin' and leading with yer stem that yeh seem to favor..."~ */
  IF ~~ THEN REPLY #67086 /* ~"All right..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0 344.0
  SAY #67087 /* ~Annah puts you through your paces. At the end of a short while, she takes a step back and nods; she seems impressed. "Aye, yeh've got the hang of it. Quick to catch on, yeh are."~ */
  IF ~~ THEN REPLY #67088 /* ~"I had some other questions for you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67089 /* ~"Thanks. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 322.0 322.1
  SAY #67090 /* ~She looks you up and down - once - then looks at you with a queer expression. "Are yeh *serious?*"~ */
  IF ~~ THEN REPLY #67091 /* ~"Yes, I want to learn how to be a thief. Can you teach me?"~ */ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #67092 /* ~She looks at you for a moment, then shakes her head. "Nay, yeh're too *slow,* yeh are - yeh move like a sack of stones." She frowns. "Yeh'd need tae be quicker on yer feet and quicker tae strike for me to be able tae teach yeh *anythin'.*"~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #67093 /* ~Lash out, grab her arm.~ */ GOTO 327
  IF ~  CheckStatGT(Protagonist,13,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67094 /* ~Lash out, grab her arm.~ */ GOTO 328
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67095 /* ~Lash out, grab her arm.~ */ GOTO 330
  IF ~~ THEN REPLY #67096 /* ~"Very well, then. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67097 /* ~"Never mind, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #67098 /* ~"Hssst!" As you lash out, Annah immediately dodges back with a hiss. "Aye, I saw *that* comin' 'cross the SPIRE, I did. Slow, yeh are, and ye'll need tae be a LOT faster tae catch me, yeh will." She relaxes slightly. "Still - yeh *do* got some whip-quickness in yer limbs..."~ */
  IF ~~ THEN REPLY #67099 /* ~"So will you teach me?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 328 // from: 326.1
  SAY #67100 /* ~"Hssst!" As you lash out, Annah dodges back - but it's not fast enough, and your hands snag the edge of one of her punch daggers, drawing blood. ~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #67101 /* ~Annah looks at the blood on your hands and watches the wound slowly seal itself, the tear mending as you both watch. After a moment, she spits. "Serves yeh right, idjit! Yeh limbs told me yeh were moving before yeh knew it yourself." She relaxes slightly. "Still - yeh *do* got some whip-quickness in yer limbs..."~ */
  IF ~~ THEN REPLY #67737 /* ~"So will you teach me?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 330 // from: 326.2
  SAY #67102 /* ~Your hand whips out like a whip, and before Annah can move, your hand is locked tightly around her wrist. She immediately begins hissing, trying to wrench herself from yer grasp. "Let go, yeh idjit! Let go, or I'll tear yeh a new bolthole, I will!"~ */
  IF ~~ THEN REPLY #67103 /* ~Let her go.~ */ GOTO 331
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #67104 /* ~Annah leaps back; her cheeks are flushed, and she is breathing heavy. "Yeh keep yer hands *offa* me!" Her breathing slows, then she frowns. "Yeh're fast, yeh are, I'll give yeh that. No one's been able to put the grab on me wrist like yeh just did... yeh must have snake's blood in yeh."~ */
  IF ~~ THEN REPLY #67105 /* ~"So will you teach me?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 332 // from: 327.0 329.0 331.0
  SAY #67106 /* ~She looks skeptical, then rolls her eyes. "Aye, I can... but to do it, yeh'll need to shut your trap and lissen to me... and follow my lead, jig?" ~ */
  IF ~~ THEN REPLY #67107 /* ~"Very well..."~ */ GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.0
  SAY #67108 /* ~"There's a few things yeh'll need to pick up on if yeh want tae be hard to catch... yeh'll need to know the ways of staying hid when yeh don't want no one else t'see yeh."~ */
  IF ~~ THEN REPLY #67109 /* ~"All right."~ */ GOTO 334
  IF ~~ THEN REPLY #67110 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #67111 /* ~"Yeh got to know where yeh are, and how quick yeh can become PART of where yeh are." She flicks her tail after each word, as if for emphasis. "When yeh have the way of that, yeh'll be like a shadow, yeh will."

^NNOTE: If you choose to hide in darkened areas, you will gain a bonus to your chance to hide in shadows.^-~ */
  IF ~~ THEN REPLY #67112 /* ~"So how do I do that?"~ */ JOURNAL #67734 /* ~As part of my thief instruction, Annah told me how to hide in shadows - basically it can be done anywhere in any surrounding, but it doesn't work when I'm attacking someone or trying to pick a lock on a door, picking a lock on a chest... or picking someone's pockets. ~ */ GOTO 335
  IF ~~ THEN REPLY #67113 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #67114 /* ~"More important is how yeh NOT do it - yeh can't stay hid when someone's got an eye for yeh, yeh're attacking someone, nor when yeh're trying to fix a lock t'open, so be sure tae be careful WHEN yeh take to hiding, jig?"

^NNOTE: To Hide in Shadows, select the Stealth icon from the Special Abilities button on the quick menu. When selected, you will have a chance to hide in shadows. Any action you take against another person or object will nullify the Hide in Shadows.^-~ */
  IF ~~ THEN REPLY #67115 /* ~"So what's the point of hiding in shadows, then?"~ */ JOURNAL #67735 /* ~Annah told me one benefit of hiding in shadows - when I step out of hiding and get the drop on someone, my attacks will hurt a LOT more. I think it's called a 'Backstab.' I'll have to try it out at some point. ~ */ GOTO 336
  IF ~~ THEN REPLY #67116 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #67117 /* ~"BECAUSE..." Annah corkscrews her tail for emphasis. "When yeh step outta the shadows and give someone that extra TWIST o' the knife in the back, it HURTS a lot more. It's a special trait of being unseen, it is."

^NNOTE: When you strike someone from the shadows, it can double, triple, even quadruple your damage.^-~ */
  IF ~~ THEN REPLY #67118 /* ~"Oh."~ */ GOTO 337
  IF ~~ THEN REPLY #67119 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #67120 /* ~"Next thing yeh'll learn is how to nick something from someone's pockets. It's a small matter, but it's like being part of the shadows - yeh got to choose yer mark carefully, jig? Clippin' coins off Hivers is easy, but more powerful and knowing folks are harder to pull the sheet over. Angry berks yeh can't even try to nick anything from them - chances are if they're on to yeh, yeh'll be drawing their gaze, yeh will."~ */
  IF ~~ THEN REPLY #67121 /* ~"Sounds too risky to be of any use."~ */ GOTO 338
  IF ~~ THEN REPLY #67122 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 338 // from: 337.0
  SAY #67123 /* ~"Well..." Annah smirks. "The purses of a lot of townsfolk can add up, they can. And sometimes, they've tucked away something more than copper, and that's a find, it is." She smiles. "An' merchants - yeh can nick something from one of their stores, if ye're quick enough."

^NNOTE: <PICKPOCKET> Stealing from stores is done through a button on the store screen.^-~ */
  IF ~~ THEN REPLY #67124 /* ~"What if the merchants keep their stock locked up?"~ */ GOTO 339
  IF ~~ THEN REPLY #67125 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #67126 /* ~"Well now, yeh got to know the way o' how tae coax a lock that won't open tae open, aye? It's a hard thing oftimes tae do, but anything's that's locked up is worth snapping open..." She frowns. "Well, mosttimes."

^NNOTE: <PICKLOCKS>^-~ */
  IF ~~ THEN REPLY #67127 /* ~"All right."~ */ GOTO 340
  IF ~~ THEN REPLY #67128 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #67129 /* ~"An' that brings us to the next thing, it does. If anyone's locked up something they don't want yeh to have, then it's copper-sure that they might have left something *else* fer yeh to find with the lock - usually a one of them spinnin' beheadin' blades, a tear-paper bag of death-ants, a spray of baatezu backwash..." Annah ticks off all the traps on her fingers. "Or a nasty spell. Or two. Or three." ~ */
  IF ~~ THEN REPLY #67130 /* ~"So how do I spot these things?"~ */ GOTO 341
  IF ~~ THEN REPLY #67131 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #67132 /* ~"It's like the 'being a shadow' bit - yeh need tae pay *mind* tae yer surroundings. When yeh step into an area, take a look around - anythin' out-of-sorts? A draft in a sealed corridor? A section of floor with a weird design? An important-lookin' chest that's put squat in a middle of a room?" Annah jabs her tail at you. "That's when yeh look fer traps, yeh do."

^NNOTE: To look for traps, turn the 'Find/Remove' traps icon from the quick menu Special Abilities "on." When it's on, you have a chance of detecting trapped areas, which will be highlighted with your cursor.^-~ */
  IF ~~ THEN REPLY #67133 /* ~"So how do I avoid these things?"~ */ GOTO 342
  IF ~~ THEN REPLY #67134 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #67135 /* ~"Avoidin' it? Well, it's *skinnin'* the trap off the place yeh want to open or be that's the trick - unless yeh're really sure, yeh have about the same chance of removing a trap as yeh do finding it - but if yeh found it..." Annah shrugs. "Yeh should have a good chance. Mosttimes."

^NNOTE: <DISARMTRAP> If you fail, you have a chance of setting off the trap.^-~ */
  IF ~~ THEN REPLY #67136 /* ~"Anything else?"~ */ GOTO 343
  IF ~~ THEN REPLY #67137 /* ~"I think I understand the basics, Annah."~ */ GOTO 344
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #67138 /* ~"Nothing more I can say - it's all a matter of trial an' error, it is. I wish yeh luck..." She gives a wicked grin. "But not on any mark I've chosen, aye?"~ */
  IF ~~ THEN REPLY #67139 /* ~"All right." ~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 333.1 334.1 335.1 336.1 337.1 338.1 339.1 340.1 341.1 342.1 343.0
  SAY #67140 /* ~"All right, then..." She looks you up and down. "Let's get down to th'blood and th'sweat that comes with the job." She frowns as she studies you. "The first thing yeh need to do is change your stance - none of that loin-juttin' and leading with yer stem that yeh seem to favor..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67141 /* ~"All right..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 324
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #67142 /* ~"All right..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 345
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67143 /* ~"All right..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67144 /* ~"All right..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
END

IF ~~ THEN BEGIN 345 // from: 344.1
  SAY #67145 /* ~Annah puts you through your paces, testing your reflexes and balance - as she tests you, you feel some distant part of yourself awakening, remembering, and your body begins to echo these memories. Annah seems surprised at your skill, but she quickly puts the pressure on until you find yourself hard-matched to keep up with her. At the end, she nods, impressed. "Aye, yeh've got the hang of it. Quick to catch on, yeh are."~ */
  IF ~~ THEN REPLY #67146 /* ~"I had some other questions for you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67147 /* ~"Thanks. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 344.2 344.3
  SAY #67148 /* ~Annah puts you through your paces, testing your reflexes and balance - as she tests you, it's like a stone in your mind cracks and falls away: with every test, it's like you're opening a new door - faint images of darkened alleys, rooftop watches, cutting purses in busy markets, springing locks on gates - these memories seem to flow into you like a river, and you find yourself easily matching each test Annah puts to you - then challenging her in return.~ */
  IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #67149 /* ~Annah quickly... and eagerly... gets into a contest of one-upmanship with you, trying to trick you one way, then the next, and you casually meet each of her tricks, then respond with another. At the end of your session, Annah backs off and seems to take you in a new light. "Are yeh *sure* yeh haven't done this before? Yeh - yeh're a quick one, yeh are. I think I learned more from yeh than yeh from me."~ */
  IF ~~ THEN REPLY #67305 /* ~"I think I'd done some of what you'd taught before. In any event, I had some other questions for you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67306 /* ~"Thanks for the training. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 322.4
  SAY #67308 /* ~"Aye... I could. Like what?"~ */
  IF ~  Global("Annah_Stealth","GLOBAL",0)
~ THEN REPLY #67309 /* ~"I wanted to learn more about stealth from you."~ */ GOTO 349
  IF ~  Global("Annah_Open_Locks","GLOBAL",0)
~ THEN REPLY #67310 /* ~"Anything you could teach about picking locks would be appreciated." ~ */ GOTO 351
  IF ~  Global("Annah_Traps","GLOBAL",0)
~ THEN REPLY #67311 /* ~"Can you teach me anything about removing or disarming traps?"~ */ GOTO 353
  IF ~  Global("Annah_Pick_Pockets","GLOBAL",0)
~ THEN REPLY #67312 /* ~"Do you have any advice on how to pick someone's pocket?"~ */ GOTO 355
  IF ~~ THEN REPLY #67313 /* ~"Actually, I thought I might be able to teach you some things."~ */ GOTO 363
  IF ~~ THEN REPLY #67314 /* ~"Never mind. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67315 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #67316 /* ~She nods. "Aye, well, the trick to being not-seen is knowing where yeh are and how quick yeh can become PART of where yeh are. There's some tricks I've learned - one is tae hide in a place where someone's not expectin' to look - like on the ceiling of a room - or even *change* yer hiding place when they're lookin' for yeh..." She smiles wickedly. "There was one time I was hidin' from this brace of hardheads... the 'law'... an' what I *did* was..." ~ */
  IF ~~ THEN REPLY #67317 /* ~"Yes...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Stealth","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,STEALTH,RAISE,3)
~ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #67318 /* ~"...an' so, there the hardhead was, face down in ditch water, his breeches gone, and the rest of his three fellas locked in the great-grandam's room, with her howling to the skies." Annah takes a breath. "An' there yeh are. If yeh can put the same thing to good use, it might help yeh hide when yeh really need to."~ */
  IF ~~ THEN REPLY #67319 /* ~"So let's see: be sure to fall back to places you know well, preferably in a surrounding where there are other distractions - and if there aren't any, make some."~ */ GOTO 362
END

IF ~~ THEN BEGIN 351 // from: 348.1
  SAY #67320 /* ~"Pickin' at locks - well, I can tell yeh what NOT to do. First is, be sure yeh carry a little oil or something else to wet the tip o' yer lockpick in case the lock's stubborn; one other thing I've learned - from ol' stutter-crutch Pharod, no less - is many of the locks in Sigil are actually patterned by this one locksmith from a stone's age ago, an' they have this common catch yeh-"~ */
  IF ~~ THEN REPLY #67321 /* ~"Go on..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Open_Locks","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,3)
~ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #67322 /* ~"...so it was gettin' near peak, with the first fingers o' dawn creepin' in, an' I knew they'd be searching the attics for me. But because the attic lock was Sigil-born, I knew how to jam the catch so they couldn't force it, and it bought me enough time to scarper away across the roof with the silver, it did."~ */
  IF ~~ THEN REPLY #67323 /* ~"So that lock tumbler 'type' is the one on which a lot of locks are based... that should help if I ever need to pick a similar lock, then." ~ */ GOTO 362
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY #67324 /* ~"Well, now that's an easy one tae give the knowing on - the most important thing is that someone had to SET the trap, and that they KNOW about it once they've set it, so be sure to look for signs of it when yeh're walkin' where someone keeps their valuables. There was one time, when I was enterin' the Grand Demesne in the Clerk's Ward, an'..."~ */
  IF ~~ THEN REPLY #67325 /* ~"Yes..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Traps","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,TRAPS,RAISE,3)
~ GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #67326 /* ~"...an' the fact the carpet was new around the floor of the cabinet told me he'd had it fitted recently, so I pried it up with me dags, an' dead-sure there were acid stains on the stones beneath. So I knew to look for an acid blossom when I popped the cabinet and nicked his coppers."~ */
  IF ~~ THEN REPLY #67327 /* ~"So when looking to find and disarm traps, not only look for signs that they've been set, but look for signs for what someone would have had to do to avoid them once they've been set."~ */ GOTO 362
END

IF ~~ THEN BEGIN 355 // from: 348.3
  SAY #67328 /* ~"Well, nicking someone's purse isn't as hard as yeh would think..." Annah shrugs. "It's mostly a-matter o' doing it quick and gentle-like, so they don't feel their purses gettin' lighter. If yeh're havin' a hard time of it, it may be in the way yeh're doin' it." She nods at you. "Show me."~ */
  IF ~~ THEN REPLY #67329 /* ~"Well, I don't want to pick someone's pockets just randomly with you watching. Maybe another time."~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #67330 /* ~"Nay, try and nick some jink from me. I'll tell yeh what yeh're doing wrong."~ */
  IF ~~ THEN REPLY #67331 /* ~"All right... uh, where do you keep it?"~ */ GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.0
  SAY #67332 /* ~"That's what *yeh* have to find out, if yeh want to be a true-blooded thief."~ */
  IF ~~ THEN REPLY #67333 /* ~"All right... let me try and nick... er, pick pocket you for it."~ */ DO ~SetGlobal("Annah_Pick_Pockets","GLOBAL",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 358
END

IF ~~ THEN BEGIN 358 // from: 357.0
  SAY #67334 /* ~As soon as you make a move towards her, Annah holds up her hand. "All right, stop - yeh've already messed up, yeh have."~ */
  IF ~~ THEN REPLY #67335 /* ~"What?"~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY #67336 /* ~"Yeh have to watch yeh're approach, yeh do - yeh can't just be a thokola an' muscle yer way up to yer mark - especially when yeh look like yeh do." Annah suddenly puts her hands on her hips and turns to look off to your side, as if disinterested. "Yeh got to act like the mark is nothin' to yeh - less than nothin'. Yeh don't care what he's got at all."~ */
  IF ~~ THEN REPLY #67337 /* ~"All right - so I act like I don't care. What then?"~ */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #67338 /* ~"Then yeh got to make sure yeh *strike* at the right time - I usually do it when I move by someone; yeh should do it right *after* yeh move by someone, 'cause they'll probably be too frightened tae turn around to see where yeh've gone. And another thing yeh should do..." ~ */
  IF ~~ THEN REPLY #67339 /* ~"Yes...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,1000)
~ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0
  SAY #67340 /* ~"...so dress down a little, maybe try not to look so threatenin', and yeh might catch yer mark off his guard - or off his gourd, if he's been hitting the bub."~ */
  IF ~~ THEN REPLY #67341 /* ~"All right. So try to act non-threatening, relaxed, like the target means nothing to you, then strike when you're just out of his sight?"~ */ GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 350.0 352.0 354.0 361.0
  SAY #67342 /* ~She nods. "Aye, that's the dark of it."~ */
  IF ~~ THEN REPLY #67343 /* ~"I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67344 /* ~"All right. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 348.4
  SAY #67345 /* ~"What? Are yeh *serious?*" She raises an eyebrow. "Yeh? Teach *me?*"~ */
  IF ~  Global("PC_Annah_Stealth","GLOBAL",0)
CheckStatGT(Protagonist,49,STEALTH)
~ THEN REPLY #67346 /* ~"I thought I could give you some pointers about being more stealthy."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",1)
~ GOTO 364
  IF ~  Global("PC_Annah_Open_Locks","GLOBAL",0)
CheckStatGT(Protagonist,49,LOCKPICKING)
~ THEN REPLY #67347 /* ~"There's some tricks to opening locks I thought I could share with you."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",2)
~ GOTO 364
  IF ~  Global("PC_Annah_Pick_Pockets","GLOBAL",0)
CheckStatGT(Protagonist,49,PICKPOCKET)
~ THEN REPLY #67348 /* ~"Yes, there's some things about picking pockets I thought I could teach you."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",3)
~ GOTO 364
  IF ~  Global("PC_Annah_Traps","GLOBAL",0)
CheckStatGT(Protagonist,49,TRAPS)
~ THEN REPLY #67349 /* ~"Yes, I picked up some know-how on how to find and remove traps that I wanted to pass along."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",4)
~ GOTO 364
  IF ~~ THEN REPLY #67350 /* ~"Never mind; maybe I don't have anything to teach right now. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67351 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 364 // from: 363.0 363.1 363.2 363.3
  SAY #67352 /* ~"Aye?" She smirks. "Like what?"~ */
  IF ~  Global("Annah_Training","GLOBAL",1)
~ THEN REPLY #67353 /* ~"Well, I think your tail gives you away a lot more than you realize. I've noticed you twitch it when you're being watched or nervous; it's enough so someone looking in the shadows for you might notice. And another thing..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Stealth ","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",STEALTH,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",2)
~ THEN REPLY #67354 /* ~"You're using the wrong lockpicks when you try and pick locks. The ones you have could use the following: one with a Y-tip, and another with..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Open_Locks","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",LOCKPICKING,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",3)
~ THEN REPLY #67355 /* ~"When you try and pick someone's pockets, you should use your body to better effect; it shouldn't be too hard for you to distract a mark from his belongings. And-"~ */ DO ~SetGlobal("PC_Annah_Pick_Pockets","GLOBAL",1)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 365
  IF ~  Global("Annah_Training","GLOBAL",4)
~ THEN REPLY #67356 /* ~"Not only should you *look* for signs that traps have been placed, but there's other signs you can tell as well, from sulfur in the air, to changes in temperature, to- "~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Traps","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",TRAPS,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
END

IF ~~ THEN BEGIN 365 // from: 364.2
  SAY #67357 /* ~"Eh?" Annah blinks. "Are yeh sayin' I should play the harlot?"~ */
  IF ~~ THEN REPLY #67358 /* ~"Well, why the hells' else are you wearing that thing? I thought that was your whole plan."~ */ GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #67359 /* ~Annah looks down, then back up. "I just get *hot,* I do; it's my blood, I think. This vest lets my skin breathe."~ */
  IF ~~ THEN REPLY #67360 /* ~"Well, you add a few more slashes to the front of that, and your marks aren't going to care if you're picking their pocket or not. Now, watch my hands - when you are about to cut the purse, you need-"~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #67361 /* ~As you reach out to show Annah how to cut purses, she stiffens. ~ */
  IF ~~ THEN REPLY #67362 /* ~"What *now?*"~ */ GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #67363 /* ~"I cannae help it - it's your fault!" Annah squeezes her eyes closed. "Yeh shouldn't have said anythin' about the vest, now I'm all a-thinkin' about it, I am." ~ */
  IF ~~ THEN REPLY #67364 /* ~"Look me in the eye - now just calm down."~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #67365 /* ~Annah's gaze locks with yours, and you notice she's still stiff - and she's biting her lip.~ */
  IF ~~ THEN REPLY #67366 /* ~"Look, I'll show you quick, and we'll be done with this."~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #67367 /* ~You lean in, and as you do, Annah suddenly pushes herself into you, and her hands wrap around your back. She holds you gently for a moment, then squeezes tightly, sniffing slightly around your neck, then up along your cheekbone. "I... I like the way yeh smell, I do." She rubs her cheek against yours - and to your surprise, you can feel how smooth her skin is. "Your skin's like leather, it is."~ */
  IF ~~ THEN REPLY #67368 /* ~Check your purse.~ */ GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #67369 /* ~You reach down and grab Annah's tail, then slowly unwind it from your pack. Annah steps back, and she gives a grin. "Is that what yeh meant? Nickin' a purse offa a mark like that, aye?" She seems a little flushed, and you notice her heart is beating fast. "Dead-easy, it is."~ */
  IF ~~ THEN REPLY #67370 /* ~"Yes... I think you've got the hang of it. Look, I had some other questions..."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ GOTO 477
  IF ~~ THEN REPLY #67371 /* ~"So it is... let's move on."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 364.0 364.1 364.3
  SAY #67372 /* ~At the end of your instruction, Annah nods quietly. "Aye, I hadn't thought of those things, I hadn't." She frowns. "I would've figured it out eventually, so don't think yeh're some Festhall teacher or anythin', jig?"~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN REPLY #67373 /* ~"Just trying to help."~ */ GOTO 373
  IF ~~ THEN REPLY #67374 /* ~"Well, so much for gratitude. I had some other questions for you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67375 /* ~"You're welcome. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 373 // from: 372.0
  SAY #67376 /* ~"More like yeh're tryin' tae make me look like a *fool,* yeh are."~ */
  IF ~~ THEN REPLY #67377 /* ~"What in the hells are you talking about?"~ */ GOTO 374
  IF ~~ THEN REPLY #67378 /* ~"Well, so much for gratitude. I had some other questions for you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67379 /* ~"You're welcome. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #67380 /* ~"Here yeh come, stridin' inta Pharod's Court, an' him all bowing and curtseying to yeh, playin' the boot-lick, then he ORDERS me tae go with yeh, which he's NEVER done, and yeh start puttin' on airs about how yeh know more than me... what gives yeh the *right?* Who do yeh think yeh ARE?"~ */
  IF ~~ THEN REPLY #67381 /* ~"I'm JUST trying to help you, Annah."~ */ GOTO 375
  IF ~~ THEN REPLY #67382 /* ~"Well, so much for gratitude. I had some other questions for you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67383 /* ~"You're welcome. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #67384 /* ~"Oh, aye? Are yeh *sure* that every time I nick somethin' from someone's purse, or spring a lock, yeh aren't just shakin' your head behind your back, going, 'clumsy, stupid girl, she doesn't know how it's done.' Does that make yeh feel better about yerself, does it?!"~ */
  IF ~~ THEN REPLY #67385 /* ~"Annah, I only showed you those things to make you even *better* than you are - I wasn't lording it over you. I *don't* think you're clumsy, and I *don't* think you're stupid."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse","GLOBAL",1)
~ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #67386 /* ~Annah frowns, her tail flicking back and forth. "Aye, well - yeh'd best be careful. I don't take kindly tae pity, I don't."~ */
  IF ~~ THEN REPLY #67387 /* ~"Fair enough. I just had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67388 /* ~"Very well. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 377 // from: 187.0 477.0
  SAY #67389 /* ~"The spot where I found yer body lies behind the Painted Door in the Hive Red-Light District - the door's on the northern street, north and east o' the Smoldering Corpse Bar. Beyond the door is an alley where I found your body. Strange place, it is. Not many berks'll go there."~ */
  IF ~~ THEN REPLY #67390 /* ~"Strange place? How?"~ */ GOTO 380
  IF ~~ THEN REPLY #67391 /* ~"I see. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67392 /* ~"All right, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 378 // from: 187.1 477.1
  SAY #67393 /* ~"There's a strange alley on th' far side of the Barking Dog cackle-house - that's where we need to head, it is. There's a door in back o' the tenement we can head through."~ */
  IF ~~ THEN REPLY #67394 /* ~"Strange alley? What do you mean by that?"~ */ GOTO 380
  IF ~~ THEN REPLY #67395 /* ~"I see. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67396 /* ~"All right, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 379 // from: 187.2 477.2
  SAY #67397 /* ~"There's a spot south and east a-ways down the strange alley, past an oul' gate, then down some steps, an' that's the spot where I found yeh."~ */
  IF ~~ THEN REPLY #67398 /* ~"Strange alley? What do you mean by that?"~ */ GOTO 380
  IF ~~ THEN REPLY #67399 /* ~"I see. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67400 /* ~"All right, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 380 // from: 377.0 378.0 379.0
  SAY #67401 /* ~"Some berks with less courage than names say it's all a-*haunted,* it is." Annah spits and makes a semi-circle over her heart. "It's wash. Sometimes the wind blows through the alley and makes weird sighing noises, but that don't mean there's spectres and haunts and the like."~ */
  IF ~~ THEN REPLY #67402 /* ~"I see. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67403 /* ~"All right, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 187.3 477.3
  SAY #67404 /* ~"Aye, what?"~ */
  IF ~~ THEN REPLY #67405 /* ~"Well, what were you doing looking for bodies in the Pregnant Alley? I mean, you would have had to creep your way through the Tenement, then past the dabus to get there - and the place isn't even heavily trafficked as the rest of the Hive, so why would you even look for bodies there?"~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #67406 /* ~Annah shrugs. "Rest o' the Hive is picked clean, it is. Got tae find new spots tae poach deaders, yeh do."~ */
  IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #67407 /* ~As Annah speaks, you feel a crawling sensation in the back of your skull, and you suddenly realize she's lying to you. ~ */
  IF ~~ THEN REPLY #67408 /* ~"Are you *sure,* Annah?"~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #67409 /* ~There must be something in your tone, because it stops Annah's tail dead for a moment, then it resumes, a little slower than before. "Aye... I *think.*" She frowns, and she seems a little uncertain. "I don't *usually* go there to scarp deaders, I don't - tae think of it, I'd never even been there before. I just kind of came across it."~ */
  IF ~~ THEN REPLY #67410 /* ~"So why did you go there?"~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #67411 /* ~"I... I donnae! I just did - and lucky for yeh, I did, or yeh'd still be there!"~ */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #67412 /* ~The same crawling sensation as before worms up the back of your skull, and with it comes another realization: Annah's lying, but oddly enough, she doesn't *know* she's lying.~ */
  IF ~~ THEN REPLY #67413 /* ~"Annah, were you compelled to go there? Is that how you found me?"~ */ DO ~AddexperienceParty(2500)
SetGlobal("Annah_Alley_Geas","GLOBAL",1)
~ JOURNAL #67414 /* ~When Annah came across my body, I think she was *compelled* to find it somehow. She said my corpse was like a lodestone to her, and she had to seek it out. ~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #67415 /* ~She nods... slowly. "Aye, mayhap." She gives a half-hearted shrug. "It wasn't one of my usual haunts, but I... I couldn't *help* myself. I just *wanted* tae see what was there that day - and there yeh were, dead as a timber." She pauses. "Yeh were like a lodestone, yeh were. I donnae know what led me to find yeh."~ */
  IF ~~ THEN REPLY #67416 /* ~"Hmmm. Curious. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67417 /* ~"I just wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 388 // from: 187.4 477.4
  SAY #67418 /* ~She nods, a little warily. "Aye, yeh did - I haven't forgot yeh."~ */
  IF ~  GlobalGT("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67419 /* ~"When I asked about Pharod, you told me he was south and west of the Mortuary - when he *wasn't.*"~ */ GOTO 389
  IF ~  Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67420 /* ~"What were you doing by the Mortuary?"~ */ GOTO 390
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #67421 /* ~"Aye, I did - and yeh'd have done the same if some scarred wreck came to yeh an' asked where he could find your Da." She shrugs. "Yeh found him anyway, so I don't want tae hear yeh carryin' on about it, I don't."~ */
  IF ~~ THEN REPLY #67422 /* ~"What were you doing by the Mortuary?"~ */ GOTO 390
  IF ~~ THEN REPLY #67423 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67424 /* ~"Well, if you had just told me where he was, it would have been a lot easier on us both. Now let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 390 // from: 388.1 389.0
  SAY #67425 /* ~"It's my territory - I was lookin' for deaders, I was." She looks you up and down, then smirks. "Found a walkin' one, I did."~ */
  IF ~~ THEN REPLY #67426 /* ~"I see. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67427 /* ~"Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 187.5 477.5
  SAY #67428 /* ~Annah looks at you warily, and her tail stops flicking for a moment, then resumes, slower than before. "Aye, *mayhap* I found somethin'. But *if* I found anythin', it's mine by right, it is - the other bits are in Pharod's keeping."~ */
  IF ~~ THEN REPLY #67429 /* ~"Annah, I don't have time for games... *what* did you find on my corpse?"~ */ GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0
  SAY #67430 /* ~"Well, yeh had some fist irons, yeh did... an' a little bit o' jink, but I left that for the Dusties so they'd think I was a wee bit honest. Yeh had an ugly ring that I kept..." She dips her finger into her arm bracers and pulls forth a small ring with a stone mounted on it. "Worth thrice-more than the jink an' the irons, it was." She studies the ring and squints. "Too bad it's too ugly tae wear."~ */
  IF ~~ THEN REPLY #67431 /* ~"I'd like that ring back. Now."~ */ DO ~GiveItemCreate("Ring03",Protagonist,0,0,0)
~ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #67432 /* ~She studies the ring with a frown, glances at you, then back at the ring. With a sneer, she flicks the ring to you. "Dinnae want the ugly thing anyway, I didn't."~ */
  IF ~~ THEN REPLY #67433 /* ~"Fine. Now when you mentioned that some stuff from my body had gone into Pharod's 'keeping,' what did you mean?"~ */ GOTO 394
  IF ~~ THEN REPLY #67434 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67435 /* ~"We'll talk about this later. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY #67436 /* ~"Aye. Pharod takes a bit off each corpse we find, he does. It's his right, being lord o' the Village n' all."~ */
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67437 /* ~"Off of EVERY corpse you all find? That's a *lot* of corpses."~ */ GOTO 395
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67438 /* ~"The Vault must have been where he was keeping it all, then. I had some other questions..."~ */ GOTO 477
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67439 /* ~"He must have been keeping it all in the Vault, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 395 // from: 187.9 394.0 429.0 477.9
  SAY #67440 /* ~"Oh, aye - tae hear tell, ol' stutter-crutch has got a stash pit somewhere close tae him. It's the only reason I can see why he's set up kip in that filthy, drafty hall, it is. Nothing but stink and shadows."~ */
  IF ~~ THEN REPLY #67441 /* ~"Really? And that's where he puts the tribute he gets?"~ */ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #67442 /* ~"Aye." She squints at you. "Now what are yeh on about? Yeh plannin' to bob him?"~ */
  IF ~~ THEN REPLY #67443 /* ~Truth: "No. I've no cause to do such a thing. Pharod's done me no harm."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Annah_1","GLOBALLaw",1)
~ GOTO 397
  IF ~~ THEN REPLY #67444 /* ~Lie: "No. I've no cause to do such a thing."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_2","GLOBALLaw",-1)
~ GOTO 397
  IF ~~ THEN REPLY #67445 /* ~"After all that running around to get that sphere for him and then getting next to nothing in return, I'm tempted to."~ */ GOTO 398
END

IF ~~ THEN BEGIN 397 // from: 396.0 396.1
  SAY #67446 /* ~"Well, *good* - I'm warning yeh against such a thing, I am. Pharod can be daft sometimes, but he's mean as all fiend spit when he gets worked up." She frowns. "An' he *loves* his keepsakes, he does."~ */
  IF ~~ THEN REPLY #67447 /* ~"But where would he keep it all? If he's been at the Village for as long as he says, he would have amassed quite a collection."~ */ GOTO 399
END

IF ~~ THEN BEGIN 398 // from: 396.2
  SAY #67448 /* ~"I'm warning yeh against such a thing, I am. Pharod can be daft sometimes, but he's mean as all fiend spit when he gets worked up." She frowns. "An' he *loves* his keepsakes, he does."~ */
  IF ~~ THEN REPLY #67449 /* ~"But where would he keep it all? If he's been at the Village for as long as he says, he would have amassed quite a collection."~ */ GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 397.0 398.0
  SAY #67450 /* ~"Well..." Annah is silent for a moment. "I know he's never left his hall to get his tribute when he needed it."~ */
  IF ~~ THEN REPLY #67451 /* ~"He wouldn't want to walk far with that lame leg of his, though."~ */ GOTO 400
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #67452 /* ~"Aye, that's true - but only if yeh don't watch him careful. He isn't lame, though he puts on a fair show about bein' weak in the leg."~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #67453 /* ~"So why does he carry that crutch?"~ */ GOTO 401
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #67454 /* ~"So that crutch of his... could be a portal key?"~ */ GOTO 402
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #67455 /* ~Annah shrugs. "I donnae." She nods at you. "Yeh might as well ask why yeh have bones running around your waist, yeh do."~ */
  IF ~~ THEN REPLY #67456 /* ~"Never mind. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67457 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 402 // from: 400.1
  SAY #67458 /* ~Annah frowns in thought for a moment, then slowly nods her head. "Aye... there's a thought." She shrugs. "I wouldn't know how yeh'd use it, though. Maybe yeh just need tae *have* it."~ */
  IF ~~ THEN REPLY #67459 /* ~"Maybe we'll find out. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67460 /* ~"We may look into it later. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 403 // from: 187.8 477.8
  SAY #67461 /* ~"Ol' stutter-crutch? He's me Da... well, not me *real* Da. He found me when I was a wee girl..." Annah shrugs. "'Ee needed a Collector to crawl inta places the rest of his fat gullies couldn't squirm, so he took me under his crutch."~ */
  IF ~  Global("Annah_Looks","GLOBAL",0)
~ THEN REPLY #67462 /* ~"I didn't think you and him looked much alike, anyway."~ */ DO ~SetGlobal("Annah_Looks","GLOBAL",1)
~ GOTO 404
  IF ~~ THEN REPLY #67463 /* ~"Can you tell me anything else about him?"~ */ GOTO 424
  IF ~~ THEN REPLY #67464 /* ~"I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67465 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #67466 /* ~Annah's eyes narrow, and her tail begins to lash back and forth. "And what do yeh mean by *that,* then?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67467 /* ~"I meant it's hard to see any resemblance between that ugly, stooped, greedy, smelly gutter-troll and you."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 410
  IF ~~ THEN REPLY #67468 /* ~"I meant that he doesn't look much like a tiefling."~ */ GOTO 405
  IF ~~ THEN REPLY #67469 /* ~"I meant that you don't look much like a human."~ */ GOTO 406
  IF ~~ THEN REPLY #67470 /* ~"I meant that you don't look like each other."~ */ GOTO 407
  IF ~~ THEN REPLY #67471 /* ~"Never mind. I had some other questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67472 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 405 // from: 404.1 409.1
  SAY #67473 /* ~"Aye, he *doesn't*... and if yeh knew one thing about tieflings other than what yeh'd heard from any half-grinnin' Hiver on the street, yeh'd have the sense to know that none of us tieflings look a-like, jig?" She shakes her head. "No hope for yeh, that's for dead-sure."~ */
  IF ~~ THEN REPLY #67474 /* ~"I didn't mean that as an *insult.* You both look so different. I mean Pharod's... so... *Pharod,* and you're not." ~ */ GOTO 407
  IF ~~ THEN REPLY #67475 /* ~"Never mind. I had some other questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67476 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 406 // from: 404.2 409.2
  SAY #67477 /* ~"Oh, that's rich, so it is! Yeh're staggerin' around like a walking stab wound, and yeh've got the brass to give me wash about what a *human* looks like? Yeh can drown in your own piles, so help the powers!"~ */
  IF ~~ THEN REPLY #67478 /* ~"I didn't mean that as an *insult.* You both look so different. I mean Pharod's... so... *Pharod,* and you're not." ~ */ GOTO 407
  IF ~~ THEN REPLY #67479 /* ~"Never mind. I had some other questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67480 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 407 // from: 404.3 405.0 406.0 409.3
  SAY #67481 /* ~"Oh, now what coulda tipped yeh off to that? My hair? My skin? I can't think of anything else..." Annah slaps herself lightly on the forehead, then sneers sarcastically. "Maybe it was the *tail?* Oh, aye, that might have been it! Ye're so much sharper than I am, yeh are. A real gem."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67482 /* ~"I meant it's hard to see any resemblance between that ugly, stooped, greedy, smelly gutter-troll and you."~ */ GOTO 410
  IF ~~ THEN REPLY #67483 /* ~"What in the hells is your problem?! I make a simple statement, and you twist it like a dagger."~ */ GOTO 408
  IF ~~ THEN REPLY #67484 /* ~"Never mind. I had some other questions."~ */ GOTO 477
  IF ~~ THEN REPLY #67485 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 408 // from: 407.1
  SAY #67486 /* ~"A dagger's a dagger, so it is."~ */
  IF ~~ THEN REPLY #67487 /* ~"All's I was saying is that you and Pharod look nothing alike. The two of you don't have much in common."~ */ GOTO 410
END

IF ~~ THEN BEGIN 409 // from:
  SAY #67488 /* ~"No, don't yeh be giving me that hem-haw 'forget it let's go' wash! What didja mean by that snippet of trash yeh jist said?!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67489 /* ~"I meant it's hard to see any resemblance between that ugly, stooped, greedy, smelly gutter-troll and you."~ */ GOTO 410
  IF ~~ THEN REPLY #67490 /* ~"I meant that he doesn't look much like a tiefling."~ */ GOTO 405
  IF ~~ THEN REPLY #67491 /* ~"I meant that you don't look much like a human."~ */ GOTO 406
  IF ~~ THEN REPLY #67492 /* ~"I meant that you don't look like each other."~ */ GOTO 407
END

IF ~~ THEN BEGIN 410 // from: 404.0 407.0 408.0 409.0
  SAY #67493 /* ~Annah's face flushes a deep red. "Oh, is that *so?* And how do yeh see that?"~ */
  IF ~~ THEN REPLY #67494 /* ~Truth: "I mean, have you ever *looked* at yourself? Aside from the way you carry yourself, you're confident, sensible, and graceful. And that doesn't even take into account your obvious good looks: you have that rich, fire-red hair, those sharp green eyes, and that striking profile."~ */ GOTO 412
  IF ~~ THEN REPLY #67495 /* ~Lie: "I mean, have you ever *looked* at yourself? Aside from the way you carry yourself, you're confident, sensible, and graceful. And that doesn't even take into account your obvious good looks: you have that rich, fire-red hair, those sharp green eyes, and that striking profile."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_3","GLOBALLaw",-1)
~ GOTO 412
  IF ~~ THEN REPLY #67496 /* ~Truth: "I mean, look at yourself. You're at least twice the greedy corpse pirate that Pharod could be, and you have that strange Hive smell about you that makes my eyes tear up, and you have that filthy, rat-like tail sprouting from your backside."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 411
END

IF ~~ THEN BEGIN 411 // from: 410.2
  SAY #67497 /* ~Annah's face twists into a snarl, and her eyes flash. "Oh - yeh'd best *watch* yerself with me, yeh should. Maybe next time I'll be putting yeh in the dead-book rather than pulling yeh out of it."~ */
  IF ~~ THEN REPLY #67498 /* ~"You're welcome to try, *girl,* but it's me who's going to collect on your corpse, not the other way around."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #67499 /* ~"Keep hurling threats if it makes you feel tough. In the meantime, I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67500 /* ~"Never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 412 // from: 410.0 410.1
  SAY #67501 /* ~Annah just stares at you. ~ */
  IF ~~ THEN REPLY #67502 /* ~"So that's all I meant when I said you and Pharod look nothing alike."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #67503 /* ~Annah nods, still staring at you. She doesn't even blink.~ */
  IF ~~ THEN REPLY #67504 /* ~"Are you listening to me?"~ */ GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 413.0
  SAY #67505 /* ~Annah suddenly leans in, and she bites you sharply on the neck, giving a soft hiss. Rather than pulling back, she presses closely into you and whispers into your ear. "D'yeh fancy yer chances?" Her tail begins to lash slowly back and forth, but the rhythm is more hypnotic than angry. ~ */
  IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY #67506 /* ~You can feel Annah's heart beating fast in her chest, and the color rising into her cheeks. You suddenly become conscious of the fact that Annah's skin is smooth, soft. "I want tae tell yeh something, an' yeh can't poke fun at me."~ */
  IF ~~ THEN REPLY #67507 /* ~"All right..."~ */ GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #67508 /* ~"Do yeh know I like the way yeh *smell?* Oh, aye - it drives me barmier than a Chaosman, it does." She sniffs up the side of your cheek, and she gives a low, eager hiss. "I see the way yeh look at me, and I *like* it. Yeh've got hungry *eyes,* yeh do. It makes me a-fire."~ */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #67509 /* ~"I want tae bite yeh, soft-like around the neck..." She teases the side of your neck with her teeth, never breaking skin, and with every whisper, you can feel her breath along your ear. Her hand slides up around the back of your neck, and tightens, and you can feel her nails digging into your skin. "I want tae drag me nails along the back of yer neck, and force yeh to kiss me."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 731
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67512 /* ~Hold her and listen...~ */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.1
  SAY #67511 /* ~"Do yeh know I can *smell* yeh from fifty paces, that smell of formaldehyde pouring offa yeh like one of them Dustie shamblers. Maybe if yeh cleaned yerself up some, yeh'd be a right prize." Her eyes flash. "I'd make passion with yeh so hard yeh'd be knocked off the spire." She steps back, her tail flicking lightly against your leg, then gives you a hard stare. "So... d'yeh fancy me?"~ */
  IF ~~ THEN REPLY #67514 /* ~Grab her, bite her back.~ */ GOTO 419
  IF ~~ THEN REPLY #67515 /* ~"Yes... yes, I do."~ */ GOTO 422
  IF ~~ THEN REPLY #67516 /* ~"Annah, let's not have any more of that, all right?"~ */ GOTO 423
END

IF ~~ THEN BEGIN 419 // from: 418.0
  SAY #67513 /* ~You grab Annah, and before she can squirm free, you bite her lightly on the neck. As your teeth touch the skin, Annah hisses loudly, clawing like a cat, and tears away from you. "I was only *teasin'* yeh, yeh scarred vampire! L-l-leave off!" Despite her protestations, however, her face is flushed, and she is breathing heavily. "An' watch yer mitts next time!" She crosses her arms. "Yeh makin' me red, yeh are!"~ */
  IF ~~ THEN REPLY #67517 /* ~Lie: "What's the problem? Biting is a customary greeting where I'm from."~ */ GOTO 420
  IF ~~ THEN REPLY #67518 /* ~"You bite *me,* I bite *you.* If you don't like it, then don't DO it."~ */ GOTO 421
  IF ~~ THEN REPLY #67519 /* ~"Look, enough of this... I had some questions for you."~ */ GOTO 477
  IF ~~ THEN REPLY #67520 /* ~"Enough of this; let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #67521 /* ~"Oh, *right,* I believes yeh." Annah's breathing slows, returning to normal. "Yeh jist keep yer mitts offae me, yeh hear?"~ */
  IF ~~ THEN REPLY #67522 /* ~"Look, enough of this... I had some questions for you."~ */ GOTO 477
  IF ~~ THEN REPLY #67523 /* ~"Enough of this; let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 421 // from: 419.1
  SAY #67524 /* ~"I'll do what *I* please, so I will." Annah sneers; she still seems to be a little flushed. "Yeh jest keep your mitts offa me, yeh hear?"~ */
  IF ~~ THEN REPLY #67525 /* ~"Look, enough of this... I had some questions for you."~ */ GOTO 477
  IF ~~ THEN REPLY #67526 /* ~"Enough of this; let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 422 // from: 418.1
  SAY #67527 /* ~"Well, then yer chances are slimmer than yeh'd think, they are." Annah sneers; she still seems to be a little flushed. "I was only *teasin'* yeh, yeh scarred vampire. Yeh don't smell *that* good, yeh don't."~ */
  IF ~~ THEN REPLY #67528 /* ~"Look, enough of this... I had some questions for you."~ */ GOTO 477
  IF ~~ THEN REPLY #67529 /* ~"Enough of this; let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 423 // from: 418.2
  SAY #67530 /* ~"Have no fear o' that." Annah sneers; she still seems to be a little flushed. "I was only *teasin'* yeh, yeh scarred vampire. Yeh don't smell *that* good, yeh don't." ~ */
  IF ~~ THEN REPLY #67531 /* ~"Look, enough of this... I had some questions for you."~ */ GOTO 477
  IF ~~ THEN REPLY #67532 /* ~"Enough of this; let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 424 // from: 403.1
  SAY #67533 /* ~"Been at the Village longer than I. Came there a stone's age ago, maybe even *found* the place, some o' the villagers say." Annah frowns. "Pharod's a shrewd one, he is. Has a way of squeezin' more outta copper than most, an' he never was at a lack for jink."~ */
  IF ~  Global("Pharod_Annah_Story","GLOBAL",0)
~ THEN REPLY #67534 /* ~"Was he searching for that bronze sphere all that time?"~ */ GOTO 425
  IF ~  Global("Pharod_Annah_Story","GLOBAL",1)
~ THEN REPLY #67535 /* ~"Was he searching for that bronze sphere all that time?"~ */ GOTO 426
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67536 /* ~"He sure didn't show much wealth when I visited him. He must be squeezing copper tighter than you think."~ */ GOTO 429
  IF ~~ THEN REPLY #67537 /* ~"I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67538 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 425 // from: 424.0
  SAY #67539 /* ~"I s'pose." Annah shrugs again. "I don't know why he was all a-fire tae get it, I don't. I could smell it as soon as yeh brought it to him." She wrinkles her nose. "Foul custard smell it had. Still... it must have been something right valuable for him tae carry on about it like he did - almost a half-score o' Collectors got penned in the dead-book tryin' tae fetch it."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #67540 /* ~"I think he was searching for it because he thought it would save his life."~ */ DO ~SetGlobal("Pharod_Annah_Story","GLOBAL",1)
AddexperienceParty(2500)
~ GOTO 427
  IF ~~ THEN REPLY #67541 /* ~"I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67542 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 426 // from: 424.1
  SAY #67543 /* ~"If it's like yeh said, I s'pose he was." Annah shrugs again. "No accountin' for Pharod's foolishness, there isn't. A trinket won't save yeh from fate's hand. If the stains on yer soul are black enough, no amount o' washing will get 'em out." She pauses. "Still, if he thought it could save him, maybe it *was* important somehow... or at least worth a bit o' jink."~ */
  IF ~~ THEN REPLY #67544 /* ~"I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67545 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 427 // from: 425.0
  SAY #67546 /* ~She blinks. "What d'yeh mean?"~ */
  IF ~~ THEN REPLY #67547 /* ~"Pharod didn't lead a good life, I gather - he was once a 'Guvner' in one of the Upper Wards. He apparently used his position to lie, cheat, and hurt others in the process - so much so he was destined to go to the hells when he died. He thought the bronze sphere would save him somehow - so much so he threw away his title, his wealth, and his position to try and find it."~ */ JOURNAL #67548 /* ~I told Annah about what I had learned from Reekwind in the Hive; she didn't seem to know anything about Pharod's past, and she was surprised to hear what I told her. ~ */ GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY #67549 /* ~"Really?" She goes silent for a moment, then shakes her head. "No accountin' for Pharod's foolishness, there isn't. A trinket won't save yeh from fate's hand. If the stains on yer soul are black enough, no amount o' washing will get 'em out." She pauses. "Still, if he thought it could save him, maybe it *was* important somehow... or at least worth a bit o' jink."~ */
  IF ~~ THEN REPLY #67550 /* ~"I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67551 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 429 // from: 424.2
  SAY #67552 /* ~"Nay, he doesn't show it, but he's a packrat, he is, but he don't like others tae be pokin' about in his things, so he keeps 'em hid."~ */
  IF ~~ THEN REPLY #67553 /* ~"So he has his valuables hidden away?"~ */ GOTO 395
END

IF ~~ THEN BEGIN 430 // from: 187.14 477.14
  SAY #67554 /* ~Annah frowns. "She meant *nothing,* she did. Barmy hag talk, it was."~ */
  IF ~~ THEN REPLY #67555 /* ~"Are you sure?"~ */ GOTO 431
  IF ~~ THEN REPLY #67556 /* ~"Never mind, then. I had something else I wanted to ask you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67557 /* ~"Forget it, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY #67558 /* ~"It was NOTHING. If yeh donnae know what she was sayin', I don't either."~ */
  IF ~~ THEN REPLY #67559 /* ~"Well, if you want to talk about it, I'm lis-"~ */ GOTO 432
  IF ~~ THEN REPLY #67560 /* ~"Never mind, then. I had something else I wanted to ask you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67561 /* ~"Forget it, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY #67562 /* ~"I..." Annah's gaze drops for a moment. "I donnae why I'm travelin' with yeh! I donnae know why I went with yeh tae find Ravel!" She frowns, but she seems more confused than angry. "It makes no *sense,* it does, and I donnae like it."~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Ravel_Torment","GLOBAL",1)
~ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY #67563 /* ~"I..." Annah takes a deep breath. "I think I have *feelings* for yeh. It feels strange, it does... I don't think I've ever liked *anyone.* But yeh..." Annah gives a half-hearted shrug without meeting your gaze. "I donnae know what it is about yeh, I mean - yeh're *daft* a lot of times, yeh walk like yer hips are broken, yeh're clumsy, yeh smell like a zombie, but..." She sighs. "I *like* yeh."~ */
  IF ~~ THEN REPLY #67565 /* ~"Annah, why didn't you say something? We could have settled this long b-"~ */ GOTO 437
  IF ~~ THEN REPLY #67566 /* ~"Annah, I care about you... but just not in that way."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.1
  SAY #67564 /* ~Annah frowns and glares at the ground. "Aye, maybe it's a *blessed* thing, it is, too. Feelin' for others'll just get yeh stabbed in places that don't heal."~ */
  IF ~~ THEN REPLY #67567 /* ~"Annah, why didn't you say something? We could have settled this long b-"~ */ GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #67568 /* ~"It's cause I think yeh're *doomed.*" Annah suddenly meets your gaze. "I think yeh walk with chains, but yeh don't know it yet. So I... feel for yeh, but I'm afraid for yeh... an' that's *killing* me, it is. I donnae want yeh come tae harm, but I donnae know what tae do to stop it. So... I walk with yeh."~ */
  IF ~~ THEN REPLY #67569 /* ~"I appreciate you standing by me, Annah."~ */ GOTO 436
  IF ~~ THEN REPLY #67570 /* ~"Well, I think I am doomed. Look, I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67571 /* ~"I see. Look, enough of this: let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 436 // from: 435.0 437.2
  SAY #67572 /* ~"Aye... well..." She falls silent for a moment, then shrugs. "No matter."~ */
  IF ~~ THEN REPLY #67573 /* ~"Look, I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67574 /* ~"All right, then, Annah. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 437 // from: 433.0
  SAY #67575 /* ~"It's cause I think yeh're *doomed.*" Annah suddenly meets your gaze. "I think yeh walk with chains, but yeh don't know it yet. So I... *feel* for yeh, but I'm afraid for yeh... an' that's *killing* me, it is. I cannae let yeh come tae harm, but I donnae know what tae do to stop it!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67576 /* ~Kiss her.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67577 /* ~Kiss her.~ */ GOTO 444
  IF ~  Global("Annah_Kissing","GLOBAL",1)
~ THEN REPLY #67696 /* ~"I appreciate you standing by me, Annah."~ */ GOTO 436
END

IF ~~ THEN BEGIN 438 // from: 187.13 477.13
  SAY #67578 /* ~Annah snarls. "Aye, don't be comin' and dredgin' up that wash. If yeh want tae lock lips with a fiend, kissing that hag was probably the *safest* thing yeh coulda done." She spits. "Now stop rattlin' yer bone-box: I donnae want tae hear another word about it, I don't."~ */
  IF ~~ THEN REPLY #67579 /* ~"Never mind, then. I had something else I wanted to ask you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67580 /* ~"Forget it, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 439 // from:
  SAY #67581 /* ~Annah frowns, then nods. "Aye, yeh were right not tae kiss that hag, yeh were."~ */
  IF ~~ THEN REPLY #67582 /* ~"Well, I didn't kiss her because I wanted to kiss you."~ */ GOTO 440
  IF ~~ THEN REPLY #67583 /* ~"Never mind, then. I had something else I wanted to ask you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67584 /* ~"Forget it, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #67585 /* ~"Eh? What?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67586 /* ~Kiss her.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67587 /* ~Kiss her.~ */ GOTO 444
  IF ~~ THEN REPLY #67588 /* ~"Never mind. I had something else I wanted to ask you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67589 /* ~"Forget it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 441 // from: 187.12 477.12
  SAY #67590 /* ~Annah rolls her eyes. "Oh, aye, yeh'll kiss the evilest, ugliest witch on all the known planes, but yeh won't lock lips with me? Oh, aye, anything yeh say now will make it better, it will!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67591 /* ~Kiss her.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67592 /* ~Kiss her.~ */ GOTO 444
  IF ~~ THEN REPLY #67594 /* ~"Never mind, then. I had something else I wanted to ask you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67595 /* ~"Forget it, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 442 // from: 437.0 440.0 441.0
  SAY #67596 /* ~You grab the back of her neck with your free hand, and you watch Annah's features go stone as you pull her to you and kiss her on the lips. ~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.0
  SAY #67597 /* ~At first, it's like kissing a wall, then she starts slowly kissing you back, hesitant at first, then with more confidence, her teeth lightly biting your upper lip. You hear her snarl in the back of her throat, and her tail starts snaking around your leg, then *squeezing,* each squeeze matching one of her bites. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 732
END

IF ~~ THEN BEGIN 444 // from: 437.1 440.1 441.1
  SAY #67598 /* ~You grab the back of her neck with your free hand, and you watch Annah's features go stone as you pull her to you and kiss her on the lips. ~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #67599 /* ~At first, it's like kissing a wall, then she starts slowly kissing you back, hesitant at first, then with more confidence - her sharp teeth lightly biting your upper lip. You hear her snarl in the back of her throat, and her tail starts snaking around your leg, then *squeezing,* each squeeze matching one of her bites. ~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #67601 /* ~As you kiss, you suddenly notice that Annah's skin is becoming warm - it's radiating heat, like hot coals. You pull back, Annah's teeth giving one last bite, and she looks at you in confusion, then anger. "What is it, then? I'm not good at it, am I?"~ */
  IF ~~ THEN REPLY #67602 /* ~"No, it's your skin - why are you getting so warm all of a sudden?"~ */ DO ~SetGlobal("Annah_Kissing","GLOBAL",1)
PermanentStatChange("Annah",RESISTFIRE,RAISE,5)
PermanentStatChange("Annah",RESISTMAGICFIRE,RAISE,5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #67603 /* ~"Aye?" Annah frowns, and looks down at herself; you notice small wisps of smoke are trailing from the edges of her jerkin. "Fiend blood, it is..." She raises an eyebrow. "Never had *that* happen before, though."~ */
  IF ~~ THEN REPLY #67604 /* ~"What? No one's ever kissed you before?"~ */ GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #67605 /* ~She shrugs. "No one ever *dared* tae. An' even if they did, I doubt it woulda been like that."~ */
  IF ~~ THEN REPLY #67606 /* ~"I'll take that as a compliment, then."~ */ GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #67607 /* ~"Aye... eh..." Annah glances around, and her tail is flicking erratically. "Are we gonna keep movin' on now or what? We don't have time tae be standing an' chattin', we don't."~ */
  IF ~~ THEN REPLY #67608 /* ~"Well, *I'm* not done kissing you yet. Come here."~ */ GOTO 450
  IF ~~ THEN REPLY #67692 /* ~"All right, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #67609 /* ~She steps back, alarmed. "Nay - who knows what would happen next - maybe my body'll turn tae *flame,* it will! Yeh and your lips keep your distance!"~ */
  IF ~~ THEN REPLY #67610 /* ~"All right - THIS time. Let's move on."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 460 even though they appear after this state */
~  InParty("Annah")
InParty("Grace")
Global("Annah_Accuse_Grace","GLOBAL",0)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 451 // from:
  SAY #67611 /* ~Annah just looks at you as you address her, and she frowns. "Aye? What do yeh want *now?*"~ */
  IF ~~ THEN REPLY #67612 /* ~"Are you all right?"~ */ GOTO 452
  IF ~~ THEN REPLY #67613 /* ~"I had some questions I wanted to ask you."~ */ GOTO 453
  IF ~~ THEN REPLY #67614 /* ~"Nothing, Annah. Just checking to see if you were still with me."~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #67615 /* ~Annah just glares at you.~ */
  IF ~~ THEN REPLY #67616 /* ~"I wanted to ask you some questions."~ */ GOTO 453
  IF ~~ THEN REPLY #67617 /* ~"Never mind, then. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 451.1 452.0
  SAY #67618 /* ~"Why don't yeh ask the stuck-up-ubus yer questions, then?" Annah's eyes narrow to slits. "Why are we even *traveling* with her? We don't NEED her, we don't."~ */
  IF ~~ THEN REPLY #67619 /* ~"I don't have *time* for this, Annah. Stop being a banshee and lend a hand."~ */ GOTO 455
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67620 /* ~"Annah, I need all the help I can get - including yours."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67621 /* ~"Annah, *please.* You're very important to me, and I need your help."~ */ GOTO 458
  IF ~~ THEN REPLY #67622 /* ~"Annah, I want you with me - not her. If she bothers you, I'll ask her to leave."~ */ GOTO 454
  IF ~~ THEN REPLY #67623 /* ~"I don't have *time* to argue this with you, Annah. If you don't like Fall-from-Grace being around, then leave."~ */ GOTO 455
  IF ~~ THEN REPLY #67624 /* ~"We'll discuss this later. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 453.3
  SAY #67625 /* ~"Do it, then!" Annah glares at you. "I'm bettin' yeh won't - if yeh do, then we'll be better off for it, if not, then we'll be havin' this talk again, we will."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67626 /* ~"Annah, I need all the help I can get - including yours."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67627 /* ~"Annah, *please.* You're very important to me, and I need your help."~ */ GOTO 458
  IF ~~ THEN REPLY #67629 /* ~"I don't have *time* to argue this with you, Annah. If you don't like Fall-from-Grace being around, then leave."~ */ GOTO 455
  IF ~~ THEN REPLY #67630 /* ~"We'll discuss this later. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 455 // from: 453.0 453.4 454.2 457.1 457.2 460.2 461.3 462.1 463.4
  SAY #67631 /* ~"Who *NEEDS* yeh, then?!" Annah takes her pack, dumps it in front of you, then spits on it. "Don't yeh EVER talk to me again, or I'll gut yeh, yeh filthy, stupid, scarred ugly-smellin' WRECK. I hope yeh ROT!" ~ */
  IF ~~ THEN REPLY #67632 /* ~"Leave, then. I don't want to see you again."~ */ DO ~LeaveParty()
DropInventory()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 456 // from: 453.1 454.0
  SAY #67633 /* ~"Ye're a stem-shriveled *liar,* yeh are. Yeh only let me tag around with yeh 'cause yeh don't know what else tae do with me, yeh don't! Why didn't yeh just tell me tae push off as soon as Pharod made me your minder?!"~ */
  IF ~~ THEN REPLY #67634 /* ~"Because-"~ */ GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #67635 /* ~"D'yeh think I LIKE traveling with yeh?! Do YEH?! Cause yeh..." Annah's face wrinkles in disgust. "Your life, if yeh could CALL it that, is a right MESS, like your *skin* - all cut up and scarred. Yeh think yeh have some big meeting with th'fates or destiny, but yeh don't! Yeh're just a *mess,* yeh are!"~ */
  IF ~~ THEN REPLY #67636 /* ~"Annah, I didn't ask you to leave because I didn't *want* you to leave."~ */ GOTO 458
  IF ~~ THEN REPLY #67637 /* ~"You will *never* speak to me like that again. You will be silent and do as you're told, or your life will become just as big a mess as mine is."~ */ GOTO 455
  IF ~~ THEN REPLY #67638 /* ~"I don't have *time* to argue this with you, Annah. If you don't like Fall-from-Grace being around, then leave."~ */ GOTO 455
END

IF ~~ THEN BEGIN 458 // from: 453.2 454.1 457.0
  SAY #67639 /* ~"Oh, aye, and why is THAT then? This should be rich, it should. Yeh pity me, is that it? Yeh think I slow yeh down? Go on, say it!"~ */
  IF ~~ THEN REPLY #67640 /* ~"I *don't* pity you, and you *don't* slow me down - you're quick, you're skilled, and I really need all the help I can get."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse_Grace","GLOBAL",1)
~ GOTO 459
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #67641 /* ~Annah frowns, her tail flicking back and forth. "Aye... well... *know* I'll gut her if she starts sizing us up for a feast, I will." She glares at you. "And don't get any ideas I'm staying cause *yeh* want me to - I'm just helpin' yeh out, I am."~ */
  IF ~~ THEN REPLY #67642 /* ~"Fine. I had some questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67643 /* ~"Let's move on, then."~ */ EXIT
END

IF WEIGHT #5 ~  !InParty("Annah")
GlobalGT("Annah","GLOBAL",0)
Global("Annah_Talked_Grace","GLOBAL",5)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 460 // from:
  SAY #67644 /* ~"What do YEH want?!"~ */
  IF ~  InParty("Grace")
~ THEN REPLY #67645 /* ~"Annah, I need your help. Will you travel with me again?"~ */ GOTO 461
  IF ~  !InParty("Grace")
~ THEN REPLY #67646 /* ~"Annah, I need your help. Will you travel with me again?"~ */ GOTO 469
  IF ~~ THEN REPLY #67647 /* ~"If you're not going to be traveling with us anymore, then I want my stuff back. Now."~ */ GOTO 455
  IF ~~ THEN REPLY #67914 /* ~"Nothing - never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #67648 /* ~"Like the HELLS I will! Not with the likes o' *her,* I won't! Yeh both can go kick off tae the Abyss and ROT there, so yeh can!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67649 /* ~"Annah, I want *your* company. Will you travel with me again?"~ */ GOTO 462
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67650 /* ~Truth: "Annah, Fall-from-Grace doesn't mean as much to me as you do. Will you please travel with us again?"~ */ GOTO 463
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67651 /* ~Lie: "Annah, Fall-from-Grace doesn't mean as much to me as you do. Will you please travel with us again?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_5","GLOBALLaw",-1)
~ GOTO 463
  IF ~~ THEN REPLY #67652 /* ~"If you're not going to be traveling with us anymore, then I want my stuff back. Now."~ */ GOTO 455
  IF ~~ THEN REPLY #67915 /* ~"Nothing - never mind. Farewell."~ */ GOTO 468
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #67653 /* ~"Nay, I'm not traveling with a soul-devouring bitch like her, I'm not! She's got to *go,* she does!"~ */
  IF ~~ THEN REPLY #67654 /* ~"All right, I'll see about having her leave, then. We'll speak again."~ */ EXIT
  IF ~~ THEN REPLY #67655 /* ~"If you're not going to be traveling with us anymore, then I want my stuff back. Now."~ */ GOTO 455
  IF ~~ THEN REPLY #67916 /* ~"Sorry you feel that way... never mind, then. Farewell."~ */ GOTO 468
END

IF ~~ THEN BEGIN 463 // from: 461.1 461.2
  SAY #67656 /* ~"If she doesn't mean as much to yeh, then *she's* got to go, she does. I'm not traveling with a soul-devouring bitch like her, I'm not!"~ */
  IF ~~ THEN REPLY #67657 /* ~Truth: "Annah, look, I don't *care* about her. I *need* you to travel with me, but I need her help, too, for a time. After that, it'll be you and me."~ */ GOTO 464
  IF ~~ THEN REPLY #67658 /* ~Lie: "Annah, look, I don't *care* about her. I *need* you to travel with me, but I need her help, too, for a time. After that, it'll be you and me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_6","GLOBALLaw",-1)
~ GOTO 464
  IF ~~ THEN REPLY #67659 /* ~"Then you'll be travelling with NO ONE, then. I'll leave you here, and you can go back to your miserable life of scavenging corpses, or you can come with us." ~ */ GOTO 465
  IF ~~ THEN REPLY #67660 /* ~"All right, I'll see about having her leave, then. We'll speak again."~ */ EXIT
  IF ~~ THEN REPLY #67661 /* ~"If you're not going to be traveling with us anymore, then I want my stuff back. Now."~ */ GOTO 455
  IF ~~ THEN REPLY #67917 /* ~"Sorry you feel that way... never mind, then. Farewell."~ */ GOTO 468
END

IF ~~ THEN BEGIN 464 // from: 463.0 463.1
  SAY #67662 /* ~Annah's eyes stare at you for a moment, trying to read your features. "Yeh'd best be telling *true* with me, yeh better."~ */
  IF ~~ THEN REPLY #67663 /* ~"I am. Come on."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 463.2
  SAY #67664 /* ~Annah looks at you - her anger vanishes as you speak the words, and her forehead creases. "So... maybe... I'll do that, I will. It's been good tae me so far!"~ */
  IF ~~ THEN REPLY #67665 /* ~"That's brilliant. Just go back to scavenging deaders, and maybe one day you'll end up just like Pharod, all twisted, diseased, and *weak.* OR you can come with us. Your choice."~ */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #67666 /* ~Annah stares at you, her tail motionless.~ */
  IF ~~ THEN REPLY #67667 /* ~"Your choice. Right now."~ */ GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.0
  SAY #67668 /* ~"I'll... I'll come with yeh, I will." ~ */
  IF ~~ THEN REPLY #67669 /* ~"Good. Now come on."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 468 // from: 461.4 462.2 463.5
  SAY #67670 /* ~"Aye, go back to that winged harlot's arms, then!" Annah spits. "I'll have no more to do with the two o' yeh, I won't!"~ */
  IF ~~ THEN REPLY #67671 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 469 // from: 460.1
  SAY #67672 /* ~Annah's eyes narrow to slits. "Where's the stuck-up-ubus, then? She try and take a bite out o' yer neck and send yeh off to the Abyss, did she?"~ */
  IF ~~ THEN REPLY #67673 /* ~"She's not traveling with us anymore, Annah. I want you to join us again."~ */ GOTO 470
  IF ~~ THEN REPLY #67674 /* ~"Nothing - never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 470 // from: 469.0
  SAY #67675 /* ~"How do I know it'll STAY that way, aye? What if she comes back - or..." Annah seems frustrated. "Someone else like HER comes along, aye? Will it be the same ol' thing?"~ */
  IF ~~ THEN REPLY #67676 /* ~"Annah, it won't happen again."~ */ GOTO 471
  IF ~~ THEN REPLY #67677 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 471 // from: 470.0
  SAY #67678 /* ~"Aye... well... yeh best be careful, yeh should. I'll travel with yeh again, I will."~ */
  IF ~~ THEN REPLY #67679 /* ~"Very well. Let's move on."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 187.6 477.6
  SAY #67697 /* ~Annah's tail stops as you say the words, then she glares at you. "Are yeh serious? It's no time for jests, it isn't."~ */
  IF ~~ THEN REPLY #67698 /* ~"No, Annah - I found him dead in Ill-Wind Court. Do you know who might have killed him?"~ */ GOTO 476
END

IF ~~ THEN BEGIN 473 // from: 187.7 477.7
  SAY #67699 /* ~"I..." She shakes her head. "I *donnae.* No one with half-a-mind would - Pharod got a long shadow, he does. Yeh cross him, an' yeh end up getting th' stick, yeh will."~ */
  IF ~~ THEN REPLY #67700 /* ~"You don't have to accompany me anymore, Annah. If you need to stay with the Buried Village, I -"~ */ GOTO 474
  IF ~~ THEN REPLY #67701 /* ~"All right, then. I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67702 /* ~"Never mind, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 474 // from: 473.0
  SAY #67704 /* ~"Nay..." Annah interrupts you. "I don't need tae be in the Village - an' I was wonderin' what I'd do if Pharod got penned in the dead-book, I was." She snorts. "Oh, well; he's probably mounting someone's wall in the hells, he is."~ */
  IF ~~ THEN REPLY #67705 /* ~"But... he's your father. Don't y-"~ */ DO ~SetGlobal("Annah_Discovers_Pharod","GLOBAL",3)
~ GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.0
  SAY #67706 /* ~"Not me *real* Da, he wasn't." Her eyes take on a hard look. "He was greedy, an' he was stupid, an' he was selfish, an' he was weak." She frowns. "An' now 'ee's dead. And that's all."~ */
  IF ~~ THEN REPLY #67707 /* ~"All right, then. There was something else I wanted to ask you..."~ */ GOTO 477
  IF ~~ THEN REPLY #67708 /* ~"Let's move on, then."~ */ EXIT
END

IF ~~ THEN BEGIN 476 // from: 472.0
  SAY #67709 /* ~"Nay, I don't - I *need* tae see his body, though. Pharod's a tricky one, mayhap he's pulling a dodge on yeh..."~ */
  IF ~~ THEN REPLY #67710 /* ~"I'll show you in a bit. First, I had some other questions..."~ */ GOTO 477
  IF ~~ THEN REPLY #67711 /* ~"I'll show you now, then."~ */ EXIT
END

IF ~~ THEN BEGIN 477 // from: 316.1 317.1 318.0 319.1 320.1 321.0 322.5 324.0 326.3 345.0 347.0 348.5 362.0 363.4 371.0 372.1 373.1 374.1 376.0 377.1 378.1 379.1 380.0 387.0 389.1 390.0 393.1 394.1 401.0 402.0 403.2 404.4 405.1 406.1 407.2 411.1 419.2 420.0 421.0 422.0 423.0 424.3 425.1 426.0 428.0 430.1 431.1 435.1 436.0 438.0 439.1 440.2 441.2 459.0 473.1 475.0 476.0
  SAY #67712 /* ~"Aye?"~ */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67714 /* ~"So where's the place where you found my body?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67716 /* ~"So where's the place where you found my body?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67717 /* ~"So where's the place where you found my body?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67719 /* ~"I had a question about how you found my body..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67720 /* ~"Annah... didn't I meet you in the Hive, before I found Pharod?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67721 /* ~"Annah, did you find anything on my body before you brought it to the Mortuary?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67722 /* ~"Annah, I found Pharod dead in Ill-Wind Court."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67723 /* ~"Annah, do you know how Pharod died?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67724 /* ~"Tell me a little bit about Pharod."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67725 /* ~"Annah, when Pharod went to return the tribute he took from my body, he vanished for a while, then came back - but he never left Ill-Wind Court. Do you know where he went?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67726 /* ~"Annah, can you train me in thieving skills?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68260 /* ~"Annah, can you train me in thieving skills?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67727 /* ~"I wanted you to know that when I kissed Ravel in the maze, I..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67728 /* ~"I wanted you to know that when I kissed Ravel in the maze, I..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67729 /* ~"In the maze, Ravel said you were tormented... what did she mean?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67730 /* ~"Have you heard of a night hag called Ravel Puzzlewell?"~ */ GOTO 316
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67731 /* ~"Do you know where I could find a 'piece' of Ravel?"~ */ GOTO 319
  IF ~~ THEN REPLY #67732 /* ~"Nothing, Annah. Just checking to see if you were still with me."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Fortress_Annah","GLOBAL",3)
~ THEN BEGIN 478 // from:
  SAY #68184 /* ~You reach out with your power, there is a rush of air, and Annah stirs - she raises her head slowly, then shakes it, confused.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68185 /* ~"I found my mortality, Annah - and it turns out it doesn't like me much. I need your help."~ */ DO ~SetGlobal("Fortress_Annah","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 479
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68326 /* ~ANNAH. ARE YOU ALL RIGHT?~ */ GOTO 481
END

IF ~~ THEN BEGIN 479 // from: 478.0
  SAY #68186 /* ~Annah eyes take on a steely glint, then she nods. "I'm gonna stand by yeh."~ [ANA205A] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68187 /* ~"Let's do it, then..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68205 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68206 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68207 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68208 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68241 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68431 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68432 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68443 /* ~"Let's do it, then..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 480 // from: 187.11 477.11
  SAY #68258 /* ~Annah frowns, then shakes her head. "Nay, not now - there's enemies about, there is!"~ */
  IF ~~ THEN REPLY #68259 /* ~"Never mind, then..."~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from: 478.1
  SAY #68327 /* ~Annah's eyes widen as she hears your voice. "Wh - what *happened* ta yeh? Yer voice - it's like echoes, it is."~ */
  IF ~~ THEN REPLY #68328 /* ~I HAVE CHANGED. I AM SOMETHING ELSE NOW, AND I CANNOT REMAIN HERE MUCH LONGER. I WILL RETURN YOU TO SIGIL, IF YOU WISH IT.~ */ GOTO 482
END

IF ~~ THEN BEGIN 482 // from: 481.0
  SAY #68329 /* ~"Wh-" Annah opens her mouth, then pauses. "Wh- Where are *yeh* goin'?"~ */
  IF ~~ THEN REPLY #68330 /* ~MANY ARE THE CRIMES THAT WERE COMMITTED WHEN MY MORTALITY AND I WERE SPLIT. THESE CRIMES CARRY A... PRICE. THERE IS A PLACE RESERVED FOR ONES SUCH AS I ON THE LOWER PLANES. IT IS... PUNISHMENT OF A SORT.~ */ GOTO 483
END

IF ~~ THEN BEGIN 483 // from: 482.0
  SAY #68331 /* ~"But I... I don't *want* yeh ta go."~ */
  IF ~~ THEN REPLY #68332 /* ~I WILL NOT FORGET HOW MUCH YOU WERE WILLING TO SACRIFICE FOR ME, ANNAH. ~ */ GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.0
  SAY #68333 /* ~Annah nods. She looks like she is about to say something else, but then falls silent - but the unspoken thought remains in her mind, lingering. ~ */
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68334 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68335 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68336 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68337 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68338 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68339 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68493 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68494 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68495 /* ~I DO NOT NEED YOUR WORDS TO KNOW YOUR HEART, ANNAH. FAREWELL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #9 ~  Global("Fortress_Annah","GLOBAL",4)
~ THEN BEGIN 485 // from:
  SAY #68410 /* ~Annah eyes have a steely glint, then she nods. "I'm gonna stand by yeh."~ */
  IF ~~ THEN REPLY #68411 /* ~"Let's do it, then..."~ */ EXIT
END
