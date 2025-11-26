// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORP~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51205 /* ~This creature is huge, standing over nine feet tall. Rippling muscles support its massive frame. As you approach, he leers at you and laughs.~ */
  IF ~~ THEN REPLY #51206 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #51207 /* ~Ignore the creature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51208 /* ~He looks down at you and gives you a friendly smile. "What you want, smallie?"~ */
  IF ~~ THEN REPLY #51209 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51210 /* ~"Nothing, farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.0 6.1 7.1 8.1 9.1 10.1 11.1 12.0 14.0 23.0
  SAY #51211 /* ~"You got question, maybe Thorp got answer." He smiles at you.~ */
  IF ~~ THEN REPLY #51212 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #51213 /* ~"What are you doing here?"~ */ GOTO 6
  IF ~~ THEN REPLY #51214 /* ~"What can you tell me about this ward?"~ */ GOTO 13
  IF ~  GlobalGT("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51215 /* ~"You said you're going to fight an abishai?"~ */ GOTO 15
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51216 /* ~"I've talked to Xanthia. She said you're going to fight an abishai?"~ */ GOTO 15
  IF ~~ THEN REPLY #68262 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51217 /* ~He smacks himself in the chest with a thunderous blow. "Thorp." He raises his arms above his head and shakes his fists at the sky. "Mighty warrior is Thorp. All thokola are mighty warriors." He places his fists on his hips and glares at you. "Who you?"~ */
  IF ~~ THEN REPLY #51219 /* ~Lie: "I'm Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALThorp_Adahn","GLOBALAdahn",1)
IncrementGlobalOnceEx("GLOBALChaotic_Thorp_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #51220 /* ~"I don't remember my name."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #51221 /* ~He thinks for a moment then nods. "That good name for smallie. Nice ring to it. Thorp like."~ */
  IF ~~ THEN REPLY #51222 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51223 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #51224 /* ~He nods at you as he examines your scars. "You got mighty scars. You must be great warrior... like Thorp!" He frowns and nods wisely. "You got hit on head too many time. Not remember name. Someday, it come back."~ */
  IF ~~ THEN REPLY #51225 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51226 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 13.0
  SAY #51227 /* ~He barks out a laugh and smiles at you. "Thorp here with friends." He gestures at the nearby thokola. "We gonna barsh a... flying lizard." He lets out a roar and begins to pound his chest with fists the size of hams.~ */
  IF ~~ THEN REPLY #51228 /* ~"Uh... a flying lizard?"~ */ GOTO 7
  IF ~~ THEN REPLY #51229 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51230 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51231 /* ~He nods his head then begins to make crawling motions. "Lizard, you know... but it fly." He begins to flap his arms like a huge misshapen bird. Eventually he settles down and looks at you expectantly.~ */
  IF ~~ THEN REPLY #51232 /* ~"You mean a dragon?"~ */ GOTO 8
  IF ~~ THEN REPLY #51233 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51234 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51235 /* ~He snorts and raises to his full height. "Thorp good, but he not that good. Someday Thorp want to barsh dragon..." He stares off into the distance with a longing expression then sighs. "But this not that day."~ */
  IF ~~ THEN REPLY #51236 /* ~"Well, if it's not a dragon you're talking about then what is it?"~ */ GOTO 9
  IF ~~ THEN REPLY #51237 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51239 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51240 /* ~"Thorp not remember what Xanthia call it..." He pauses to think. "It lizard, tall as Thorp. Walk on back legs... got wings... got claws... red in color. Think she say they called... abbey shy?" He pauses, then shrugs.~ */
  IF ~~ THEN REPLY #51241 /* ~"I've heard of something called an abishai. Is that what you mean?"~ */ DO ~SetGlobal("Barsh_Abishai","GLOBAL",1)
~ JOURNAL #67299 /* ~A thokola named Thorp, and his two thokola friends, are going to fight an abishai. The thokola don't appear to be the brightest of individuals, but they do look pretty tough. Maybe they can do it.~ */ GOTO 10
  IF ~~ THEN REPLY #51242 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51243 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51245 /* ~His eyes light up and he gives you a joyful smile as he nods his head. "Yes! Abishai... Flying lizard. Thorp and friends barsh real good. Thorp be warrior of stature then. Xanthia accept apology..."~ */
  IF ~~ THEN REPLY #51246 /* ~"What's this about Xanthia and an apology?"~ */ GOTO 11
  IF ~~ THEN REPLY #51247 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51248 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51249 /* ~"Thorp take friends to tavern last night. Thorp get stinking drunk, fall on Xanthia's table, spill drinks all over her." He looks embarrassed. "Xanthia say she not accept apology unless Thorp be warrior of stature."~ */
  IF ~~ THEN REPLY #51250 /* ~"So, killing an abishai is supposed to give you stature?"~ */ JOURNAL #67300 /* ~It seems that Thorp and his friends got drunk and insulted a lady in a tavern by spilling drinks all over her. The lady, Xanthia, refused to accept Thorp's apology unless he could prove himself to be a warrior of stature. He needs to kill an abishai to do this.~ */ GOTO 12
  IF ~~ THEN REPLY #51251 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51252 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51253 /* ~He shrugs. "Xanthia say so. Thorp not know."~ */
  IF ~~ THEN REPLY #51254 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51255 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #51256 /* ~He stares at you for a moment then shrugs. "Thorp not know. Thorp new here." He gives you a childish smile. "Thorp here for fun!"~ */
  IF ~  Global("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51257 /* ~"What kind of fun?"~ */ GOTO 6
  IF ~  Global("Barsh_Abishai","GLOBAL",1)
~ THEN REPLY #51258 /* ~"Yes, you're going to barsh an abishai."~ */ GOTO 14
  IF ~  Global("Barsh_Abishai","GLOBAL",2)
~ THEN REPLY #63237 /* ~"Yes, you're going to barsh an abishai."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #51259 /* ~He smiles and nods at you enthusiastically. "That right! Thorp and friends barsh!"~ */
  IF ~~ THEN REPLY #51260 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51261 /* ~"I have to go now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.3 2.4 13.2
  SAY #51262 /* ~He smiles and nods at you enthusiastically. "That right! Thorp and friends barsh!"~ */
  IF ~  !Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51263 /* ~"Well, enjoy yourself. Farewell."~ */ EXIT
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51264 /* ~Warn Thorp: "I've learned that abishai can only be hurt by magic weapons."~ */ DO ~AddexperienceParty(6000)
IncrementGlobalOnceEx("GLOBALGood_Thorp_1","GLOBALGood",1)
SetGlobal("Barsh_Abishai","GLOBAL",4)
~ JOURNAL #67301 /* ~I warned Thorp that abishai could only be hurt by magic or magical weapons. It's a good thing I did because he and his friends would have been slain otherwise.~ */ GOTO 16
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51265 /* ~Don't warn Thorp: "Well, enjoy yourself. I'm sure you'll be victorious. Farewell."~ */ DO ~AddexperienceParty(1500)
IncrementGlobalOnceEx("GLOBALEvil_Thorp_1","GLOBALGood",-1)
SetGlobal("Barsh_Abishai","GLOBAL",3)
~ JOURNAL #67302 /* ~Thorp doesn't seem to know that abishai can only be hurt by magic or magical weapons. I could have warned him... but what the hell. This could be an amusing fight.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #51266 /* ~He gives you a worried look. "Need magic? How you know?"~ */
  IF ~~ THEN REPLY #51267 /* ~"I've asked around, Thorp. It's what people tell me."~ */ GOTO 17
  IF ~~ THEN REPLY #51268 /* ~"I've talked to Xanthia. She told me."~ */ GOTO 21
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51269 /* ~"Thorp not have magic. Friends not have magic. We die if we barsh abishai..." He sighs. "Thorp not be warrior of stature. Xanthia not accept apology."~ */
  IF ~~ THEN REPLY #51270 /* ~"You were willing to risk your life for the honor of a lady, Thorp. Only a warrior of stature would do that."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51271 /* ~He stares at you blankly for a moment and then a huge smile appears on his face. "Really? Thorp and friends now have stature?"~ */
  IF ~~ THEN REPLY #51272 /* ~"Yes. Consider Xanthia's honor to be satisfied and the apology accepted."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 22.0
  SAY #51273 /* ~"Thorp thank you. You save life. You save life of friends." He turns to the other thokola and speaks to them hurriedly. After a moment all three bow to you and each hands you a pouch of coins.~ */
  IF ~~ THEN REPLY #51274 /* ~"Thank you."~ */ DO ~GiveGoldForce(600)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51275 /* ~He smiles. "You good friend. You deserve."~ */
  IF ~~ THEN REPLY #51277 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.1
  SAY #51278 /* ~He seems confused at first then a look of realization appears on his face. "Xanthia play Thorp for a coney... She lie, try get Thorp and friends dead..."~ */
  IF ~~ THEN REPLY #51279 /* ~"I'm afraid so, Thorp."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #51280 /* ~He nods. "Xanthia not deserve apology. Thorp free from debt to her."~ */
  IF ~~ THEN REPLY #51281 /* ~"Yes, you are free of your debt."~ */ GOTO 19
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #51282 /* ~You see Thorp, the thokola. He gives you a friendly laugh as you approach. "The smallie back! What you want of Thorp?"~ */
  IF ~~ THEN REPLY #51283 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51284 /* ~"Nothing, farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #51285 /* ~You see Thorp, the thokola. He gives you a friendly laugh. "It the smallie again! What you want?"~ */
  IF ~~ THEN REPLY #66163 /* ~"Nothing, just waiting for the glorious battle between you and the abishai."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #63465 /* ~Thorp lets out a thunderous laugh and begins to beat his chest with his fists. "Thorp mighty warrior! Soon Thorp be warrior of stature." He settles down and gives you a serious look. "Then lady forgive Thorp for being oaf."~ */
  IF ~~ THEN REPLY #63466 /* ~"Farewell, Thorp."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 26 // from:
  SAY #63467 /* ~You see Thorp, the thokola. He gives you a friendly laugh as you approach. "Thorp good friend the smallie is back! What you want of Thorp?" He smiles warmly. "Thorp not forget you save life."~ */
  IF ~~ THEN REPLY #66164 /* ~"Nothing, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Kill_Special_Abashai_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #66165 /* ~You see Thorp, the thokola. He gives you a friendly laugh as you approach. "Thorp thank you, smallie. You help Thorp!"~ */
  IF ~~ THEN REPLY #66166 /* ~"You're welcome, Thorp. Farewell."~ */ JOURNAL #67303 /* ~Sometimes I amaze myself. I felt sorry for Thorp and his friends so I helped them kill the abishai. What can I say... a moment of weakness on my part?~ */ EXIT
END
