// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1146.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1146~

IF ~  Global("Crispy","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6518 /* ~The number "1146" is carved into the forehead of this walking corpse, its lips are sewn together with coarse, black thread. The entire body is covered in horrible scars - worse, even, than your own - as if its owner had been burned to death. Its nose, ears, and several digits are missing, presumably charred away in some long-ago conflagration. As you block its path to get its 'attention,' it stops and gazes at you with vacant eyes.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6521 /* ~"So... seen anything interesting going on?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6522 /* ~"So... seen anything interesting going on?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6523 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6524 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ DO ~SetGlobal("Crispy","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6525 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #6526 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6519 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #6527 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6520 /* ~The odors of fuming sulfur, cooked hair and scorched blood assault your senses as the spirit returns to its one-time home. The corpse collapses to the floor almost immediately, shuddering violently as it clutches at itself and moans pitifully. You can almost see thin plumes of stinking smoke curling off its body and limbs.~ */
  IF ~~ THEN REPLY #6528 /* ~"Are you... all right?"~ */ GOTO 3
  IF ~~ THEN REPLY #9413 /* ~"I had questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #9414 /* ~Leave the burning spirit.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9398 /* ~The spirit opens one eye, the orb's whiteness stark against the gray, puckered flesh that surrounds it. It slowly turns its head so as to peer up at you; the blasted and scarified flesh of its face and neck pulling taut over the bone. It finally croaks from its ruined throat: "No. No... I ain't, ya... pikin'... addle-cove."~ */
  IF ~~ THEN REPLY #9415 /* ~"Is there something I can do to aid you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Crispy_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #9416 /* ~"I had a question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9417 /* ~"It is just as well, you stinking, smoldering husk; you probably deserve such a fate. Farewell."~ */ GOTO 6
  IF ~~ THEN REPLY #9418 /* ~Leave the tortured spirit.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9399 /* ~"Heh, heh-HURG!" The spirit begins to laugh but stops abruptly, spasms wildly, and vomits up a stream of embalming fluid and black putrescence. Wracked with pain, the spirit begins to hack and cough, occasionally pausing to spit yellowish fluid and loose stitches from between its ruined lips.~ */
  IF ~~ THEN REPLY #9419 /* ~Wait patiently for the fit to end.~ */ GOTO 5
  IF ~~ THEN REPLY #9421 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9422 /* ~Leave the tortured spirit to its suffering.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #9400 /* ~The spirit's horrible coughing finally settles down. "No, berk... ya... can't. Unless... unless yer gonna dance on inta Baator and rescues me, I've hit da... da blinds. Time fer my... my penance." The spirit closes its eye and rests its head back on the floor.~ */
  IF ~~ THEN REPLY #9423 /* ~"I see. I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9424 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 17.0
  SAY #9401 /* ~The spirit makes a wet snarling noise, its cracked, blackened lips pulling away from crooked yellow teeth. "Jest... jest you waits till I... gets outta dis Pit... I'm... comin' fer you first, berk..."~ */
  IF ~~ THEN REPLY #9425 /* ~"You do that. I'm not one to fear the likes of you."~ */ GOTO 7
  IF ~~ THEN REPLY #9426 /* ~Strike him.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Crispy_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crispy_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #9427 /* ~Ignore the wretch, turn away and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9402 /* ~The spirit manages a weak, guttural growl, and spits at you - the foul stuff lands several inches short of your feet. Exhausted, the thing slumps back to the floor and life begins to fade from the corpse once more.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9403 /* ~You land a swift kick to the corpse's kidney, but to no avail; the spirit within seems unharmed. "Heh, heh-heh," the thing gurgles, before finally fading from the body entirely. You're left standing there with a vague feeling of dissatisfaction.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
  SAY #9404 /* ~"What... what could ya *possibly* wants from me now, berk?" The spirit still occasionally writhes about, patting at itself as if trying to extinguish various small fires on its body.~ */
  IF ~~ THEN REPLY #9428 /* ~"Who are you?"~ */ GOTO 10
  IF ~~ THEN REPLY #9429 /* ~"Where are you from?"~ */ GOTO 11
  IF ~~ THEN REPLY #9430 /* ~"How did you end up here? As a zombie, I mean?"~ */ GOTO 12
  IF ~~ THEN REPLY #9431 /* ~"Where are you... where your spirit resides... now?"~ */ GOTO 13
  IF ~~ THEN REPLY #9432 /* ~"What did you do to deserve such torment?"~ */ GOTO 14
  IF ~~ THEN REPLY #9433 /* ~"What do you know of this place?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9434 /* ~"Do you know someone named Pharod?"~ */ GOTO 16
  IF ~~ THEN REPLY #9435 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9405 /* ~"None a' yer business... leaves me... be..."~ */
  IF ~~ THEN REPLY #9436 /* ~"No. I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9437 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #9406 /* ~"Eh? Fer da love of da powers, who... cares? From Sigil, ya... ya piker."~ */
  IF ~~ THEN REPLY #9438 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9439 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #9407 /* ~"How do ya tinks, Clueless?" The spirit's outburst sends him into a short fit of jerking, painful coughs. "I signed da meat away fer... fer a bit a' jink. Pikin' Dusters... an' right den - RIGHT DEN, can ya believes it - some barmy wizard decides ta blast da Hive ta flamin' oblivion, wit' me stucks right in da middle!" The spirit mumbles evilly for a bit, steaming fluid bubbling out from the corners of his jagged slit of a mouth.~ */
  IF ~~ THEN REPLY #9440 /* ~"A wizard burned down the Hive?"~ */ GOTO 18
  IF ~~ THEN REPLY #9441 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9465 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #9408 /* ~"Where do... do ya think, ya leather-headed basher? Baator, in dat stinkin' dung-hole dey call Phlegethos. Burn, burn... burn... dat's all I do. I burned ta death in life, an' now I's burnin' in death. Argh!" The corpse gnashes its teeth in fury. "Da irony's jest sickenin'! When I gets outta here, I's gonna toss so many sods inta dis damn hole. Heh, heh-heh... *gurgle*"~ */
  IF ~~ THEN REPLY #9442 /* ~"Why would you wish to inflict your fate upon others?"~ */ GOTO 17
  IF ~~ THEN REPLY #9443 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9444 /* ~"That is all wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.4
  SAY #9409 /* ~"Deserve? DIS? Nothin'! I... *gack*... didn't do nothin'. Jest tryin' ta get by... get by likes everybody else... den 'phoomph!' Dat goat's son of a mage starts burnin' up da Hive!"~ */
  IF ~~ THEN REPLY #9445 /* ~"A mage... burned up... the Hive?"~ */ GOTO 18
  IF ~~ THEN REPLY #9446 /* ~"I see. I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9745 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #9410 /* ~"Nothin'. Nothin' I's tellin' *you,* berk. Jest... jest leaves me alone ta burns..."~ */
  IF ~~ THEN REPLY #9447 /* ~"Very well. I had another question, then..."~ */ GOTO 9
  IF ~~ THEN REPLY #9448 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.6
  SAY #9411 /* ~"Who? What? No! What... what makes ya think I'd tells ya if I did, ya... ya soddin' berk? Hmph..."~ */
  IF ~~ THEN REPLY #9449 /* ~"Very well. I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #9450 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0
  SAY #9412 /* ~"Revenge, ya addle-cove! I's gonna... gonna gets dem all, all dose dat crossed me. Especially dat wizard! I's gonna tear off his wee bits and shoves 'em down his troat! Den I'll trow him in dis stinkin' hole, wee bits an' all! Him an' a few more fer... fer good measure, too! Heh, heh-heh..."~ */
  IF ~~ THEN REPLY #9420 /* ~"You are a vicious, petty little man. Your fate seems well-deserved."~ */ GOTO 6
  IF ~~ THEN REPLY #9451 /* ~"I see. I had more questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #9452 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0 14.0
  SAY #9458 /* ~"Yeah, da Hive... da worstest part a' Sigil. I never seen so much fire in alls me life... I ran dis way an' dat, tryin' ta get aways, but everytin' was jest burstin' inta flame! Buildin's, streets, folks an' der kids... and dat trice-blasted wizard, jest laughin' all da time! I turned a corner and tought I gots away fer a bit, but da next ting I know, me pikin' head's on fire! It pretty much... went downhills from dere..." The spirit's opened eye shines with a malevolent light.~ */
  IF ~~ THEN REPLY #9459 /* ~"Who was this wizard?"~ */ GOTO 19
  IF ~~ THEN REPLY #9464 /* ~"I see. I had more questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #9746 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #9744 /* ~"Dunno. I was pretty well an' cooked before anyone stopped him, if someone ever did. I tink I remember some peoples chasin' after him at da start of it alls, shoutin' his name... er... oh! Ignis, I'm tinkin' it was. Ignis. Or sumtin' like dat. I sure hopes dat piker's in a worse hole dan me!"~ */
  IF ~~ THEN REPLY #9747 /* ~"I see. I had more questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #9748 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~  Global("Crispy","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #20099 /* ~"Again?!"~ */
  IF ~~ THEN REPLY #20100 /* ~"I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20101 /* ~"Nothing, I was just passing by. Farewell."~ */ EXIT
END
