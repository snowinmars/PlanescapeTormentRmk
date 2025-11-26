// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVRISCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVRISCH~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3001 /* ~This sharp-featured woman's appearance is attractive though somewhat disturbing, with her blue-black skin and bright yellow eyes. As she examines you, a small pair of bat-like wings unfold from her back, then seem to settle back into her skin.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 52.0
  SAY #50480 /* ~"Well, well... a floating, disembodied, prevaricating skull..."~ */
  IF ~~ THEN GOTO 4
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",0)
~ THEN BEGIN 2 // from: 53.0
  SAY #50481 /* ~"Well, well... Fall-from-Grace... or whatever it is you call yourself, now. Truly a pleasure to see you here. What do I owe the honor of your visit? I thought that you rarely trafficked among our kind anymore." She glances at you for a moment with the same faint sneer. "Or is your assignment here almost finished?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 3 // from: 54.0
  SAY #50482 /* ~"Well, well... a floating, disembodied, prevaricating skull, and Fall-from-Grace... or whatever it is you call yourself, now. Truly a pleasure to see you here. What do I owe the honor of your visit? I thought that you rarely trafficked among our kind anymore." She glances at you for a moment with the same faint sneer. "Or is your assignment here almost finished?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0 6.0
  SAY #50483 /* ~She narrows her eyes. "You... you're the scarred man, who's been going around asking all the questions?" She looks you up and down. "You sure look lost. Did you want to come in, really, or are you just casing the place because you have nothing better to do?"

"Because Vrischika..." She indicates herself. "...can help you."~ */
  IF ~~ THEN REPLY #50485 /* ~"How can you help me?"~ */ GOTO 19
  IF ~~ THEN REPLY #50486 /* ~"What is this place?"~ */ GOTO 8
  IF ~~ THEN REPLY #50487 /* ~"I did have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #50488 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #50484 /* ~She replies curtly, firing a question back like an arrow: "By choice. And you? Where will your orders take you next?" She suddenly turns to you. "You see, *little* man..." Vrischika smiles, as if savoring the words. "...the best temptress is one that can make you buy into the illusion of being both promiscuous yet virtuous at the same time; a prostitute-priestess, as it were. Mistress Grace is among the greatest..." She turns to Fall-from-Grace. "...are you not? You would not think that a score thousand years of slavery had left their scars, no?"~ */
  IF ~~ THEN DO ~SetGlobal("Vris_vs_Grace","GLOBAL",1)
~ EXTERN ~DGRACE~ 152
END

IF ~~ THEN BEGIN 6 // from:
  SAY #50489 /* ~"Very well. Though you are the ones who came into *my* emporium." Vrischika looks to you.~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN GOTO 4
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #50717 /* ~"Yes?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.0 9.0 10.2 17.1 18.0 19.0 44.5 50.0 55.0
  SAY #50490 /* ~"I'll entertain any questions about the merchandise, but I'm not going to be drawn into one of your famous twenty-questions-about-anything-around-the-spire, *understood?*"~ */
  IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN REPLY #50491 /* ~"Interested in purchasing a slave or servant, Vrischika?"~ */ GOTO 44
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66961 /* ~"I gave someone the Fiend's Tongue, and it's had some... ill effects. Any ideas?"~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #50492 /* ~"What are you, Vrischika?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50493 /* ~"What did you mean by calling Morte 'prevaricating'?"~ */ GOTO 9
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50494 /* ~"You and Fall-from-Grace seem to care little for one another..."~ */ GOTO 10
  IF ~~ THEN REPLY #50495 /* ~"Tell me about this place, at least."~ */ GOTO 8
  IF ~~ THEN REPLY #50496 /* ~"Let's see your merchandise, then."~ */ GOTO 20
  IF ~~ THEN REPLY #50497 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 7.5
  SAY #50498 /* ~"What you see within this shop is the result of much trading and traveling across the planes." She makes a sweeping gesture of the shop. "Weapons, charms... and other *specialty* items are for sale here, as well... everything that is rare and oh-so-exquisite fills this emporium. Your needs. I sate them."~ */
  IF ~~ THEN REPLY #50499 /* ~"I had another question..."~ */ GOTO 7
  IF ~~ THEN REPLY #50500 /* ~"Let's see your merchandise, then."~ */ GOTO 20
  IF ~~ THEN REPLY #50501 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #50502 /* ~"Prevaricating... misrepresenting, perjuring, dissimulating, *lying*... oh, did I say that? I'd meant a floating, disembodied, *pontificating* skull. As in dogmatic - always stating an opinion in a self-important manner." Vrischika smiles innocently.~ */
  IF ~~ THEN REPLY #50503 /* ~"Hmm. I had another question..."~ */ GOTO 7
  IF ~~ THEN REPLY #50504 /* ~"All right, then. Let's see your merchandise..."~ */ GOTO 20
  IF ~~ THEN REPLY #50505 /* ~"I... see. That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.4
  SAY #50507 /* ~"Oh, that baatezu camp follower who's made her home in Sigil? Curious, no? But then, what better a place to train her agents than that little 'brothel' of hers..."~ */
  IF ~~ THEN REPLY #50508 /* ~"Baatezu camp follower?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50509 /* ~"Train her agents?"~ */ GOTO 14
  IF ~~ THEN REPLY #50510 /* ~"Hmm. I had another question..."~ */ GOTO 7
  IF ~~ THEN REPLY #50511 /* ~"I'd like to see your merchandise..."~ */ GOTO 20
  IF ~~ THEN REPLY #50512 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 17.0
  SAY #50513 /* ~"Ever since her mother sold her into slavery, she has been a plaything of the planes for many a century. She claims that she was able to free herself from her chains, but you may give that word as much credence as you would give the word of any other tanar'ri bitch." She smiles slightly. "Myself excluded, of course."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 153
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50514 /* ~"Truth?! *Truth?!* One does not 'win free' of baatezu contracts, bitch cloaked in human skin. You speak lies, and all the tanar'ri hordes know it, from the lowest legions to the other comfort-suckling succubi as they cavort across the planes. 'Fall-from-Grace was but a baatezu slave from the moment she was born, and so shall she *always* be.' You still are an indentured plaything of the baatezu, to be tortured and commanded as they see fit." Vrischika sneers. "You even *behave* as they do."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 154
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50515 /* ~"Enough! I do not care to hear you speak your lies in my presence!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 155
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #50516 /* ~"Yes... they are her eyes and ears in the city of Sigil and across the planes. What they do not see or hear they may coerce from another man that has seen and heard. And who could think humans capable of such deception and trickery? Oh, Grace is indeed a clever one. Not as clever as her mother, perhaps, but clever nonetheless..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 156
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50517 /* ~"Oh, but of *course* not! Did I dare suggest such a thing? But perhaps you should let the man judge for himself." Vrischika turns to you, eyes blazing. "Do you not wonder, little man? Does the mephit of reason and curiosity ever enter your mind as to this matter? Does not the arrangement at the brothel seem *strange* to you?"~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #50518 /* ~Vrischika goes on before you can answer. "Occam's razor can leave a scar, but it can remove the deeper ailments so often caused by poison of liars and imaginers."

"And now here she is, traveling with you. Most curious. Why would someone, a proprietress of such an establishment, leave it for any reason? And for a man she barely knows? Questions, questions..."

"The answers may be painful, indeed."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 157
END

IF ~~ THEN BEGIN 17 // from:
  SAY #50519 /* ~"Oh, I'm certain he did ask... what man could resist?" Vrischika sneers and looks away in disgust.~ */
  IF ~~ THEN REPLY #50520 /* ~"What was it you said about her being a baatezu camp follower?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50521 /* ~"I had another question..."~ */ GOTO 7
  IF ~~ THEN REPLY #50522 /* ~"I'd like to see your merchandise..."~ */ GOTO 20
  IF ~~ THEN REPLY #50523 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY #50524 /* ~Vrischika sighs loudly. "An alu-fiend... a half-demon. My mother was tanar'ri, a fiend, and my father a great king of mortals. Such a rude question... but then, you're rather rude-looking yourself, aren't you?"~ */
  IF ~~ THEN REPLY #50525 /* ~"I had another question..."~ */ GOTO 7
  IF ~~ THEN REPLY #50526 /* ~"I'd like to see your merchandise..."~ */ GOTO 20
  IF ~~ THEN REPLY #50527 /* ~"That's all I wished to know; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.0
  SAY #50528 /* ~"I travel and trade extensively. I hear a great deal, I purchase a great deal, and I own a great deal. Perhaps I can make you a great deal. Is there anything that you desire?"~ */
  IF ~~ THEN REPLY #50529 /* ~"Only answers to some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #50530 /* ~"Perhaps. What are you selling?"~ */ GOTO 20
  IF ~~ THEN REPLY #50531 /* ~"No, not now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.6 8.1 9.1 10.3 17.2 18.1 19.1 50.1 55.1
  SAY #50533 /* ~"Would you care to examine the weapons and charms? Or some of my more *exotic* acquisitions?"~ */
  IF ~~ THEN REPLY #50534 /* ~"The weapons and charms..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50535 /* ~"The exotic items..."~ */ GOTO 21
  IF ~~ THEN REPLY #50536 /* ~"Nothing, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1 22.2 23.1 24.1 31.2 31.3 32.1 33.1 34.1 37.2 38.1 41.1 43.1 58.1 59.6 60.6
  SAY #50539 /* ~Vrischika smiles as you look at the various shelves in the middle of the shop. "If you see nothing you like here, there are more items towards the front and the back of the store, as well."~ */
  IF ~  Global("Vris_Buy_05","AR0609",0)
~ THEN REPLY #50551 /* ~Examine the Fiend's Tongue.~ */ GOTO 31
  IF ~  Global("Vris_Buy_06","AR0609",0)
~ THEN REPLY #50552 /* ~Examine the Gorgon Salve.~ */ GOTO 32
  IF ~  Global("Vris_Buy_08","AR0609",0)
~ THEN REPLY #50554 /* ~Examine the metallic cube figurine.~ */ GOTO 33
  IF ~  Global("Vris_Buy_09","AR0609",0)
~ THEN REPLY #50555 /* ~Examine the Monster Jug.~ */ GOTO 34
  IF ~~ THEN REPLY #66633 /* ~Look to the front of the store.~ */ GOTO 59
  IF ~~ THEN REPLY #66634 /* ~Look to the back of the store.~ */ GOTO 60
  IF ~~ THEN REPLY #50562 /* ~"Actually, let me look at the weapons and charms..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50563 /* ~"Nothing interests me at the moment. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #50564 /* ~Vrischika notes you examining the book labeled 'CHEAT CODES.' "Yes... they're exactly what you think they are. Go ahead; look at them."~ */
  IF ~~ THEN REPLY #50565 /* ~"Cheat codes? I don't understand..."~ */ GOTO 23
  IF ~~ THEN REPLY #50566 /* ~Look at the various Cheat Codes.~ */ GOTO 24
  IF ~~ THEN REPLY #50567 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50568 /* ~"Nothing interests me at the moment. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #50573 /* ~"Oh, come now." Vrischika places her hands on her hips and cocks her head. "Don't play naive with me! Remember, I'm a fiend; I can *smell* your excitement. Yes..." She speaks slowly, as if talking to a child. "These are *cheat* codes. They allow you to *CHEAT.* Go on... examine them. They won't hurt you."~ */
  IF ~~ THEN REPLY #50574 /* ~Look at the various Cheat Codes.~ */ GOTO 24
  IF ~~ THEN REPLY #50575 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50576 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 23.0
  SAY #50577 /* ~There are a number of chapters within the tome: Teleport Cheat, Healing Cheat, Wealth Cheat, Spell Recharge Cheat, Attribute Score Cheat, Death Cheat, Explore Area Cheat, Word 'o Good Cheat, and Word o' Evil Cheat.~ */
  IF ~~ THEN REPLY #50578 /* ~"What do you want for them?"~ */ GOTO 41
  IF ~~ THEN REPLY #50579 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50580 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 59.0
  SAY #50581 /* ~You examine a number of small bottles, each labeled as 'Baby Oil.' Vrischika picks one up and presents it to you. "Interested? It's the real thing, of course. Thousands of mewling, mortal babies went into the making of the stuff."~ */
  IF ~~ THEN REPLY #50582 /* ~"Eh... no thanks. Let me see the other stuff."~ */ GOTO 59
  IF ~~ THEN REPLY #50583 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 59.1
  SAY #50584 /* ~You examine a twisted little imp-like creature, sculpted out of pure, milk chocolate. "It looks delicious, does it not? Imported from the Lower Planes. These are rare, you know, and quite prized by lovers of chocolate and confections. It's a real quasit - a fiendish familiar - polymorphed into chocolate by powerful sorcery. It's only one hundred and ninety-nine coppers."~ */
  IF ~  PartyGoldGT(198)
~ THEN REPLY #50585 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_01","AR0609",1)
DestroyPartyGold(199)
GiveItemCreate("ChocoQ",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50586 /* ~"Actually, let me see the other things again..."~ */ GOTO 59
  IF ~~ THEN REPLY #50587 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 59.2
  SAY #50589 /* ~You examine a rather unassuming book held closed by a tiny brass lock. "That," coos Vrischika, "is the Codex of the Inconceivable. I'll only say that it's just... just... well, I cannot explain it. Mere words simply won't suffice! You can own it yourself for a mere one thousand copper commons... and believe me: it is well worth it."~ */
  IF ~  PartyGoldGT(999)
~ THEN REPLY #50590 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_02","AR0609",1)
DestroyPartyGold(1000)
GiveItemCreate("CodexI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50591 /* ~"Actually, let me see the other things again..."~ */ GOTO 59
  IF ~~ THEN REPLY #50592 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 59.3
  SAY #50593 /* ~You examine a small glass phial labeled as 'Deva's Tears.' "These were collected from a deva who was captured during a Blood War skirmish. The fiends tormented the imprisoned angel for eons before he at last escaped - this small bottle holds the twelve tears he shed in that time. Their price is but one hundred copper commons."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50594 /* ~"I'll take them."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50595 /* ~"Actually, let me see the other things again..."~ */ GOTO 59
  IF ~~ THEN REPLY #50596 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 59.4 61.0
  SAY #50597 /* ~You examine a small glass phial labeled as 'Deva's Tears.' Vrischika presents it to you. "These were collected from a deva who was captured during a Blood War skirmish. The fiends tormented the imprisoned angel for eons before he at last escaped - this small bottle holds the twelve tears he shed in that time. It is said their touch will soothe the most savage anger... even that of a fiend's tongue." Vrischika smiles cruelly. "Their price is but nine hundred and ninety-nine copper commons."~ */
  IF ~  PartyHasItem("EcNote")
~ THEN REPLY #64175 /* ~"I have this thousand-common promissory note from the Brothel..."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyItem("EcNote",FALSE)
GiveGoldForce(1)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 58
  IF ~  PartyGoldGT(998)
~ THEN REPLY #50598 /* ~"Those might stop the Fiend Tongue's cursing. I'll take them."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",2)
DestroyPartyGold(999)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50599 /* ~"Actually, let me see the other things..."~ */ GOTO 59
  IF ~~ THEN REPLY #50600 /* ~"Those could be what Ecco needs... but no thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 59.5
  SAY #50601 /* ~You examine a bottle labeled as 'Elixir of Horrific Separation.' Vrischika presents it to you. "This stuff was compounded by a scholar who'd found she possessed a darker half - a side of her which took control, at times, and bade her do awful things. This potion was to have 'split' the darker half away from her, creating two separate beings. Mercykillers, however, found and executed her for a string of depraved murders before she could use it. I'd charge you only two hundred copper commons for the Elixir."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #50602 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_04","AR0609",1)
DestroyPartyGold(200)
GiveItemCreate("ElixirS",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50603 /* ~"Actually, let me see the other things again..."~ */ GOTO 59
  IF ~~ THEN REPLY #50604 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.0
  SAY #50605 /* ~You examine what appears to be a tongue floating in a jar of brine. Vrischika frowns at it. "This is a fiend's tongue... a cornugon's, I think, but who really knows? It's said that, placed into the mouth of any living thing, it will give the ability of speech, even if there was none before. I'm selling this oddity for only sixty-six coppers, should you want it."~ */
  IF ~  PartyGoldGT(65)
!Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50606 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  PartyGoldGT(65)
Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50607 /* ~"I'll take it; it may give Ecco back her voice."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66812 /* ~"That could return Ecco's voice... but let me see the other things again, first..."~ */ JOURNAL #66814 /* ~I saw a Fiend's Tongue in Vrischika's curiosity shop; from the way she describes it, it sounds as if the thing would give Ecco her voice back.~ */ GOTO 21
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50608 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66813 /* ~"That might give Ecco a voice... but no thanks. Farewell."~ */ JOURNAL #66814 /* ~I saw a Fiend's Tongue in Vrischika's curiosity shop; from the way she describes it, it sounds as if the thing would give Ecco her voice back.~ */ EXIT
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50609 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1
  SAY #50610 /* ~You examine a bottle labeled as 'Gorgon Salve.' Vrischika holds it up for you. "I traded for this with some sword-slinging Prime Worlder... Perseus, I think, was his name. Smeared onto the surface of any being turned to stone, it will revert them to flesh. Only one hundred copper commons; a bargain, considering how handy it might come in should you ever find a friend of yours transmuted to rock."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50611 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_06","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Gsalve",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50612 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50613 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 21.2
  SAY #50614 /* ~You examine a small, metal replica of a cube-like creature with huge eyes on one of its faces. The toy has two legs, two arms, two folding wings, and at least eighteen points of articulation. Vrischika smiles as you pick it up. "A collector's item, perhaps, or a piece of artwork. Who knows? But I like it. If you do buy it, ask around... someone might know more about it than I. You can have it for only fifteen hundred copper coins."~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50615 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_08","AR0609",1)
DestroyPartyGold(1500)
GiveItemCreate("Cube",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50616 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50617 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 21.3
  SAY #50618 /* ~You examine a plain-looking jug... despite its common appearance, you feel reluctant to touch the thing, as if it might bite you. Vrischika watches you, chuckling, then shrugs. "It's a jug. It's got some sort of monster trapped in it - that's why your hair's prickling up like that. If you'd like it, it's only one hundred and twenty-three copper."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50619 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_09","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("MonJug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50620 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50621 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 60.0
  SAY #50622 /* ~You examine a stained, ground glass lens the width of your hand, held in brushed steel ring. A small, geared protrusion coming off the ring makes it look as if the lens should attach to some sort of clockwork machine, and it smells faintly of horrible perfume. Vrischika holds it up for you. "I've no idea what this really is, but it radiates fairly powerful magic. An old soldier named Ghysis brought it up to me from a Lower Plane battlefield - he'd murdered his own men in order to escape his tour of duty there, and brought me a number of interesting items he'd collected over the course of the campaign. I've kept it mostly as a conversation piece, though you may have it for one hundred and forty-nine copper coins, if you'd like."~ */
  IF ~  PartyGoldGT(148)
~ THEN REPLY #50623 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_10","AR0609",1)
DestroyPartyGold(149)
GiveItemCreate("Lens12",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50624 /* ~"Actually, let me see the other things again..."~ */ GOTO 60
  IF ~~ THEN REPLY #50625 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 60.1
  SAY #50626 /* ~You examine a ring in a small, padded case. Vrischika holds it up so that you can see it more closely. "This is Yevrah's Ring of Almost Invisibility. It makes its wearer invisible - well, almost. I will part with it for the meager sum of three hundred and forty-nine copper commons."~ */
  IF ~  PartyGoldGT(348)
~ THEN REPLY #50627 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_11","AR0609",1)
DestroyPartyGold(349)
GiveItemCreate("RingAI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50628 /* ~"Actually, let me see the other things again..."~ */ GOTO 60
  IF ~~ THEN REPLY #50629 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #50630 /* ~You examine an oddly shaped dagger presented on an ornamental display rack. A placard beneath the rack reads 'Sword of Wh'ynn.' Vrischika taps its pommel with her fingertip. "It's also known as the Cheater's Blade. Merely holding it aloft will win you the game. If you're certain you'd like it, I can place it in your hands for fifteen hundred copper commons."~ */
  IF ~~ THEN REPLY #50631 /* ~"Win me the... what do you mean?"~ */ GOTO 38
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50632 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50633 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50634 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #50635 /* ~Vrischika narrows her yellow eyes at you. "Oh, come now. You know *exactly* what I mean. Buy the Cheater's Blade, you beat the game. It's that simple... for only fifteen hundred copper commons. Do you want it, or no?"~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50636 /* ~"Yes, I'll take it."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50637 /* ~"No... but let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50638 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 60.3
  SAY #50639 /* ~The years have not been kind to this tiny rag doll; it is coming apart at the seams, and it looks like its threads are unraveling. It looks like some strange robed woman with a halo of spikes on her head. Vrischika holds it up for you. "This was found in a well-trapped strongbox sunk deep beneath the surface of Sigil. It was part of a small horde of treasure and forbidden magical texts, though I don't know what it's for. If you like it, it's only ninety-nine copper coins."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50640 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50641 /* ~"Actually, let me see the other things again..."~ */ GOTO 60
  IF ~~ THEN REPLY #50642 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 60.4
  SAY #50643 /* ~The years have not been kind to this tiny rag doll; it is coming apart at the seams, and it looks like its threads are unraveling. It is obviously intended to be a replica of the Lady of Pain, but the button eyes and its plush softness don't strike much fear into your heart. Vrischika holds it up for you. "This was found in a well-trapped strongbox sunk deep beneath the surface of Sigil. It was part of a small horde of treasure and forbidden magical texts, though I don't know what it's for. If you like it, it's only ninety-nine copper coins."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50644 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50645 /* ~"Actually, let me see the other things again..."~ */ GOTO 60
  IF ~~ THEN REPLY #50646 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 24.0
  SAY #50647 /* ~Vrischika steps closer to you. "Mere coin isn't enough for such an item. I would have a pound of your blood, drawn in front of me with *this* blade..." Suddenly, there is a serrated dagger in her hand. "...and drained into this iron box. I'll take nothing less than this."~ */
  IF ~~ THEN REPLY #50648 /* ~"I'll do it."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,10)
FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Vris_Buy_07","GLOBAL",1)
GiveItemCreate("Cheats",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #50649 /* ~"Actually, let me see the other things again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50650 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #50651 /* ~In minutes the grisly ritual is over, and Vrischika - a satisfied smile upon her lips - hands you the book. "Don't have too much of a time, now. Farewell."~ */
  IF ~~ THEN REPLY #50652 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 26.0 27.0 28.0 29.1 30.0 31.0 31.1 32.0 33.0 34.0 35.0 36.0 37.1 38.0 39.0 40.0 51.0
  SAY #50653 /* ~"Yes," Vrischika purrs, "a wise choice." The copper you pour into her hand seems to disappear the moment it touches her palm; she hands you the item. "Please, enjoy your newest acquisition."~ */
  IF ~~ THEN REPLY #58910 /* ~"I'd like to look at the weapons and charms, now..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58911 /* ~"I'd like to look at the exotic items again..."~ */ GOTO 21
  IF ~~ THEN REPLY #50654 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 7.0
  SAY #50655 /* ~Vrischika's full, black lips curl into a smile. "I'm *always* interested in acquiring more help. Standish - the lazy dullard - helps me around the store, but I could use another body for my manor. Who were you offering? I'll pay five thousand coins, if they're decent."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50656 /* ~"How about Morte?"~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 504
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50657 /* ~"This tiefling girl, Annah."~ */ DO ~SetGlobal("Sell_Annah","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DANNAH~ 250
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50658 /* ~"Dak'kon, the githzerai."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 167
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50659 /* ~"Fall-from-Grace."~ */ DO ~SetGlobal("Sell_Grace","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ GOTO 48
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #50660 /* ~"This modron here - Nordom."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DNORDOM~ 13
  IF ~~ THEN REPLY #50661 /* ~"Actually, forget it. I had another question..."~ */ GOTO 7
  IF ~~ THEN REPLY #50662 /* ~"No one, actually; never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #50663 /* ~Vrischika narrows her eyes at Morte. "Hmmm... he could prove useful, yes. So long as you understand that you'll never see him again... I'll pay five thousand copper coins for him."~ */
  IF ~~ THEN REPLY #50664 /* ~"Never again, you say? Fine... take him."~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DMORTE~ 505
  IF ~~ THEN REPLY #50665 /* ~"No, I'd best not. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #50666 /* ~Vrischika shows a slip of parchment to her newest slave, Morte. "Here... this is the address of my home, in the Lady's Ward. Go there, now... try and flee, and I'll have a pack of fiends so far down your throat you'll be begging to come back to Sigil and serve me." She then turns to you. "And *you*... my thanks; I'm sure he'll prove entertaining. Here's your five thousand commons... farewell."~ */
  IF ~~ THEN REPLY #50668 /* ~"Farewell."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Morte")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #50667 /* ~Vrischika narrows her eyes at Dak'kon. "Hmmm... a githzerai, eh? And a *zerth,* too. So long as you understand that you'll never see him again... I'll pay five thousand copper coins for him."~ */
  IF ~~ THEN REPLY #50669 /* ~"Never? I understand. Take him."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DDAKKON~ 168
  IF ~~ THEN REPLY #50670 /* ~"No, I'd best not. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.3
  SAY #50671 /* ~"Don't be *ridiculous.*" Vrischika sneers, shaking her head. "As if she was *yours* to sell... leave, and return here - or don't - only when you're feeling somewhat less foolish."~ */
  IF ~~ THEN REPLY #50672 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #50673 /* ~Vrischika narrows her eyes at Nordom. "Hmmm... a clockwork servant of my very own? Yes, I'll certainly make that deal. So long as you understand that you'll never see him again... I'll pay five thousand copper coins for him."~ */
  IF ~~ THEN REPLY #50674 /* ~"Never? I understand. Take him."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DNORDOM~ 14
  IF ~~ THEN REPLY #50675 /* ~"No, I'd best not. Farewell, Vrischika."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",1)
~ THEN BEGIN 50 // from: 6.1
  SAY #50676 /* ~Vrischika gives a quick half-bow. "Welcome back. Here to buy something?"~ */
  IF ~~ THEN REPLY #50677 /* ~"Not just now. I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #50678 /* ~"Yes, I am."~ */ GOTO 20
  IF ~~ THEN REPLY #52599 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 60.2
  SAY #50679 /* ~You examine a large pewter ale stein covered in strange runes. Vrischika holds it up for you to see more closely. "An ale mug of unusual manufacture, which keeps its contents - usually beer, of course - icy cold whatever the surrounding temperature. Two hundred and ninety-nine copper commons, and you'll enjoy the frostiest ale you've ever had outside the paraplane of Ice."~ */
  IF ~  PartyGoldGT(298)
~ THEN REPLY #50680 /* ~"I'll take it."~ */ DO ~SetGlobal("Vris_Buy_14","AR0609",1)
DestroyPartyGold(299)
GiveItemCreate("DwfMug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50681 /* ~"Actually, let me see the other things again..."~ */ GOTO 60
  IF ~~ THEN REPLY #50682 /* ~"No thanks. Farewell, Vrischika."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 52 // from:
  SAY #50683 /* ~This sharp-featured woman's appearance is attractive though somewhat disturbing, with her blue-black skin and bright yellow eyes. As she examines you, a small pair of bat-like wings unfold from her back, then seem to settle back into her skin.~ */
  IF ~~ THEN GOTO 1
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 53 // from:
  SAY #50684 /* ~This sharp-featured woman's appearance is attractive though somewhat disturbing, with her blue-black skin and bright yellow eyes. As she examines you, a small pair of bat-like wings unfold from her back, then seem to settle back into her skin.~ */
  IF ~~ THEN GOTO 2
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 54 // from:
  SAY #50685 /* ~This sharp-featured woman's appearance is attractive though somewhat disturbing, with her blue-black skin and bright yellow eyes. As she examines you, a small pair of bat-like wings unfold from her back, then seem to settle back into her skin.~ */
  IF ~~ THEN GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DGrace")
~ THEN BEGIN 55 // from:
  SAY #52596 /* ~Vrischika gives a quick half-bow. "Welcome back. Here to buy something?"~ */
  IF ~~ THEN REPLY #52597 /* ~"Not just now. I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #52598 /* ~"Yes, I am."~ */ GOTO 20
  IF ~~ THEN REPLY #52600 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63985 /* ~Vrischika shows a slip of parchment to her newest slave, Dak'kon. "Here... this is the address of my home, in the Lady's Ward. Go there, now... try and flee, and I'll have a pack of fiends so far down your throat you'll be begging to come back to Sigil and serve me." She then turns to you. "And *you*... my thanks; I'm sure he'll prove entertaining. Here's your five thousand commons... farewell."~ */
  IF ~~ THEN REPLY #63986 /* ~"Farewell."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Dakkon")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #63987 /* ~Vrischika shows a slip of parchment to her newest slave, Nordom. "Here... this is the address of my home, in the Lady's Ward. Go there, now... try and flee, and I'll have a pack of fiends so far down your throat you'll be begging to come back to Sigil and serve me." She then turns to you. "And *you*... my thanks; I'm sure he'll prove entertaining. Here's your five thousand commons... farewell."~ */
  IF ~~ THEN REPLY #63988 /* ~"Farewell."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Nordom")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 29.0
  SAY #64171 /* ~Vrischika frowns slightly, examining the note. "Well... I suppose I can have Standish fetch it, later. Very well; here you are." She hands you the item. "Please, enjoy your newest acquisition."~ */
  IF ~~ THEN REPLY #64172 /* ~"I'd like to look at the weapons and charms, now..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64173 /* ~"I'd like to look at the exotic items again..."~ */ GOTO 21
  IF ~~ THEN REPLY #64174 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.4 25.0 26.1 27.1 28.1 29.2 30.1 60.5
  SAY #66631 /* ~You look at the various shelves towards the front of Vrischika's shop.~ */
  IF ~~ THEN REPLY #66635 /* ~Examine the Baby Oil.~ */ GOTO 25
  IF ~  Global("Vris_Buy_01","AR0609",0)
~ THEN REPLY #66636 /* ~Examine the Chocolate Quasit.~ */ GOTO 26
  IF ~  Global("Vris_Buy_02","AR0609",0)
~ THEN REPLY #66637 /* ~Examine the Codex of the Inconceivable.~ */ GOTO 27
  IF ~  Global("Vris_Buy_03","AR0609",0)
!Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66638 /* ~Examine the Deva's Tears.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66639 /* ~Examine the Deva's Tears.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ JOURNAL #66815 /* ~I was examining some Deva's Tears for sale in Vrischika's shop; she told me they would soothe the most savage anger - even that of a Fiend's Tongue. Perhaps they could help Ecco...~ */ GOTO 29
  IF ~  Global("Vris_Buy_04","AR0609",0)
~ THEN REPLY #66640 /* ~Examine the Elixir of Horrific Separation.~ */ GOTO 30
  IF ~~ THEN REPLY #66641 /* ~Look to the middle of the store.~ */ GOTO 21
  IF ~~ THEN REPLY #66642 /* ~Look to the back of the store.~ */ GOTO 60
  IF ~~ THEN REPLY #66643 /* ~"Actually, let me look at the weapons and charms..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66644 /* ~"Nothing interests me at the moment. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 21.5 35.1 36.1 39.1 40.1 51.1 59.7
  SAY #66632 /* ~You look at the various shelves towards the back of Vrischika's shop.~ */
  IF ~  Global("Vris_Buy_10","AR0609",0)
~ THEN REPLY #66645 /* ~Examine the stained lens.~ */ DO ~SetGlobal("CW_Vrischika_Ghysis","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Vris_Buy_11","AR0609",0)
~ THEN REPLY #66646 /* ~Examine Yevrah's Ring.~ */ GOTO 36
  IF ~  Global("Vris_Buy_14","AR0609",0)
~ THEN REPLY #66647 /* ~Examine the rune-covered ale stein.~ */ GOTO 51
  IF ~  Global("Vris_Buy_13","AR0609",0)
Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #66648 /* ~Examine the tattered rag doll.~ */ GOTO 39
  IF ~  Global("Vris_Buy_13","AR0609",0)
GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #66649 /* ~Examine the tattered rag doll.~ */ GOTO 40
  IF ~~ THEN REPLY #66650 /* ~Look to the front of the store.~ */ GOTO 59
  IF ~~ THEN REPLY #66651 /* ~Look to the middle of the store.~ */ GOTO 21
  IF ~~ THEN REPLY #66652 /* ~"Actually, let me look at the weapons and charms..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66653 /* ~"Nothing interests me at the moment. Farewell, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 7.1
  SAY #66959 /* ~Vrischika only smiles and points at an item towards the front of the store.~ */
  IF ~~ THEN REPLY #66960 /* ~Examine what she's pointing at.~ */ GOTO 29
END
