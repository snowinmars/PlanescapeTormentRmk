// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DARLO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30049 /* ~You see a short, balding man standing in what serves as the foyer to this ramshackle flophouse. His bushy brows are furrowed in concentration as he picks at what appear to be scabs on his large, bulbous nose.~ */
  IF ~~ THEN REPLY #30077 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #30078 /* ~Leave the man to his hygiene and explore the room.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30050 /* ~The man doesn't bother to look up. Instead, he continues to stare cross-eyed down at his nose. "Yeah? What da yeh want?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30079 /* ~"Could I rest here?"~ */ GOTO 4
  IF ~  Dead("Nestor")
~ THEN REPLY #30080 /* ~"Could I rest here?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30081 /* ~"Could I rest here?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30082 /* ~"Could I rest here?"~ */ GOTO 2
  IF ~~ THEN REPLY #30083 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #30084 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3 9.0
  SAY #30051 /* ~"Sure yeh can, berk... if yeh got the jink for it. No body puts up here for free, cept ol' Nestor over there - an' that's only cause no one's addle-coved enough ta mess with 'im."~ */
  IF ~~ THEN REPLY #30085 /* ~"Very well. How much for a bed?"~ */ GOTO 4
  IF ~~ THEN REPLY #30086 /* ~"Tell me about this... Nestor."~ */ GOTO 5
  IF ~~ THEN REPLY #30087 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 9.5
  SAY #30052 /* ~"Well ain't that nice?" He flashes you a sarcastic, yellow-toothed smile. "An' I'm sure yeh'll find yer answers someday. But I've gots me a business ta run. So if yeh don't wanna bed, then I suggest yeh pike off!" ~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30088 /* ~"I see. Can I have a bed then?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30089 /* ~"I see. Can I have a bed then?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30090 /* ~"I see. Can I have a bed then?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30091 /* ~"I see. Can I have a bed then?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30092 /* ~"I see. I think I'll rest for a while then."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30093 /* ~"Never mind then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 2.0 3.0 3.1 3.2 5.1 6.2 7.1 9.1 9.2 9.3
  SAY #30053 /* ~"It'll cost yeh five coppers." He wipes his dirty hand on the front of his even dirtier shirt, then thrusts it towards you, palm up.~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30094 /* ~Give him five coppers. Rest.~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #30095 /* ~"Sorry, I don't have five coppers right now. Maybe some other time. Farewell."~ */ EXIT
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30096 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #30054 /* ~"Nestor's that barmy ol' sod in the corner there." He hikes a thumb over his shoulder, toward the back of the room. "Watch yer step around 'im, berk. He's not right in the head. Always rattlin' his bone-box 'bout his fork an' all. I wish someone'd do us all a favor an' gets rid of 'im." ~ */
  IF ~~ THEN REPLY #30097 /* ~"Why don't you get rid of him yourself?"~ */ GOTO 6
  IF ~~ THEN REPLY #30098 /* ~"Never mind. How much for a bed?"~ */ GOTO 4
  IF ~~ THEN REPLY #30099 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #30055 /* ~"Yeh don't think I've tried? I have! An' look what I gets for me effort..." He leans his face forward and points at the bleeding scabs on his nose. "The barmy sod nearly bit me nose off!"~ */
  IF ~~ THEN REPLY #30100 /* ~"I could get rid of him for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Arlo_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #30101 /* ~"I could get rid of him for you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Arlo_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #30102 /* ~"Never mind. How much for a bed?"~ */ GOTO 4
  IF ~~ THEN REPLY #30103 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #30056 /* ~"I'll tell yeh what, cutter. If yeh can gets rid of 'im for me, yeh can stay 'ere for free as often as yeh like. Deal?"~ */
  IF ~~ THEN REPLY #30105 /* ~"Fair enough. I'll do it."~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",1)
~ JOURNAL #29872 /* ~I've agreed to help the slumlord, Arlo, get rid of a crazy old man named Nestor. It seems the fellow has taken up permanent residence in the Flophouse, and no one can make him leave.~ */ GOTO 8
  IF ~~ THEN REPLY #30107 /* ~"Never mind. How much for a bed?"~ */ GOTO 4
  IF ~~ THEN REPLY #30108 /* ~"Never mind. I have more important things to do." Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30073 /* ~"Well then don't just stand around gawkin', gets to it!" He immediately returns to his scab picking. "Can't yeh see I'm a busy man?"~ */
  IF ~~ THEN REPLY #30109 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #30074 /* ~Arlo is enthusiastically engaged in his favorite pastime of plucking scabs from his nose. As you approach, he glances at you out of the corner of his eye. "What da yeh want now?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30110 /* ~"Could I rest here?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30111 /* ~"Could I rest here?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30112 /* ~"Could I rest here?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30113 /* ~"Could I rest here?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30114 /* ~"I'd like to rest for a while."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30115 /* ~"I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #30116 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Arlo_Quest","GLOBAL",1)
Dead("Nestor")
~ THEN BEGIN 10 // from:
  SAY #30075 /* ~"By all the powers and their mothers, berk! When I said gets rid of the ol' sod, I didn't mean put 'im in the dead-book!" Arlo stares at you incredulously. "Oh well... a deal's a deal. I s'pose yeh can stay here for free - though I'd hardly say ye're welcome."~ */
  IF ~~ THEN REPLY #30117 /* ~Leave.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Arlo_2","GLOBALGood",-1)
AddexperienceParty(250)
~ JOURNAL #29870 /* ~I did as Arlo asked and got rid of Nestor. The slumlord seemed shocked by the manner of which I disposed of the old loon, but nonetheless, agreed to let me rest in the Flophouse free of charge.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #30076 /* ~"So, Nestor's gone home, eh? Maybe the ol' sod wasn't so barmy after all." He gives you a hearty slap on the back. "Now maybe we can all gets some rest round here. Feel free ta set up kip here anytime, cutter." ~ */
  IF ~~ THEN REPLY #30118 /* ~Leave.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #29869 /* ~By returning Nestor's fork and helping him get home, I've completed my end of the bargain with Arlo. He informed me that I'm welcome to rest at the Flophouse free of charge.~ */ EXIT
END
