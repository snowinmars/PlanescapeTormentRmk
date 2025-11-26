// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGONCAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGONCAL~

IF ~  Global("Goncalves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2923 /* ~This short, heavy-set, middle-aged man is wearing clothes that seem to be spun of glittering gold. In his hands he holds a bolt of cloth strung taught across a wooden frame; he is currently embroidering some pattern into the fabric.~ */
  IF ~~ THEN REPLY #2924 /* ~"Greetings..."~ */ DO ~SetGlobal("Goncalves","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44148 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.1 25.0
  SAY #44149 /* ~The man doesn't seem to acknowledge your presence. He continues to work at his embroidery, muttering under his breath... as he sews, shimmering motes of light seem to sparkle and drop from the tip of the needle.~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44150 /* ~"Good sir; did you hear me?"~ */ GOTO 2
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44151 /* ~"I said 'greetings.'"~ */ GOTO 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44152 /* ~"Good sir; did you hear me?"~ */ EXTERN ~DGRACE~ 142
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44153 /* ~"I said 'greetings.'"~ */ EXTERN ~DGRACE~ 142
  IF ~~ THEN REPLY #44154 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #44155 /* ~The man does not look up from his work, frowning distastefully as he answers you: "Yes, yes... and I am certain that what you need is truly *quite* urgent. Now, if you could be silent for just a moment..."~ */
  IF ~~ THEN REPLY #44156 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #44157 /* ~Wait quietly.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44158 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44160 /* ~He smirks, but does not respond.~ */
  IF ~~ THEN REPLY #44161 /* ~"I said, 'I had some questions...'"~ */ GOTO 4
  IF ~~ THEN REPLY #44162 /* ~Wait quietly.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #66869 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44163 /* ~His face begins to flush; he grits his teeth, but still refuses to so much as look at you directly. "I do not *care* if you have questions! Now be silent or kindly *leave* my store!"~ */
  IF ~~ THEN REPLY #44164 /* ~"Answer my questions, *tailor*... or there's going to be trouble."~ */ GOTO 5
  IF ~~ THEN REPLY #44165 /* ~Wait quietly.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44166 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1
  SAY #44167 /* ~He throws down his work in a fit of rage, flecks of spittle flying from his lips as he shouts. "There'll be *trouble,* all right, when the guards come in to bash you to pieces! Now, OUT! OUT! OUT OF MY STORE WITH YOU! Before I summon the Harmonium!"~ */
  IF ~~ THEN REPLY #44168 /* ~"I *dare* you to do it."~ */ DO ~SetGlobal("Goncalves","GLOBAL",3)
SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44169 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.1 4.1
  SAY #44170 /* ~At last, he sets down the embroidery and looks up at you. Before you can speak, however, he suddenly picks up another item and sets to work on it. Again, as he works what looks to be tiny, colored sparks drip from the fabric.~ */
  IF ~~ THEN REPLY #44171 /* ~"Look, I just have a few questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #44172 /* ~"Answer my questions, *tailor*... or there's going to be trouble."~ */ GOTO 5
  IF ~~ THEN REPLY #44173 /* ~Wait some more.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44174 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44175 /* ~The man sighs loudly. "No doubt you do. Now, you've been kind enough to wait quietly for a bit - I am certain it shan't see you dead to rein your tongue in but for a moment more..."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 211
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44176 /* ~"Answer my questions, *tailor*... or there's going to be trouble."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44177 /* ~Wait some more.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44178 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.2
  SAY #44179 /* ~He finally finishes his work, setting it down to examine you. "Greetings, I am Goncalves. Now, what was it you were here to see me about?"~ */
  IF ~~ THEN REPLY #44180 /* ~"I had questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #44181 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.1 13.1 14.1 14.2 16.1 16.2 22.0 24.0 26.0
  SAY #44182 /* ~"Hmm? I hope 'tis about garments and the like. I shan't answer anything not concerning myself or the store, you know."~ */
  IF ~  GlobalGT("Malmaner","GLOBAL",1)
GlobalLT("Malmaner","GLOBAL",4)
Global("Goncalves_Costume1","AR0611",0)
~ THEN REPLY #44183 /* ~"I wanted to pick up a Dustman costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",3)
~ GOTO 14
  IF ~  GlobalGT("Malmaner","GLOBAL",3)
GlobalLT("Malmaner","GLOBAL",6)
Global("Goncalves_Costume2","AR0611",0)
~ THEN REPLY #44184 /* ~"I wanted to pick up another, different costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",5)
~ GOTO 16
  IF ~  Global("Know_Goncalves_Mage","AR0611",0)
~ THEN REPLY #44185 /* ~"What were those lights while you were embroidering?"~ */ DO ~SetGlobal("Know_Goncalves_Mage","AR0611",1)
~ GOTO 12
  IF ~  Global("Know_Goncalves_Mage","AR0611",1)
~ THEN REPLY #44186 /* ~"What sort of magical clothes do you have available?"~ */ GOTO 13
  IF ~~ THEN REPLY #66876 /* ~"Could I buy some needle and thread here?"~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44188 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44189 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #44194 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #44198 /* ~"That? Nothing, sir, but a bit of the Art, which I at times weave into fabric when the fancy strikes me. Those items which I lavish enchantments upon are my most special creations, and are rarely sold."~ */
  IF ~~ THEN REPLY #44199 /* ~"What sort of magical clothes do you have available?"~ */ GOTO 13
  IF ~~ THEN REPLY #44200 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #44201 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 12.0
  SAY #44202 /* ~Goncalves looks you over, frowning. "Nothing that would fit *you,* that is for certain."~ */
  IF ~~ THEN REPLY #44203 /* ~"I'd like to see what you've to offer just the same."~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #67828 /* ~"I had another question, then..."~ */ GOTO 9
  IF ~~ THEN REPLY #67829 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #44204 /* ~"You are in luck then, sir... I happen to have one available. Its cost is thirty copper commons."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44205 /* ~"I'll take it."~ */ DO ~DestroyPartyGold(30)
GiveItemCreate("Costume1",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume1","AR0611",1)
~ GOTO 15
  IF ~  PartyGoldLT(30)
~ THEN REPLY #44206 /* ~"Hmm... not enough on me. I had another question..."~ */ GOTO 9
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44207 /* ~"Never mind, actually. I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #44208 /* ~"I might be back, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44209 /* ~Goncalves takes a set of neatly folded robes from under a counter. "Here you are, sir. I would warn you, though: if this is for the upcoming masquerade of Lord Ird, many folk are already attending as Dustmen."~ */
  IF ~~ THEN REPLY #44210 /* ~"I'll keep that in mind. Farewell, Goncalves."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY #44211 /* ~Goncalves nods and smiles knowingly. "The Dustman bit seemed a bit too common after all, eh? Well, it just so happens that I have a Godsman costume, if you would like. It shall cost you only fifty coppers."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44212 /* ~"I'll take it."~ */ DO ~DestroyPartyGold(50)
GiveItemCreate("Costume2",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume2","AR0611",1)
~ GOTO 17
  IF ~  PartyGoldLT(50)
~ THEN REPLY #44213 /* ~"Hmm... not enough on me. I had another question..."~ */ GOTO 9
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44214 /* ~"Never mind, actually. I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #44215 /* ~"I might be back, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44216 /* ~Goncalves retrieves a set of folded clothing and a heavy leather apron and work-boots from under a counter. "Here you are, sir. Enjoy the masquerade."~ */
  IF ~~ THEN REPLY #44217 /* ~"Thanks, Goncalves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44218 /* ~The man glances up from his work and seems to see Annah for the first time. Tutting softly, he shakes his head. "Lass, what in the maddening winds of Pandemonium has *possessed* you to dress in such a way?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 212
END

IF ~~ THEN BEGIN 19 // from:
  SAY #44219 /* ~He gestures at Annah's outfit. "The leather, miss. The sheer impracticality of it. The emphasis on the bust-line, especially the *oh-so-convenient* cross-slash across the bodice. Your outfit was *obviously* designed to placate someone's hormonal urges rather than to keep you comfortable. Even if you are trying to *make* a statement against authority and decorum like you tieflings tend to do, the message is really harming you in the long run..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 472
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44220 /* ~Try and interrupt.~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44221 /* ~Let them keep talking.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #44222 /* ~Goncalves continues to scold Annah. "I mean really, you look more ready for a session at the Festhall than..." He frowns. "By the way, you aren't a Sensate, are you?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 213
END

IF ~~ THEN BEGIN 21 // from:
  SAY #44223 /* ~The tailor nods. "I didn't think so. Not at all. Why don't you let me attire you in something else a little more modest..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 473
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44224 /* ~Try and interrupt.~ */ EXTERN ~DANNAH~ 214
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44225 /* ~Let them keep talking.~ */ EXTERN ~DANNAH~ 214
END

IF ~~ THEN BEGIN 22 // from:
  SAY #44226 /* ~"As you wish, then, my lady." Goncalves looks to you. "And now, sir, that my work has been well and truly interrupted... I am Goncalves. What was it you were here to see me about?"~ */
  IF ~~ THEN REPLY #44227 /* ~"I had questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #44228 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #44229 /* ~Goncalves immediately turns from his work and bows politely to Fall-from-Grace, a gesture she then returns. "Greetings, Lady Grace. How is it that I can help you today? That order is almost complete..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 143
END

IF ~~ THEN BEGIN 24 // from:
  SAY #44230 /* ~"Of course!" Goncalves turns to you. "And so, sir... what was it you were here to see me about?"~ */
  IF ~~ THEN REPLY #44231 /* ~"I had questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #44232 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #44233 /* ~The tailor is still embroidering patterns into the fabric he held before. He seems to take no notice of you whatsoever.~ */
  IF ~~ THEN REPLY #44234 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #44235 /* ~Leave him be.~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #44236 /* ~Goncalves sets down something he was working on and nods to you. "You come again, sir... good. What can I help you with?"~ */
  IF ~~ THEN REPLY #44237 /* ~"I had questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #44238 /* ~"Just passing by, Goncalves. Farewell."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #44240 /* ~The tailor sneers at you. "I would advise you to *leave,* sir, before I summon the guards once more. No word or deed could ever merit forgiveness for the offense you have given me. Away!"~ */
  IF ~~ THEN REPLY #44242 /* ~"Go ahead; summon the guard."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44243 /* ~Leave.~ */ EXIT
END
