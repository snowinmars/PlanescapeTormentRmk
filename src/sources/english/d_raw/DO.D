// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3070 /* ~You see a man, standing stock still. He isn't moving a muscle. On closer examination, it appears that he isn't even breathing - just standing. His eye sockets are empty holes in his face. Contained within their bounds is a flat gray light that seems to dance with possibility. Looking into the sockets, the eerie, empty feeling of a limitless void shivers through you, as if you had gazed into a sliver of eternity. The head slowly swivels toward you (you notice that no muscles appeared to move under his skin as he turns), and he speaks in a pure, bell-like tone: "Well met, wanderer. You have forgotten again, haven't you?"~ */
  IF ~~ THEN REPLY #3370 /* ~"Do you know me, stranger?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10698 /* ~"I don't have time for cryptic ramblings. I'm looking for a journal. It's urgent. Do you know where I might find it?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10699 /* ~"Are you Pharod? I am looking for Pharod, the Collector."~ */ GOTO 14
  IF ~~ THEN REPLY #10700 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #10701 /* ~"Forget it. I have other tasks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10702 /* ~"Hello again, traveler." O seems not to have moved from where he was standing when last you spoke to him. "What do you need from me?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10703 /* ~"Tell me of this divine alphabet you spoke of earlier."~ */ GOTO 9
  IF ~~ THEN REPLY #10704 /* ~"Tell me about yourself."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10705 /* ~"I'm looking for a journal. It's urgent. Do you know where I might find it?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10706 /* ~"Have you seen or heard of Pharod, the Collector?"~ */ GOTO 14
  IF ~~ THEN REPLY #10707 /* ~"Tell me of the patrons of this tavern."~ */ GOTO 20
  IF ~~ THEN REPLY #10708 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #10709 /* ~As he opens his mouth, you get that feeling of eternity again - inside his mouth, you see no tongue, no teeth. It's almost as if this man were a shell surrounding an illimitable expanse. "I have spoken with you before, and always you forget. Your endless quest to discover yourself ends always in your amnesia. You draw close to the truth and recoil. Let us hope that you have the strength to endure your existence."~ */
  IF ~~ THEN REPLY #10710 /* ~"What do you know of me? How do you know this?"~ */ GOTO 3
  IF ~~ THEN REPLY #10711 /* ~"I have no time for this craziness. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10712 /* ~"I know that you, like a fly, rise up from the wreckage of your old shell, buzz about for a time, and curl up and die at the window of truth. You bumble about the pane, seeking the light without any plan to your actions, and fall exhausted when you fail. You alight on others to feed from them for a time, and move on with no regard to them. I have watched you come here and listened to your words, and watched you move away no wiser. Will you learn from your mistakes, seeker?"~ */
  IF ~~ THEN REPLY #10713 /* ~"I don't think I like your tone."~ */ GOTO 4
  IF ~~ THEN REPLY #10714 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #10715 /* ~"Not this time. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #10716 /* ~Attack him.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 20.1
  SAY #10717 /* ~Though his face does not smile, the humor is evident in his voice. "Is your answer to all your problems to fight blindly? Are you no more than a biting insect, or will you achieve a thought at some point in your pitiful existence?"~ */
  IF ~~ THEN REPLY #10718 /* ~"I'm warning you..."~ */ GOTO 5
  IF ~~ THEN REPLY #10719 /* ~"Who are you to speak to me this way?"~ */ GOTO 6
  IF ~~ THEN REPLY #10720 /* ~"I don't need this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10721 /* ~"You challenge me? I, who was spoken into existence, know words that will devastate you, blight what little is left of your soul, and leave you whimpering on the floor. Yet I find that I need not waste such secrets on one such as you when I can simply blind you to my presence."~ */
  IF ~~ THEN REPLY #10722 /* ~Attack him.~ */ DO ~SetGlobal("Know_O","GLOBAL",2)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #10723 /* ~"Who are you, anyway?"~ */ GOTO 6
  IF ~~ THEN REPLY #10724 /* ~"That's enough pomposity. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.1 3.1 4.1 5.1 11.4
  SAY #10725 /* ~"I am O." For some reason, when he speaks his name, it sounds like he's speaking of much more than a single letter - as if the speaking of his name contained untold possibilities and nuances. No human tongue could ever create such a sound.~ */
  IF ~~ THEN REPLY #10726 /* ~"What sort of a name is that?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10727 /* ~"What are you?"~ */ DO ~SetGlobal("Know_O","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10728 /* ~"Pleased to meet you, O. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #10729 /* ~"It is my name. It is the name of a portion of eternity. I am a letter in the divine alphabet. Understanding me leads to understanding existence. I am writ in the true names of half of everything. My being encompasses truth. I am mathematic, organic, metaphysic."~ */
  IF ~~ THEN REPLY #10730 /* ~"I think you're entirely crazed."~ */ GOTO 8
  IF ~~ THEN REPLY #10731 /* ~"So what does that mean?"~ */ GOTO 9
  IF ~~ THEN REPLY #10732 /* ~"...right. Answer some other questions for me, will you?"~ */ GOTO 11
  IF ~~ THEN REPLY #10733 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10734 /* ~"If that is what you wish to believe. Best of luck, traveler. Farewell."~ */
  IF ~~ THEN REPLY #10735 /* ~"Answer some other questions for me, will you?"~ */ GOTO 10
  IF ~~ THEN REPLY #10736 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 7.1 11.0
  SAY #10737 /* ~"The divine alphabet is writ in the name of everything that exists, from the seed at the hearts of the elemental planes to the core of the Great Beyond. My brothers/sisters" (a single word translates into the two in your mind) "and I reach across all that is, was, or ever shall be. We are thought, and reality, and concept, and the unimaginable."~ */
  IF ~~ THEN REPLY #10738 /* ~"Tell me about the Great Beyond."~ */ GOTO 12
  IF ~~ THEN REPLY #10739 /* ~"So what are you doing here?"~ */ GOTO 16
  IF ~~ THEN REPLY #10740 /* ~"Then that means you know all the secrets of existence, doesn't it?"~ */ GOTO 18
  IF ~~ THEN REPLY #10741 /* ~"Then you should be able to answer some questions for me."~ */ GOTO 11
  IF ~~ THEN REPLY #10742 /* ~"I need some time to think about this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #10743 /* ~He ignores you. The certainty that he will continue to ignore you for a time settles on your shoulders, and you have no idea where it came from.~ */
  IF ~~ THEN REPLY #10744 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2 9.3 12.1 13.2 14.0 15.0 17.0 18.1 20.0
  SAY #10745 /* ~"What is it you wish to know?"~ */
  IF ~  Global("Know_O","GLOBAL",1)
~ THEN REPLY #10746 /* ~"What was that you were saying about a divine alphabet?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10747 /* ~"I'm looking for a journal. It's urgent. Do you know where I might find it?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10748 /* ~"Have you seen or heard of Pharod, the Collector?"~ */ GOTO 14
  IF ~~ THEN REPLY #10749 /* ~"Tell me of the patrons of this tavern."~ */ GOTO 20
  IF ~~ THEN REPLY #10750 /* ~"Tell me about yourself."~ */ GOTO 6
  IF ~~ THEN REPLY #10751 /* ~"Come to think of it, nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #10752 /* ~"You would not understand. No mortal possibly could. It is beyond the powers of comprehension of all but the most powerful of powers, and once they understand, they move beyond the veil of mortal comprehension. I can explain it no more than that. Perhaps, sometime, you will understand."~ */
  IF ~~ THEN REPLY #10753 /* ~"So what are you doing here?"~ */ GOTO 16
  IF ~~ THEN REPLY #10754 /* ~"Then answer some other questions for me."~ */ GOTO 11
  IF ~~ THEN REPLY #10755 /* ~"I see. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.1 1.2 11.1
  SAY #10756 /* ~"I know where you can find it, but it is not my place to reveal such information. Rest assured you WILL find it, as well as the man you seek."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10757 /* ~"Do you know where Pharod is?" ~ */ GOTO 14
  IF ~~ THEN REPLY #10758 /* ~"What do you know of that?"~ */ GOTO 15
  IF ~~ THEN REPLY #10759 /* ~"My thanks, I suppose. Perhaps you could answer a different question?"~ */ GOTO 11
  IF ~~ THEN REPLY #10760 /* ~"My thanks, I suppose. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 1.3 11.2 13.0
  SAY #10761 /* ~"I know where he is. I can give you only one word: nearby. You will find him in the Hive, under a veil of secrecy."~ */
  IF ~~ THEN REPLY #10762 /* ~"That's what all your answers seem to be under, as well. Can you give me an answer to another question?"~ */ GOTO 11
  IF ~~ THEN REPLY #10763 /* ~"Then I'd best go look for him. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #10764 /* ~"I know that your journey takes you far beyond your journal quest, to the very edges of existence. You will struggle for your life and your very spirit... and I do not tell you any more regarding this."~ */
  IF ~~ THEN REPLY #10765 /* ~"Then tell me of something else."~ */ GOTO 11
  IF ~~ THEN REPLY #10766 /* ~"Very well, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1 12.0
  SAY #10767 /* ~"Why, I am watching the ebb and flow of mortality."~ */
  IF ~~ THEN REPLY #10768 /* ~"And what do you see?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #10769 /* ~"You mortals are like wasps. You build your lives/nests from the slimmest of branches, and when the wind shakes your home/life free, you seek to sting the wind to death. Instead of realizing your foolish mistakes, attempting to repair the damage you have caused yourselves, and learning from your experience, you bring harm to any who have the misfortune to blunder near you in your time of pain and distress. My advice to you - and to all mortals: Stop acting like an insect and start acting sentient."~ */
  IF ~~ THEN REPLY #10770 /* ~"I'll think about that. In the meantime, answer some more questions for me."~ */ GOTO 11
  IF ~~ THEN REPLY #10771 /* ~"My thanks for the advice. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #10772 /* ~"I know parts of many of them. Without a connection to my brothers/sisters, I am but a letter. Alone, I am a symbol. Combined, we are language and power."~ */
  IF ~~ THEN REPLY #10773 /* ~"So you don't know the secrets of existence?"~ */ GOTO 19
  IF ~~ THEN REPLY #10774 /* ~"Then you know nothing. Perhaps you know the answers to some of my questions?"~ */ GOTO 11
  IF ~~ THEN REPLY #10775 /* ~"A sound metaphor, on many levels. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #10776 /* ~"I did not say that. A letter is still a powerful force, even on its own. Allow me to show you." He opens his mouth wider, and wider still. The mask of his face tears around his eyes, mouth, and nose, revealing that hint of eternity you glimpsed earlier. You are lost in it, adrift in it... a part of it. You return to your mundane senses - and realize that O has vanished. Yet somehow, your horizons have expanded. Enlightenment has brushed you, however briefly, across the brow.~ */
  IF ~~ THEN REPLY #10777 /* ~"That was... indescribable."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.4 11.3
  SAY #10778 /* ~"The patrons of this place are varied, yet all mortal. Like all mortals, their concerns are limited, with the potential of blossoming into actual Truth. I can tell you this, though: You may find a companion dear to your heart here - at least as dear as your heart will allow."~ */
  IF ~~ THEN REPLY #10779 /* ~"I think I should be insulted, but I'll let that slip. Answer another question, will you?"~ */ GOTO 11
  IF ~~ THEN REPLY #10780 /* ~"I don't think I like your tone."~ */ GOTO 4
  IF ~~ THEN REPLY #10781 /* ~"My thanks. Farewell."~ */ EXIT
END
