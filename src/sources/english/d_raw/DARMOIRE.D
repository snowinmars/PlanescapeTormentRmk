// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMOIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMOIRE~

IF ~  Global("Armoire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2879 /* ~As you make to search the armoire, its handles suddenly yank out of your grasp as the drawers slam themselves shut. A disdainful *hmph!* issues from the cabinet...~ */
  IF ~~ THEN REPLY #2880 /* ~"Hello?"~ */ DO ~SetGlobal("Armoire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42567 /* ~Just leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7235 /* ~"'Hello,' indeed." The armoire gives another *hmph!* "So, what have we here? A rogue after some lady's frilly undergarments, hmmmnn?"~ */
  IF ~~ THEN REPLY #42568 /* ~"You *talk?*"~ */ GOTO 2
  IF ~~ THEN REPLY #42569 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #42570 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #42571 /* ~"I'll just leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42532 /* ~"Do I? Why yes, I do."~ */
  IF ~~ THEN REPLY #42572 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #42573 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #42574 /* ~"I'll just leave now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #42533 /* ~"I am Luis. And who are *you?* Thoughtless, uncouth fellow, rummaging about in other people's things..."~ */
  IF ~~ THEN REPLY #42575 /* ~"Never mind that. What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #42576 /* ~"Never mind; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #42534 /* ~"Well, sir, if you must know... I am being an armoire."~ */
  IF ~~ THEN REPLY #42577 /* ~"But *why* are you being an armoire in this brothel?"~ */ GOTO 5
  IF ~~ THEN REPLY #42578 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 12.0
  SAY #42535 /* ~"I happen to have become an armoire because I *want* to be an armoire, thank you very much. It's *not* to watch the ladies undressing, nor to have them place their soft, sweet-smelling undergarments in my drawers where they can rub against my skin. Such accusations are an insult to a practitioner of the magic arts... I am merely soaking in the experience of what it *means* to be an armoire. The sights, the smells, the sensations..."~ */
  IF ~~ THEN REPLY #42579 /* ~"So all the women know about this, then?"~ */ GOTO 6
  IF ~~ THEN REPLY #42580 /* ~"All right. I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42581 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42536 /* ~"Yes! Yes, they do, and they wholeheartedly approve of... well, not with their entire hearts, exactly. And while they have not *spoken* of their approval in my presence - since they are not exactly aware that I am an armoire - I would not want them to know that I am anything but, and so have not been able to inquire upon the matter."~ */
  IF ~  CheckStatGT(Protagonist,14,DEX)
~ THEN REPLY #42582 /* ~"I'll need something from you to keep quiet about this one."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,DEX)
~ THEN REPLY #42583 /* ~"I'll need something from you to keep quiet about this one."~ */ GOTO 9
  IF ~~ THEN REPLY #42584 /* ~"I had some questions for you..."~ */ GOTO 12
  IF ~~ THEN REPLY #42585 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42537 /* ~"Very well! Posh! Open the third drawer, you scalawag." As you reach your hand into the drawer, it slams shut with great force - you only barely manage to withdraw your fingers in time.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #42538 /* ~"Ha ha! Cretin! Idiot! 'Open the drawer,' I said, and you reach in-" He slams his drawer again for emphasis, then begins shaking with laughter.~ */
  IF ~~ THEN REPLY #42586 /* ~"I'm going to tell them right now."~ */ GOTO 11
  IF ~~ THEN REPLY #42587 /* ~"I'm going to chop you up for kindling."~ */ GOTO 10
  IF ~~ THEN REPLY #42588 /* ~"Very amusing. I had some questions, Luis..."~ */ GOTO 12
  IF ~~ THEN REPLY #42589 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #42539 /* ~"Very well! Posh! Open the third drawer, you scalawag." As you reach your hand into the drawer, it slams shut on your fingers with great force. Searing pain races through your hand as you withdraw your battered fingers.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1 11.0
  SAY #42540 /* ~"You'll do *nothing* of the sort! Why, even the most *common* of men knows that one can't commit an act of violence within the Brothel... you'll simply be cast out. And even if that were *not* the case, I assure you my command of the Art is quite impressive."~ */
  IF ~~ THEN REPLY #42590 /* ~"Fine, then... I'll just go tell them about you."~ */ GOTO 11
  IF ~~ THEN REPLY #42591 /* ~"I had some questions, then..."~ */ GOTO 12
  IF ~~ THEN REPLY #42592 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.0
  SAY #42541 /* ~"First, I would tell you this one thing: I have been popping in and out of the Brothel for a good, long time... I'm quite knowledgeable regarding both its occupants and their activities. I assure you that talking about me is utterly worthless; not only will you lose me as a potential source of information, but I'll simply disappear before someone comes to investigate your claims, leaving you looking the fool."~ */
  IF ~~ THEN REPLY #42593 /* ~"Maybe I'll just chop you up for kindling, then."~ */ GOTO 10
  IF ~~ THEN REPLY #42594 /* ~"I understand. I had some questions, then..."~ */ GOTO 12
  IF ~~ THEN REPLY #42595 /* ~"I see. Farewell then, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 6.2 8.2 10.1 11.1 13.0 14.0 15.0 16.0 17.0 18.0 19.1 20.0 21.0 32.0
  SAY #42542 /* ~"Yes?"~ */
  IF ~~ THEN REPLY #42596 /* ~"So... why are you being an armoire in this brothel?"~ */ GOTO 5
  IF ~~ THEN REPLY #42597 /* ~"Can you return to your normal form at will?"~ */ GOTO 13
  IF ~~ THEN REPLY #42598 /* ~"Can you tell me about this place?"~ */ GOTO 14
  IF ~  Global("Nenny_Hint2","AR0605",3)
~ THEN REPLY #42599 /* ~"Nenny told me she saw a man leaving Kimasxi Addertongue's room... I think that was you, Luis."~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",4)
~ GOTO 36
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #42600 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 15
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #42601 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 16
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #42602 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 17
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #42603 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 18
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42604 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 19
  IF ~  GlobalGT("Vivian","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #42605 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 21
  IF ~~ THEN REPLY #42606 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #42543 /* ~The armoire seems to think about this for a moment. "I have no need to share such secrets with the likes of you! And besides, there is no cause to change back at the present moment, since I have not yet experienced the full sensations of being an armoire. It is a complex thing, to hold and sort soft frilly clothes, smelling of wondrous woman-smells." A drawer slides open and closed, the sound mimicking a pleasant sigh.~ */
  IF ~~ THEN REPLY #42607 /* ~"I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42608 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #42544 /* ~"I would have a man find out for himself, rather than tell him the whole of it... after all, that's half the joy of the entire experience. I'll only tell you that which you likely know, already: it's called the Brothel of Slating Intellectual Lusts, and the prostitutes within specialize in the arts of language and communication."~ */
  IF ~~ THEN REPLY #42609 /* ~"I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42610 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.4
  SAY #42545 /* ~"Yes, Ecco. She can't have always been mute, you know. Otherwise, I am most certain she would have learned some other means of communicating in the meantime. It must be a recent occurrence."~ */
  IF ~~ THEN REPLY #42611 /* ~"I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42612 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.5
  SAY #42546 /* ~"I wouldn't go so far as to say she is *Ravel's* daughter, but she *is* a night hag - that much I am sure of. Note the skin, the eyes, the lusty nature and her irrational fixation upon the dreams of others... all sure signs, sure signs. Doubtless it is only Kesai's vigorous denial of her true nature that has so far prevented her degeneration into the crooked old crone all night hags become."~ */
  IF ~~ THEN REPLY #42613 /* ~"I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42614 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY #42547 /* ~"Oh dear, yes... I *had* heard about that. Most unfortunate! Did you ever have the exquisite pleasure of breathing in that scent of hers?" The armoire's drawers seem to shudder with delight. "Absolutely wondrous, it was. But sadly, no; I know not where good Lady Vivian's scent might be found."~ */
  IF ~~ THEN REPLY #42615 /* ~"I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #66529 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.7
  SAY #42548 /* ~"I heard she used to walk about in a crimson veil, but that she had recently taken to her room and darkened it. I did not know what had occurred. So this veil of hers is missing, then?"~ */
  IF ~~ THEN REPLY #42616 /* ~"Yes. I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42617 /* ~"Yes, it is. Farewell, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.8
  SAY #42549 /* ~"Few folk who've dwelled in Sigil for any length of time don't. I must wonder, though, what is it about her you wish to know?"~ */
  IF ~~ THEN REPLY #42618 /* ~"I need to find her."~ */ GOTO 20
  IF ~~ THEN REPLY #42619 /* ~"Never mind. I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42620 /* ~"Forget I asked about her. Farewell, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42550 /* ~"You're mad, you know... quite mad. 'Utterly barmy,' I believe, is the common term for it. Ravel was banished from Sigil long ago, and if she's not dead you'll wish *you* were should you somehow succeed in finding her. She devoured all those who sought her out before, it is said, and will likely do you the same disservice. I would leave well enough alone."~ */
  IF ~~ THEN REPLY #42621 /* ~"I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42622 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.9
  SAY #42551 /* ~"There is no tenth student! What is this rubbish you speak of?"~ */
  IF ~~ THEN REPLY #42623 /* ~"Never mind. I had another question..."~ */ GOTO 12
  IF ~~ THEN REPLY #42624 /* ~"Forget it, Luis. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 35.0 36.0
  SAY #42552 /* ~You succeed in yanking the cloth - a translucent, crimson veil - from the armoire. Tucking it away, you notice that it is perfumed with a light, exotic, and most pleasant fragrance.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 27.0 31.0
  SAY #42553 /* ~"Damn it! You rogue! Blackguard! Scoundrel! You give that back this *instant!* That's not yours! That is an exceedingly personal garment that belongs to a lady of this establishment, and they would not appreciate you fondling their private things!"~ */
  IF ~~ THEN REPLY #42625 /* ~"Oh, but it's all right for you, you wooden pervert?"~ */ GOTO 24
  IF ~~ THEN REPLY #42626 /* ~"Yes, yes... farewell, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42554 /* ~"I'm not doing anything so criminal and malicious as you are! I am merely soaking in sensations necessary to my growth as an individual."~ */
  IF ~~ THEN REPLY #42627 /* ~"Yes, yes... farewell, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 35.1 36.1
  SAY #42555 /* ~You simply cannot move your hand quickly enough to snatch the crimson cloth from within Luis... the most you could accomplish would be getting your fingers crushed.~ */
  IF ~~ THEN REPLY #42628 /* ~"Give me that crimson cloth."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42629 /* ~Pull open the drawer to get the cloth.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42630 /* ~Pull open the drawer to get the cloth.~ */ GOTO 28
  IF ~~ THEN REPLY #42631 /* ~Beg and whine for the cloth.~ */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.0 29.0 30.0
  SAY #42556 /* ~"Shan't. Won't. Never."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42632 /* ~Pull open the drawer to get the cloth.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42633 /* ~Pull open the drawer to get the cloth.~ */ GOTO 28
  IF ~~ THEN REPLY #42634 /* ~Beg and whine for the cloth.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 29.1 30.1
  SAY #42557 /* ~"*Mmmph.* Stop! Stop, I say! Watch the handles! Don't scratch the finish! Damn you, you prying filth!" The armoire puts up a valiant effort, but you finally pull the drawer open and yank the cloth - a translucent, crimson veil - from within. Tucking it away, you notice that it is perfumed with a light, exotic, and most pleasant fragrance.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.1 28.1 30.2
  SAY #42558 /* ~The drawer remains closed. You hear it puffing and wheezing from the exertion. "Go *away,* you barbarian!"~ */
  IF ~~ THEN REPLY #42635 /* ~"Give me that crimson cloth, Luis."~ */ GOTO 26
  IF ~~ THEN REPLY #42636 /* ~Pull open the drawer to get the cloth.~ */ GOTO 28
  IF ~~ THEN REPLY #42637 /* ~Beg and whine for the cloth.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.2 28.2
  SAY #42559 /* ~"Oh, please stop that rubbish! It is quite tiresome and transcends all known meanings of the word *boredom!*"~ */
  IF ~~ THEN REPLY #42638 /* ~"Give me that crimson cloth."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42639 /* ~Pull open the drawer to get the cloth.~ */ GOTO 27
  IF ~~ THEN REPLY #42640 /* ~Beg and whine some more.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY #42560 /* ~"Stop! How tediously dull! You're making me quite drowsy."~ */
  IF ~~ THEN REPLY #42641 /* ~"Give me that crimson cloth."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42642 /* ~Pull open the drawer to get the cloth.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42643 /* ~Pull open the drawer to get the cloth.~ */ GOTO 28
  IF ~~ THEN REPLY #42644 /* ~Keep on begging and whining.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.3
  SAY #42561 /* ~The armoire yawns, exposing the crimson cloth where it rests snugly beside some undergarments. You dart your hand in and seize it before the drawer can close itself. Tucking it away, you notice that it is perfumed with a light, exotic, and most pleasant fragrance.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~  Global("Armoire","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #42562 /* ~This is Luis, the talking armoire.~ */
  IF ~~ THEN REPLY #42645 /* ~"I had some questions, Luis..."~ */ GOTO 12
  IF ~~ THEN REPLY #42646 /* ~Leave him be.~ */ EXIT
END

IF ~  Global("Armoire","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #42563 /* ~This is Luis, the talking armoire.~ */
  IF ~~ THEN REPLY #42647 /* ~"I had some questions, Luis..."~ */ GOTO 34
  IF ~~ THEN REPLY #42648 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #42564 /* ~An ominous silence hangs over the armoire; there is no reply. You're certain it's still Luis - you can practically *feel* the hatred radiating from the wood - but he won't speak a word to you.~ */
  IF ~~ THEN REPLY #42649 /* ~"So long, Luis."~ */ EXIT
  IF ~~ THEN REPLY #42650 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 36.2
  SAY #42565 /* ~You stand poised at the edge of the armoire. It keeps gabbing on and on, but it never seems to stay open long enough for you to grab the cloth.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42651 /* ~Try and snap your hand in while the drawer is open.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42652 /* ~Try and snap your hand in while the drawer is open.~ */ GOTO 25
END

IF ~~ THEN BEGIN 36 // from: 12.3
  SAY #42566 /* ~"You *think?* *THINK?!* How could you be so alarmingly rude, so ludicrously presumptuous, as to spout forth such an accusation without being absolutely *certain* of your charges?! How *dare* you! Impertinent, brassy cur! Why, I ought to..."

As Luis rails and curses, his drawers open and close... you notice a small bundle of crimson cloth tucked alongside some clothes. The repeated opening and closing of the armoire drawers make it difficult to grab, however.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42653 /* ~Make a try for it.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42654 /* ~Make a try for it.~ */ GOTO 25
  IF ~~ THEN REPLY #42655 /* ~Wait for an opportunity to grab it.~ */ GOTO 35
END
