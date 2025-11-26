// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAELWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAELWYN~

IF ~  Global("Aelwyn","GLOBAL",0)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #43390 /* ~This tall, slender woman occasionally looks up from her cup of wine to scan the surrounding patrons and passersby. Her facial features are elegantly exotic and her eyes - a brilliant gold in color - catch the light, sparkling as she looks about.~ */
  IF ~~ THEN REPLY #43391 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #56698 /* ~Leave the woman be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56699 /* ~She regards you carefully for a moment before replying. She speaks slowly and carefully, avoiding direct eye contact with you: "I, Aelwyn, return your greetings."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56700 /* ~"Aelwyn? Your friend, Nemelle, is looking for you."~ */ JOURNAL #56704 /* ~I found Aelwyn and told her that Nemelle was looking for her.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56701 /* ~"Are you looking for someone?"~ */ GOTO 16
  IF ~~ THEN REPLY #56702 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #56703 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0 26.0 27.0
  SAY #56705 /* ~She begins to smile, but then covers her mouth with her hand and looks down at her drink. "I, Aelwyn, am most pleased to hear of Nemelle. Might I, Aelwyn, persuade you to tell her of this place?"~ */
  IF ~~ THEN REPLY #56706 /* ~"Yes, I'll do that for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~I agreed to return to Nemelle and tell her where Aelwyn was.~ */ GOTO 3
  IF ~~ THEN REPLY #56707 /* ~"I'm no message-boy for charity's sake. I'll do it for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #56708 /* ~"I'll consider it. I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #56709 /* ~"Perhaps later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.0 14.0
  SAY #56711 /* ~She looks at you directly and - for just the briefest of moments, before she casts her eyes back down to her drink - your senses are awash with a warm, comfortable feeling: pure happiness. "I, Aelwyn, thank you."~ */
  IF ~~ THEN REPLY #56712 /* ~"It's my pleasure. May I ask you about her, though?"~ */ GOTO 4
  IF ~~ THEN REPLY #56713 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #56714 /* ~Aelwyn nods slowly.~ */
  IF ~~ THEN REPLY #56715 /* ~"The way she speaks, and what her words do... how?"~ */ GOTO 5
  IF ~~ THEN REPLY #56716 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 30.0
  SAY #56717 /* ~"I, Aelwyn, can only say that we come from another place, another world. We are not like the people here, whose words, thoughts - very feelings, even - affect nothing directly."~ */
  IF ~~ THEN REPLY #56718 /* ~"Go on..."~ */ GOTO 6
  IF ~~ THEN REPLY #56719 /* ~"I'll have to hear more later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56720 /* ~"I, Aelwyn, take great care so as to not affect those around me too greatly. Nemelle, she is new here, and cannot do so. It is something she must learn, should she choose to remain here much longer."~ */
  IF ~~ THEN REPLY #56721 /* ~"But why?"~ */ GOTO 7
  IF ~~ THEN REPLY #56724 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56722 /* ~"There are many reasons. I, Aelwyn, feel it is not right to impose reality upon those without the ability to impose their own reality upon me, Aelwyn."~ */
  IF ~~ THEN REPLY #56725 /* ~"Is there anything you cannot do by simply speaking of it?"~ */ GOTO 8
  IF ~~ THEN REPLY #56726 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #56727 /* ~She frowns; a strange, unpleasant feeling rises in the pit of your stomach. "Please... I, Aelwyn, would speak of it no more."~ */
  IF ~~ THEN REPLY #56728 /* ~"Just one other question..."~ */ GOTO 9
  IF ~~ THEN REPLY #56729 /* ~"All right. Farewell, Aelwyn."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #56730 /* ~She looks at you directly, your face reflected in the glittering golden discs of her eyes. "He would speak of it no more to Aelwyn, and thus would no longer force her to speak in such a way to him." You find yourself unable to voice another question... your words catch in your throat as you try to ask.~ */
  IF ~~ THEN REPLY #56731 /* ~"Fine, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #56732 /* ~She nods. "I, Aelwyn, understand. Are you a Sensate?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56733 /* ~"Yes, I am."~ */ GOTO 11
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56734 /* ~"No, I am not."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #56735 /* ~She shakes her head. "Then I, Aelwyn, have no way to reward you."~ */
  IF ~~ THEN REPLY #56736 /* ~"I'll do it anyway."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~I agreed to return to Nemelle and tell her where Aelwyn was.~ */ GOTO 3
  IF ~~ THEN REPLY #56737 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #56739 /* ~"Do I, Aelwyn, not look familiar to you?"~ */
  IF ~~ THEN REPLY #56740 /* ~"No. Should you?"~ */ GOTO 13
  IF ~~ THEN REPLY #56741 /* ~"No, you don't."~ */ GOTO 13
  IF ~~ THEN REPLY #56742 /* ~"It's not important. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #56743 /* ~"It is as I, Aelwyn, thought. A man's mind has been lost to him."~ */
  IF ~~ THEN REPLY #56744 /* ~"What do you mean? Do you know who I am?"~ */ GOTO 14
  IF ~~ THEN REPLY #56745 /* ~"You might be right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #56746 /* ~"I, Aelwyn, have met you before, and would speak of that meeting, were you to aid me."~ */
  IF ~~ THEN REPLY #56747 /* ~"I'll do it, then."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~I agreed to return to Nemelle and tell her where Aelwyn was.~ */ GOTO 3
  IF ~~ THEN REPLY #56748 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.2 2.2 26.2 39.1
  SAY #56750 /* ~The woman shakes her head, her crimson locks catching the light and sparkling like winding flame. "I, Aelwyn, have no answers, stranger. You would do best to seek answers elsewhere."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56751 /* ~"You said you were Aelwyn? Your friend, Nemelle, is looking for you."~ */ JOURNAL #56704 /* ~I found Aelwyn and told her that Nemelle was looking for her.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56752 /* ~"Are you looking for someone?"~ */ GOTO 16
  IF ~~ THEN REPLY #56753 /* ~"Farewell, then..."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.1 15.1 26.1
  SAY #56755 /* ~She nods, staring wistfully into her cup of wine. "Nemelle is her name, a friend of mine, Aelwyn's. I, Aelwyn, worry for her in this place, and wonder why she hasn't come to meet me, Aelwyn, yet."~ */
  IF ~~ THEN REPLY #56756 /* ~"I could help you find your friend."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~I agreed to seek out someone named Nemelle for a woman I met, Aelwyn.~ */ GOTO 17
  IF ~~ THEN REPLY #56757 /* ~"I could find her for you - for a price, of course."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #56758 /* ~"I hope you find her. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #56760 /* ~"You would do this?" She looks up from her cup, smiling, and you're suddenly overcome with a sense of hope and joyous gratitude. Seeing you tense up, she covers her mouth and averts her eyes once more... and the feelings fade to nothing. "I, Aelwyn, thank you."~ */
  IF ~~ THEN REPLY #56761 /* ~"What... what was that?"~ */ GOTO 18
  IF ~~ THEN REPLY #56762 /* ~"Of course. What does she look like?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 25.0
  SAY #56763 /* ~"What was what, kind stranger?" She bites her lower lip. "I, Aelwyn, know naught of which you speak."~ */
  IF ~~ THEN REPLY #56764 /* ~"Very well. What does Nemelle look like?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0 25.1 27.1
  SAY #56765 /* ~"She appears as I, Aelwyn, do, but with raven hair and eyes of bright violet."~ */
  IF ~~ THEN REPLY #56766 /* ~"I'll tell her you're waiting here for her, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #56767 /* ~She nods. "I, Aelwyn, understand. Are you a Sensate?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56768 /* ~"Yes, I am."~ */ GOTO 21
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56769 /* ~"No, I am not."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #56770 /* ~She shakes her head. "Then I, Aelwyn, have no way to reward you."~ */
  IF ~~ THEN REPLY #56771 /* ~"I'll do it anyway."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~I agreed to seek out someone named Nemelle for a woman I met, Aelwyn.~ */ GOTO 25
  IF ~~ THEN REPLY #56772 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #56774 /* ~"Do I, Aelwyn, not look familiar to you?"~ */
  IF ~~ THEN REPLY #56775 /* ~"No. Should you?"~ */ GOTO 23
  IF ~~ THEN REPLY #56776 /* ~"No, you don't."~ */ GOTO 23
  IF ~~ THEN REPLY #56777 /* ~"It's not important. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #56781 /* ~"It is as I, Aelwyn, thought. A man's mind has been lost to him."~ */
  IF ~~ THEN REPLY #56779 /* ~"What do you mean? Do you know who I am?"~ */ GOTO 24
  IF ~~ THEN REPLY #56780 /* ~"You might be right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #56782 /* ~"I, Aelwyn, have met you before, and would speak of that meeting, were you to aid me."~ */
  IF ~~ THEN REPLY #56783 /* ~"I'll do it, then."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~I agreed to seek out someone named Nemelle for a woman I met, Aelwyn.~ */ GOTO 25
  IF ~~ THEN REPLY #56784 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 24.0
  SAY #56786 /* ~She looks at you directly and - for just the briefest of moments, before she casts her eyes back down to her drink - your senses are awash with a warm, comfortable feeling: pure happiness. "I, Aelwyn, thank you."~ */
  IF ~~ THEN REPLY #56787 /* ~"What... what was that?"~ */ GOTO 18
  IF ~~ THEN REPLY #56788 /* ~"Of course. What does she look like?"~ */ GOTO 19
END

IF ~  Global("Aelwyn","GLOBAL",1)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 26 // from:
  SAY #56789 /* ~Aelwyn looks up from her drink only briefly to greet you. "I, Aelwyn, cross paths once more with the stranger. What is it you want?"~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56790 /* ~"Your friend, Nemelle, is looking for you."~ */ JOURNAL #56704 /* ~I found Aelwyn and told her that Nemelle was looking for her.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56791 /* ~"Are you looking for someone?"~ */ GOTO 16
  IF ~~ THEN REPLY #56792 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #56793 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",2)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 27 // from:
  SAY #56795 /* ~Aelwyn looks up from her drink only briefly to greet you. "I, Aelwyn, eagerly await news of Nemelle. Have you found her, stranger?"~ */
  IF ~  GlobalGT("Nemelle","GLOBAL",0)
!Dead("Nemelle")
~ THEN REPLY #56796 /* ~"Yes, I found her."~ */ JOURNAL #56799 /* ~I told Aelwyn that I had found Nemelle for her.~ */ GOTO 2
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56797 /* ~"Not yet. What did she look like, again?"~ */ GOTO 19
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56798 /* ~"No, not yet. I'll return when I have. Farewell."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",3)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 28 // from:
  SAY #56800 /* ~Aelwyn looks up from her drink only briefly to greet you. "I, Aelwyn, still await Nemelle's arrival. You have not brought her the message?"~ */
  IF ~~ THEN REPLY #56801 /* ~"No, not yet. I'll find her again and tell her you're here."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",4)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 29 // from:
  SAY #56802 /* ~Aelwyn clasps her hands together and bows her head to you in thanks, tears of joy falling from her golden eyes. Just as your own eyes begin to water, she wipes away her tears and smiles - causing a wave of intense pleasure to wash over your entire body. "Aelwyn *thanked* the stranger! She had been reunited with her dearest friend, Nemelle!"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56803 /* ~"It was my pleasure."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
~ GOTO 30
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56804 /* ~"It was my pleasure."~ */ GOTO 31
  IF ~  Global("Evil_Aelwyn_1","GLOBAL",1)
~ THEN REPLY #56805 /* ~"Of course. Now tell me of our previous meeting."~ */ DO ~SetGlobal("PC_Was_Sensate","GLOBAL",1)
SetGlobal("Aelwyn","GLOBAL",5)
~ JOURNAL #56812 /* ~A woman named Aelwyn told me that I had been, and possibly still was, a Member of the Society of Sensation... a Sensate. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #56806 /* ~She nods, then looks down again, the feelings her smile evoked fading away into pleasant memories.~ */
  IF ~~ THEN REPLY #56807 /* ~"How it is it that you and Nemelle can affect my senses and emotions?"~ */ GOTO 5
  IF ~~ THEN REPLY #56808 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #56809 /* ~She nods, then looks down again, the feelings her smile evoked fading away into pleasant memories. "I, Aelwyn, would tell you something now, stranger."~ */
  IF ~~ THEN REPLY #56810 /* ~"Yes? Go on..."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
SetGlobal("PC_Was_Sensate","GLOBAL",1)
~ JOURNAL #56812 /* ~A woman named Aelwyn told me that I had been, and possibly still was, a Member of the Society of Sensation... a Sensate. ~ */ GOTO 32
  IF ~~ THEN REPLY #56811 /* ~"Another time, perhaps. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2 31.0
  SAY #56813 /* ~"The name I, Aelwyn, chose for you - 'stranger' - is not so fitting. You and I, Aelwyn, have met before... in the Festhall. In a place you could not have been were you not a Sensate, yourself. Whether you recall or no, unless you betrayed the Society of Sensation at some point, you are a Sensate."~ */
  IF ~~ THEN REPLY #56814 /* ~"I see... tell me more."~ */ GOTO 33
  IF ~~ THEN REPLY #56815 /* ~"I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 39.0
  SAY #56816 /* ~She nods. "You and I, Aelwyn, have met on two different occasions. The first was no less than two centuries past, the last more recently. Perhaps no more than fifty years ago."~ */
  IF ~~ THEN REPLY #56817 /* ~"That's quite a long time ago..."~ */ GOTO 34
  IF ~~ THEN REPLY #56818 /* ~"I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #56819 /* ~She nods again. "My, Aelwyn's, people are extremely long-lived, Forgetful One." She sighs unhappily, causing a chill to descend over you. "You seemed a different man, then... less grim, less scarred. So eager to see all that the multiverse had to offer. You courted me, Aelwyn, then, and was nearly taken as a lover - but then you disappeared."~ */
  IF ~~ THEN REPLY #56820 /* ~"Where did I go?"~ */ GOTO 35
  IF ~~ THEN REPLY #56821 /* ~"I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #56822 /* ~"I, Aelwyn, was told you had been slain... murdered." She looks up for a moment to peer curiously into your eyes. "I met you only once more after that."~ */
  IF ~~ THEN REPLY #56823 /* ~"Did I remember you then?"~ */ GOTO 36
  IF ~~ THEN REPLY #56824 /* ~"I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #56825 /* ~"No." She shakes her head sadly, then touches her throat. "No, you did not. You lashed out at me, Aelwyn, made to slay me. Screamed how I, Aelwyn, could not fool you, would not ensnare and murder you..."~ */
  IF ~~ THEN REPLY #56826 /* ~"What happened?"~ */ GOTO 37
  IF ~~ THEN REPLY #56827 /* ~"I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #56828 /* ~"We had met in one of the northern towers of the Festhall, on the seventh floor. Before you could choke the life from me, I, Aelwyn, used my powers to bade you leap from a window to your death. When I, Aelwyn, finally went in search of your broken body, you had already gone..."~ */
  IF ~~ THEN REPLY #56829 /* ~"You did *what?*"~ */ GOTO 38
  IF ~~ THEN REPLY #56830 /* ~"I see..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #56831 /* ~"That is the whole of my, Aelwyn's, tale for you. We were not strangers, once, but have now become so. Farewell, stranger, and may fortune walk with you in your travels."~ */
  IF ~~ THEN REPLY #56832 /* ~"Thanks, Aelwyn. Farewell."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",5)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 39 // from:
  SAY #56833 /* ~Aelwyn looks up from her drink only briefly to greet you. "I, Aelwyn, cross paths once more with the stranger, and greet him."~ */
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #56834 /* ~"Tell me how we met again before, Aelwyn."~ */ GOTO 33
  IF ~~ THEN REPLY #56835 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #56836 /* ~"I was just passing by. Farewell."~ */ EXIT
END

IF ~  Global("Attack_Aelwyn","AR0600",1)
~ THEN BEGIN 40 // from:
  SAY #56837 /* ~The woman snarls at you, her golden eyes flashing like burning points of pure hatred. "You fool! How dare you attack a daughter of Asaharm so! A dog you are..." She narrows her eyes at you. "...and like a dog, you shall die!" She then regards you coolly, sipping from her cup of wine.~ */
  IF ~~ THEN REPLY #56838 /* ~"Huh...?"~ */ GOTO 41
  IF ~~ THEN REPLY #56839 /* ~Ignore her, press your attack.~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #56840 /* ~You drop to the ground, howling in agony... your insides seem to churn and you begin to cough up great gouts of steaming, black blood. At last you collapse to the street, quivering, the last shreds of life fading from your body...~ */
  IF ~~ THEN REPLY #56841 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END
