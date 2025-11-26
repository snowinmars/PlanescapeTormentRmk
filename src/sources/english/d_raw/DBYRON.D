// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBYRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBYRON~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34629 /* ~You see a well-dressed, middle-aged man. He seems to be scanning the crowd with a practiced eye. He notices you approach and gives you a quick once-over. ~ */
  IF ~~ THEN REPLY #34661 /* ~"Greetings."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #34662 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34630 /* ~He smiles at you and gives a barely perceptible nod. "I am Byron Pikit, moneylender. May I help you?" ~ */
  IF ~~ THEN REPLY #34663 /* ~"Moneylender?"~ */ GOTO 2
  IF ~~ THEN REPLY #34664 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #34665 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34631 /* ~He nods again. "Yes, I cater to the needs of merchants. Want to start a business? Keep one afloat that's down on its luck? Or perhaps expand a business? In either case, you come to me for the funds." He looks you up and down. "I doubt that you are a merchant, sir, so what can I do for you?"~ */
  IF ~~ THEN REPLY #34666 /* ~"I'm a merchant."~ */ GOTO 3
  IF ~~ THEN REPLY #34667 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #34668 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.1
  SAY #34632 /* ~He smiles and looks away for a moment. "A merchant of death, maybe, but not the kind I do business with." He frowns. "If you insist on monopolizing my time, please come to the point of this visit."~ */
  IF ~~ THEN REPLY #34669 /* ~"Can you tell me about your business?"~ */ GOTO 4
  IF ~~ THEN REPLY #68104 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #68105 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #34633 /* ~He frowns and shakes his head. "No, I see no reason to..." He looks you up and down. "You are obviously not someone I conduct business with. I think you should leave." He looks away.~ */
  IF ~~ THEN REPLY #34672 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #34673 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 6.2 7.2 8.1 9.1 10.4 11.1 12.0 13.1 15.0 16.1 17.2 30.1 31.1
  SAY #34634 /* ~He sighs. "Very well, make it quick."~ */
  IF ~~ THEN REPLY #34674 /* ~"What is this place?"~ */ GOTO 6
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #34675 /* ~"I want to talk to you about Trist."~ */ GOTO 16
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34676 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 24
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34677 /* ~"I'm missing a skull... know anyone who'd want something like that?"~ */ GOTO 28
  IF ~~ THEN REPLY #34678 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #34635 /* ~"If you mean the ward in general, it is called the Lower Ward. If you mean this particular locale, it's the open-air market."~ */
  IF ~~ THEN REPLY #34679 /* ~"Tell me about the Lower Ward."~ */ GOTO 7
  IF ~~ THEN REPLY #34680 /* ~"Tell me about the open-air market."~ */ GOTO 12
  IF ~~ THEN REPLY #34681 /* ~"I have other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #34682 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from: 6.0
  SAY #34636 /* ~He looks bored. "It is the home of the common people." He gestures around him. "Look about you and you will see all that there is to see... Nothing. Nothing of any interest."~ */
  IF ~~ THEN REPLY #34683 /* ~"Then why are you here?"~ */ GOTO 8
  IF ~~ THEN REPLY #34684 /* ~"Tell me about the open-air market?"~ */ GOTO 12
  IF ~~ THEN REPLY #34685 /* ~"I have other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #34686 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34637 /* ~He smiles. "The one thing these mindless sods are good for is spending their money. It gives them the feeling that they are actually accomplishing something with their otherwise meaningless lives." He pauses and looks about with disdain.~ */
  IF ~~ THEN REPLY #34687 /* ~"Go on."~ */ GOTO 9
  IF ~~ THEN REPLY #34688 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #34689 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34638 /* ~He shrugs. "Where there is money, you will also find merchants and thieves. I help provide the merchants needed to relieve them..." He gestures about. "...of their hard earned coin." He smiles at you.~ */
  IF ~~ THEN REPLY #34690 /* ~"You mentioned thieves. Who helps *provide* them?"~ */ GOTO 10
  IF ~~ THEN REPLY #34691 /* ~"I see... I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #34692 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #34639 /* ~"Not I..." He gives you a calculating look and smiles. "Why do you ask?"~ */
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34693 /* ~"Call it curiosity..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~There is a thief named Lenny who can be found somewhere south and east of the market. Maybe I can learn some things from him.~ */ GOTO 11
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34694 /* ~"I'm looking for some training..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~There is a thief named Lenny who can be found somewhere south and east of the market. Maybe I can learn some things from him.~ */ GOTO 31
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34695 /* ~"Call it Curiosity..."~ */ GOTO 11
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67290 /* ~"I'm looking for some training..."~ */ GOTO 31
  IF ~~ THEN REPLY #67291 /* ~"No reason, I have other questions..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.2
  SAY #34640 /* ~He laughs. "Such curiosity can be dangerous... even fatal if one isn't careful." He pauses to consider his next words as he examines you closely. "You might want to talk to Lenny. He can usually be found south and east of the market." He pauses a moment. "Tell him I sent you."~ */
  IF ~~ THEN REPLY #34697 /* ~"Tell me about the open-air market."~ */ GOTO 12
  IF ~~ THEN REPLY #34698 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #35738 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 11.0 31.0
  SAY #34641 /* ~He gestures at the building behind him. "An excellent market that caters to just about every need." He pauses to think for a moment before continuing. "Nothing exotic is available; these sods cannot afford such items, but a good market nonetheless."~ */
  IF ~~ THEN REPLY #35739 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #35740 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #34642 /* ~He shrugs. "I am not a tour guide. If you want to know Sigil, then you must explore her. I suggest you do so. I must warn you though, if you look too deeply you will die."~ */
  IF ~~ THEN REPLY #35741 /* ~"Oh? Why is that?"~ */ GOTO 14
  IF ~~ THEN REPLY #35742 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #35743 /* ~"I see. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34643 /* ~He thinks for a moment, trying to judge exactly what to say to you. "Sigil holds many secrets, both good and bad. Discover too many of the bad and your life could be forfeit."~ */
  IF ~~ THEN REPLY #35744 /* ~"What kind of secrets?"~ */ GOTO 15
  IF ~~ THEN REPLY #35745 /* ~"I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #35746 /* ~"I see. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34644 /* ~He looks at you in surprise, then barks out a laugh. "They would not be secrets if I told you, would they?"~ */
  IF ~~ THEN REPLY #35747 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #35748 /* ~"I guess not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.1 30.2
  SAY #34645 /* ~"Ah, Trist..." He frowns and looks away. After a moment he looks at you and raises his eyebrows. "What about her?"~ */
  IF ~~ THEN REPLY #35749 /* ~"I'm trying to find a missing document for her."~ */ GOTO 17
  IF ~~ THEN REPLY #35750 /* ~"Never mind, I have other questions for you."~ */ GOTO 5
  IF ~~ THEN REPLY #35751 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #34646 /* ~He sighs and shakes his head. "There is no *missing* document. That was a ruse instigated by Trist to cast doubt on her debt. This matter has been thoroughly investigated by the Mercykillers, and they found no evidence of any such document."~ */
  IF ~~ THEN REPLY #35752 /* ~"The Mercykillers?"~ */ GOTO 18
  IF ~~ THEN REPLY #35753 /* ~"They could have missed something."~ */ GOTO 19
  IF ~~ THEN REPLY #35754 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #35755 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34647 /* ~"Yes, a faction of fanatics dedicated to uncovering the *truth* in criminal cases and handing out justice. They are often used as investigators by the courts of Sigil. They are quite thorough, and they found nothing..." He glares at you.~ */
  IF ~~ THEN REPLY #35756 /* ~"They could have missed something."~ */ GOTO 19
  IF ~~ THEN REPLY #35757 /* ~"I see. I have some other questions..."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #34648 /* ~"That is a possibility, but not very likely. You obviously are not familiar with the Mercykillers or their methods for you to make such a statement. If they could not find the document, then it does not exist." He looks at you angrily.~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Someone could have stolen the document and then destroyed it. That way the loan would be paid twice..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~I think Byron Pikit stole some documents from a woman named Trist. Without them she cannot prove that she has paid off a loan and she is to be sold into slavery to cover the debt.~ */ GOTO 20
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Someone could have stolen the document... Maybe even destroyed it."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~I think Byron Pikit stole some documents from a woman named Trist. Without them she cannot prove that she has paid off a loan and she is to be sold into slavery to cover the debt.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Someone could have stolen the document and then destroyed it. That way the loan would be paid twice..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~I think Byron Pikit stole some documents from a woman named Trist. Without them she cannot prove that she has paid off a loan and she is to be sold into slavery to cover the debt.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Someone could have stolen the document... Maybe even destroyed it."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~I think Byron Pikit stole some documents from a woman named Trist. Without them she cannot prove that she has paid off a loan and she is to be sold into slavery to cover the debt.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67292 /* ~"Someone could have stolen the document and then destroyed it. That way the loan would be paid twice..."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67293 /* ~"Someone could have stolen the document... Maybe even destroyed it."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1 19.2 19.3 19.4 19.5
  SAY #34649 /* ~For a moment he looks as if he is about to be furious with you, then a gloating smile crosses his face. "What a terrible thought... pity there is no proof of any such activity..." He continues to smile at you.~ */
  IF ~~ THEN REPLY #35763 /* ~"Yes... a pity. So tell me, why have Trist sold into slavery? Couldn't she pay you your money in the form of a loan?"~ */ GOTO 21
  IF ~~ THEN REPLY #35764 /* ~"Well, if any proof does exist, I intend to find it."~ */ JOURNAL #35767 /* ~I told Byron Pikit that I intend to find Trist's missing documents.~ */ GOTO 22
  IF ~~ THEN REPLY #35765 /* ~"I have some other questions..."~ */ GOTO 23
  IF ~~ THEN REPLY #35766 /* ~"I think I've had enough of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34650 /* ~"Yes she could, and I did make that offer to her." He looks at you sternly. "However, she turned me down. I don't allow second chances. No one turns me down without suffering the consequences. No one..."~ */
  IF ~~ THEN REPLY #35768 /* ~"I have some other questions..."~ */ GOTO 23
  IF ~~ THEN REPLY #35769 /* ~"I see. I'll be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #34651 /* ~He laughs at you. "Well good luck to you then. If the Mercykillers couldn't help poor Trist, I don't think you have a chance in the nine hells of doing so. Now, pike it sod." He turns away from you.~ */
  IF ~~ THEN REPLY #35770 /* ~Leave.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0 30.0
  SAY #34652 /* ~"No, I have had enough of you to last a lifetime. I will answer no more of your questions. Now, pike it sod." He turns away from you.~ */
  IF ~~ THEN REPLY #35771 /* ~Leave.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.2
  SAY #34653 /* ~He gives you a quizzical look. "Really? Why in the name of the nine hells would you want to find him?"~ */
  IF ~~ THEN REPLY #35772 /* ~"I have my reasons."~ */ GOTO 25
  IF ~~ THEN REPLY #35773 /* ~"He stole a skull of mine."~ */ GOTO 26
  IF ~~ THEN REPLY #35774 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0 27.0 29.0
  SAY #34654 /* ~He pauses for a moment. "I have reasons, quite good ones I can assure you, not to point anyone toward Lothar. Now pike it, sod." He turns away.~ */
  IF ~~ THEN REPLY #35775 /* ~Leave.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #34655 /* ~"So? What do you think you are going to do, just march in and demand it back?" He looks you up and down. "I admit that you appear more than capable of handling yourself in a fight, but against Lothar?" He snorts. "Your skull will decorate his walls."~ */
  IF ~~ THEN REPLY #35776 /* ~"I still need to find him."~ */ GOTO 25
  IF ~~ THEN REPLY #35777 /* ~"Just how tough can one man be?"~ */ GOTO 27
  IF ~~ THEN REPLY #35778 /* ~"I see. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #34656 /* ~He laughs uproariously and gives you an incredulous look. "Lothar is above the law, berk. He is that powerful, that tough..."~ */
  IF ~~ THEN REPLY #35779 /* ~"I still need to find him."~ */ GOTO 25
  IF ~~ THEN REPLY #35780 /* ~"I see. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #34657 /* ~He shakes his head. "Really..." He sighs and looks away for a moment. "I can assure you that your skull is beyond recovery. Forget it, find a replacement."~ */
  IF ~~ THEN REPLY #35781 /* ~"Why?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY #35782 /* ~"Thank you, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34658 /* ~"Because it is likely that your skull is in the possession of the Master of the Bones, Lothar. If that is indeed the case, then it is gone." He shrugs.~ */
  IF ~~ THEN REPLY #35783 /* ~"Where can I find this Lothar?"~ */ GOTO 25
  IF ~~ THEN REPLY #35784 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 30 // from:
  SAY #34659 /* ~You see Byron Pikit, the moneylender. "Back again?"~ */
  IF ~  Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35785 /* ~"I have some questions..."~ */ GOTO 23
  IF ~  !Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35786 /* ~"I have some questions..."~ */ GOTO 5
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35787 /* ~"I want to talk to you about Trist."~ */ GOTO 16
  IF ~~ THEN REPLY #35788 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 10.1 10.3
  SAY #34660 /* ~He laughs and looks around. "Really now? Well, that's not the kind of thing you should admit to just anyone." He studies you while he thinks. "As I said, I have nothing to do with thieves... Perhaps you should talk to Lenny. He can usually be found south and east of the market." He pauses a moment. "Tell him I sent you."~ */
  IF ~~ THEN REPLY #35789 /* ~"Tell me about the open-air market."~ */ GOTO 12
  IF ~~ THEN REPLY #35790 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #35791 /* ~"Thank you, farewell."~ */ EXIT
END
