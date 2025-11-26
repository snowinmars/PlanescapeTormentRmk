// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRADINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRADINE~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20209 /* ~The woman shrieks at the sight of you. She turns to flee, the tattoo around her neck seeming to writhe slightly as she bustles away.~ */
  IF ~~ THEN REPLY #20210 /* ~"Hold it right there..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20211 /* ~Let her go.~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #20212 /* ~Her face crumples as she sees you again. "He has refused again, hasn't he? And sure you've come to take back what's rightfully mine."~ */
  IF ~~ THEN REPLY #20213 /* ~"Rightfully yours? You have no right to that name and number. You stole it."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Radine_1","GLOBALLaw",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20214 /* ~"You don't need a number to live. He does. Even if it hurts you, you have to give it up. It will be better for both of you in the long run."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Radine_1","GLOBALGood",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20215 /* ~"Give it back or I'll take it back for him."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #20216 /* ~"You don't need his kind of number to live. Make your own number, if you need one to keep you warm."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Radine_1","GLOBALLaw",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20217 /* ~"Forget it. It's not worth my bother."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.3 9.1 13.1
  SAY #20218 /* ~"I suppose you're right. I've been a bad person, sure I have, and I can't keep this. Here." She peels the rippling tattoo from around her neck and hands it to you. She shivers as she does so. "And you can tell him his name now. He was and will be Ku'u Yin. Now let me go."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #20219 /* ~"Here's some jink for your trouble. Buy something to keep you warm."~ */ DO ~TakePartyGold(30)
IncrementGlobalOnceEx("GLOBALGood_Radine_2","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #20220 /* ~"Thanks. I had a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #20221 /* ~"Thanks. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 7.0 19.0
  SAY #20222 /* ~She shrinks under your threat. "And here he told me the number'd protect me from evil men. Take the bedamned thing, then, and have done with it!" She tears the writhing tattoo from her throat, taking a good bit of skin with it, hurls it at you, and flees.~ */
  IF ~~ THEN REPLY #20223 /* ~Chase her.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20224 /* ~Let her go.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #20225 /* ~"My thanks, cutter." She pockets the money, looking more drab by the moment as the magic of the tattoo leaves her. "'Twould be best for me to be leaving here, then... and with the aid o' the jink you gave me, mayhap we'll meet again under happier circumstances for the both of us."~ */
  IF ~~ THEN REPLY #20226 /* ~"Aye. Farewell, Radine."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20227 /* ~"Don't steal any more names, Radine. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #20228 /* ~She turns her head and shuffles away, seeming lifeless without the number tattoo to lend her that air of mystery. It is the last you see of her.~ */
  IF ~~ THEN REPLY #20229 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #20230 /* ~She looks blankly as you return, and then shakes herself out of her daze. As she does, the tattoo around her neck squirms. "You again, eh, cutter? I tell you I won't give the name and number back. Tell you what - using this name and number's increased me fortunes. I'll pay good money for it, and he can buy hisself a nice new one, how's that?"~ */
  IF ~~ THEN REPLY #20231 /* ~"How much are you willing to give?"~ */ GOTO 7
  IF ~~ THEN REPLY #20232 /* ~"I don't think that'll cut it. Give me the name and number."~ */ GOTO 7
  IF ~~ THEN REPLY #45386 /* ~"How about if I buy it from you?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 8.3
  SAY #20233 /* ~"How about a nice twenty coins? That should tide the wee dear over till he can get a new set, eh? Be a dear and go ask him if that's what he wants for it."~ */
  IF ~~ THEN REPLY #20234 /* ~"Just give me the name and number or I'll have to rip them out of you. Trust me, you don't want that."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #20235 /* ~"Fine. I'll go check with him. Answer some questions for me first."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #20236 /* ~"Fine. I'll go check with him."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #45387 /* ~"How about if I buy it from you?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.1 9.3 10.2 11.2 12.1 13.2 14.1 15.0 16.1 17.0 19.1
  SAY #20237 /* ~"Mayhap I got answers for you, and mayhap I don't."~ */
  IF ~~ THEN REPLY #20238 /* ~"Tell me about yourself."~ */ GOTO 9
  IF ~~ THEN REPLY #20239 /* ~"Tell me about this place."~ */ GOTO 11
  IF ~~ THEN REPLY #20240 /* ~"Tell me about that tattoo."~ */ GOTO 10
  IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN REPLY #20241 /* ~"What was the price you mentioned again?"~ */ GOTO 7
  IF ~~ THEN REPLY #20242 /* ~"Forget it, then."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 11.0
  SAY #20243 /* ~"Me? I got two names now, and I'll show you only one - don't want you stealin' the new one, hee hee! You can call me Radine, pet, and I'll hold this other name tight to myself, I will."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20244 /* ~"The man who that name used to belong to wants his name and number back. He's dying without them."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20245 /* ~"I know it'll be a burden on you, and I know it'll be tough to give up what you've got now, but... would you be so kind as to give the name and number back to him?"~ */ DO ~AddexperienceParty(250)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20246 /* ~"Two names, eh? Must be nice to have them."~ */ GOTO 13
  IF ~~ THEN REPLY #20247 /* ~"I'll bet. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #20248 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2 11.1
  SAY #20249 /* ~"This squirmy thing? It's an identifyin' number. It's my number, gave to me by a kind man who saw me cold without the protection of numbers to back me up. Now I got it and I'm happier'n I ever been before."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20250 /* ~"That man wants it back now."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20251 /* ~"Interesting. How does it work?"~ */ GOTO 14
  IF ~~ THEN REPLY #20252 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #20253 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY #20254 /* ~"The Buried Village? Nice enough place, I suppose, if you don't mind the stench of corpses being torn open, garbage heaped on the roof, and the constant scurrying of rats 'round here. Much colder with only a name and no number to protect you, that's for sure."~ */
  IF ~~ THEN REPLY #20255 /* ~"Tell me about your name."~ */ GOTO 9
  IF ~~ THEN REPLY #20256 /* ~"Tell me about the number."~ */ GOTO 10
  IF ~~ THEN REPLY #20257 /* ~"I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #20258 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.0 14.0 16.0
  SAY #20259 /* ~Her voice grows shrill. "Well, he can't have 'em! He offered 'em to me, and I kept 'em. He never said nothing about no *loan* of 'em, and he never said he needed 'em back! He ain't gettin' em! You can go tell him so! He really needs a name, you tell him he can have mine... the name 'Radine' should be good enough for anyone!"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20260 /* ~"It wasn't good enough for you... why should it suffice for him?"~ */ GOTO 15
  IF ~~ THEN REPLY #20261 /* ~"I'll let him know. Give me some other answers..."~ */ GOTO 8
  IF ~~ THEN REPLY #20262 /* ~"I'll let him know. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #45389 /* ~"How about if I buy it from you?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY #20263 /* ~"Aye, poppet, it is."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20264 /* ~"The man who that name used to belong to wants his name and number back. He's dying without them."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20265 /* ~"I know it'll be a burden on you, and I know it'll be tough to give up what you've got now, but... would you be so kind as to give the name and number back to him?"~ */ DO ~AddexperienceParty(250)
SetGlobal("KYName","GLOBAL",6)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20266 /* ~"Can you give me some other answers?"~ */ GOTO 8
  IF ~~ THEN REPLY #20267 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #20268 /* ~"Safety in numbers, and with safety comes warmth, and with warmth comes comfort. Numbers can do it all for you, dearie, as long as you respect their power."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20269 /* ~"The man who gave you the number wants it back now..."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20270 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #20271 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #20272 /* ~"It's a world of difference between growing up in a name and having someone else's, dearie. A new attitude behind an old name can change it all. See what I've done with this one?"~ */
  IF ~~ THEN REPLY #20273 /* ~"I'll talk to him about it. First, answer some other questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #20274 /* ~"Very well. I'll talk to him about it. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #20275 /* ~This woman has returned to her faraway stare, but her mind has not wandered as far this time - she is not nearly as startled by you. "You again, eh?"~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20276 /* ~"Are you Radine? The man whose name you took wants it back now." ~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20277 /* ~"I had some more questions for you..."~ */ GOTO 8
  IF ~~ THEN REPLY #20278 /* ~"No, sorry. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #20279 /* ~You see a woman with a lined face in drab clothing. Her eyes are faraway, and there seems to be a new vitality rising up under her skin, as if she'd been given a new life. There is a patterned tattoo around her neck. She starts when you speak to her. "Eh? What do you want?"~ */
  IF ~~ THEN REPLY #20280 /* ~"I just wanted to ask you some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #20281 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 7.3 12.3
  SAY #45388 /* ~She looks at you as if you're mad. "Are ye totally barmy? O' course I won't sell me name!"~ */
  IF ~~ THEN REPLY #45391 /* ~"Why not?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #45390 /* ~"Because it's me name, berk! Ye don't sell yer name!"~ */
  IF ~~ THEN REPLY #45392 /* ~"Just give me the name and number or I'll have to rip them out of you. Trust me, you don't want that."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,0,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #45393 /* ~"Fine. I'll go check with him. Answer some questions for me first."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #45394 /* ~"Fine. I'll go check with him."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
END
