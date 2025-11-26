// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2921 /* ~This hard-faced githzerai woman's eyes are full of hatred. "*Know* that you have stolen my kin from me. *Know* that you will *suffer.*" Her hands begin to weave a glowing tracery in the air.~ */
  IF ~~ THEN REPLY #2922 /* ~"What do you mean?"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43584 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43585 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #43586 /* ~This woman has a yellow cast to her skin and severe features. Tattoos cover her body, and she wears a long blade at her side. Her eyes are like two small black pearls. As you approach her, they follow your movements.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43587 /* ~"Greetings, sword-ringer."~ */ GOTO 3
  IF ~~ THEN REPLY #43588 /* ~"Greetings."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43589 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43590 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #43591 /* ~"What can you tell me of this place?"~ */ GOTO 3
  IF ~~ THEN REPLY #43592 /* ~"Sorry, wrong person. Farewell."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #43593 /* ~This woman has a yellow cast to her skin and severe features. Tattoos cover her body, and she wears a long blade at her side. Her eyes are like two small black pearls. As you approach her, they follow your movements.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43594 /* ~"Greetings, sword-ringer."~ */ GOTO 3
  IF ~~ THEN REPLY #43595 /* ~"Greetings."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43596 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43597 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #43598 /* ~"What can you tell me of this place?"~ */ GOTO 3
  IF ~~ THEN REPLY #43599 /* ~"Sorry, wrong person. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.3 1.4 2.0 2.1 2.3 2.4
  SAY #43600 /* ~"You are... *known* among the People as a friend. You are not yet *known* to me. I cannot help you."~ */
  IF ~~ THEN REPLY #43601 /* ~"I just had a few questions..."~ */ GOTO 4
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43602 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43603 /* ~"Perhaps some other time, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43604 /* ~Her eyes glitter as she stares at you. "Hear my words and *know* my mind: I cannot help you. Leave."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43605 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43606 /* ~"Very well. Farewell."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 5 // from:
  SAY #43607 /* ~"You are not yet *known* to me. *Know* that I have no words for you."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43608 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43609 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #43610 /* ~"You are not yet *known* to me. *Know* that I have no words for you."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43611 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43612 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 3.1 4.0 5.0 6.0 23.2 24.2
  SAY #43613 /* ~She tenses slightly. "How did you come to *know* that name?"~ */
  IF ~~ THEN REPLY #43614 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 8
  IF ~~ THEN REPLY #43615 /* ~"A rumor on the street."~ */ GOTO 9
  IF ~~ THEN REPLY #43616 /* ~"Forget it."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0 10.0
  SAY #43617 /* ~Her eyes dart across your face. You can feel her noting you. "*Know* that you have the gratitude of the githzerai people. This shall not be forgotten. Sunset over Haldar, traveler - I must warn my people."~ */
  IF ~~ THEN REPLY #43618 /* ~"Good luck, then, and farewell."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~I told one of the githzerai I met about the planned githyanki attack on the fortress Vristigor. She left in a hurry.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 7.2
  SAY #43619 /* ~Her eyes harden. "Tell me the source."~ */
  IF ~~ THEN REPLY #43620 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 8
  IF ~~ THEN REPLY #43621 /* ~"I'm not telling."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #43622 /* ~"Vilquar's Eye upon you if you do not tell me!"~ */
  IF ~~ THEN REPLY #43623 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 8
  IF ~~ THEN REPLY #43624 /* ~"Why should I tell you?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #43625 /* ~With a hiss, she begins tracing blue light in the air before you...~ */
  IF ~~ THEN REPLY #43626 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43627 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #5 ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #43628 /* ~This woman has a yellow cast to her skin and severe features. Tattoos cover her body, and she wears a long blade at her side. Her eyes are like two small black pearls. As you approach her, they follow your movements. "Zerchai's kin bow to you. I *know* of your wisdom and your aid. Tell me how I may aid you."~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43629 /* ~"And the traveler is pleased. I was hoping you could answer some questions."~ */ GOTO 13
  IF ~~ THEN REPLY #43630 /* ~"I had some questions I was hoping you could answer."~ */ GOTO 13
  IF ~~ THEN REPLY #43631 /* ~"Who are you?"~ */ GOTO 14
  IF ~~ THEN REPLY #43632 /* ~"Sorry, wrong person. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 16.0 17.1 19.0 20.0 21.0 22.0
  SAY #43633 /* ~"Speak your mind. I will hear you."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43634 /* ~"What can you tell me of the difference between githyanki and githzerai?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43635 /* ~"What can you tell me of the difference between githyanki and githzerai?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43636 /* ~"Can you teach me githzerai figures of speech?"~ */ GOTO 18
  IF ~~ THEN REPLY #43637 /* ~"Can you teach me the Way of Zerthimon?"~ */ GOTO 22
  IF ~~ THEN REPLY #43638 /* ~"I have no other questions right now. My thanks for your time."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #43639 /* ~"I am Kii'na. I am a *zerth.* I teach the Way of Zerthimon, and guide the People toward destiny."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43640 /* ~"What can you tell me of the difference between githyanki and githzerai?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43641 /* ~"What can you tell me of the difference between githyanki and githzerai?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43642 /* ~"Can you teach me githzerai figures of speech?"~ */ GOTO 18
  IF ~~ THEN REPLY #43643 /* ~"Can you teach me the Way of Zerthimon?"~ */ GOTO 22
  IF ~~ THEN REPLY #43644 /* ~"I have no other questions right now. My thanks for your time."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 13.4 14.4
  SAY #43645 /* ~"Sunset over Haldar, traveler. You are as Elezpah on the mountain, brave and bold."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
~ THEN REPLY #43646 /* ~"I have dined at Toryg's table. Farewell." ("I'm grateful.")~ */ EXIT
  IF ~~ THEN REPLY #43647 /* ~"My thanks. Farewell."~ */ EXIT
END

IF WEIGHT #6 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #43648 /* ~"Hail, sword-ringer."~ */
  IF ~~ THEN REPLY #43649 /* ~"Hail. I had some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #43650 /* ~"Hail, Kii'na, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 14.1
  SAY #43651 /* ~She looks at you *hard* for a moment. "Gith was a great warrior who freed our people from captivity under the *illithid* slavelords. Zerthimon was her lieutenant. When the two had freed our people, Gith turned upon Zerthimon on the Blasted Plains. Words were spoken, steel was bared - and one people became two. Those who remained with the bitch-queen took the name Githyanki. Those of us who traveled Zerthimon's path remained true to the People and took the name Githzerai." ~ */
  IF ~~ THEN REPLY #43652 /* ~"And that's why you hate each other so much?"~ */ JOURNAL #39486 /* ~I have discovered that the rivalry between the githzerai and the githyanki stems from an ancient common heritage - both hate what the other has become. Odd how often two things that sprang from the same source can become so diametrically opposed.~ */ GOTO 20
  IF ~~ THEN REPLY #43653 /* ~"I see. I had some other questions..."~ */ JOURNAL #39486 /* ~I have discovered that the rivalry between the githzerai and the githyanki stems from an ancient common heritage - both hate what the other has become. Odd how often two things that sprang from the same source can become so diametrically opposed.~ */ GOTO 13
  IF ~~ THEN REPLY #43654 /* ~"My thanks. Farewell."~ */ JOURNAL #39486 /* ~I have discovered that the rivalry between the githzerai and the githyanki stems from an ancient common heritage - both hate what the other has become. Odd how often two things that sprang from the same source can become so diametrically opposed.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 14.2
  SAY #43655 /* ~"Githzerai speech is based on history. All things become story to us; metaphor is a powerful tool, an inspiration to heroism for our people, and a deterrent to villainous deeds. When we speak of Toryg's table, we remember that Toryg was noted for his hospitality and good will. When we speak of Selqant's heart, we recall the lecherous and cruel nature of Selqant. Do you understand?"~ */
  IF ~~ THEN REPLY #43656 /* ~"Yes."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Kii'na the *zerth* has taught me much of the githzerai language. It seems to be based on metaphor, allegory, and stories from githzerai history.~ */ GOTO 21
  IF ~~ THEN REPLY #43657 /* ~"No."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #43658 /* ~"Then I cannot teach you any further."~ */
  IF ~~ THEN REPLY #43659 /* ~"Very well. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #43660 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #43661 /* ~"Both our people are like the mule of Penansk - stubborn, blind, and bothersome. The githyanki add cruelty to that list. They hate us for our growth into realms they cannot understand."~ */
  IF ~~ THEN REPLY #43662 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #43663 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0
  SAY #43664 /* ~Your education begins:
A wise man "wrote the book of the Anarchs."
To accuse someone of treason is to remember "Vilquar's Eye."
It is said of generous people that their "cupboards are bare."
Common greetings include "Hail, sword-ringer" and "Zerchai's kin bow to you," to which one should respond, "And the traveler is pleased."
Your mind is filled with many other such phrases.~ */
  IF ~~ THEN REPLY #43665 /* ~"My thanks, Kii'na. I had some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #43666 /* ~"My thanks, Kii'na. It is the sunset over Haldar." ("This has been enjoyable and pleasurable.")~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.3 14.3
  SAY #43667 /* ~"I cannot. You are too divided, too... human... to *know* the Way."~ */
  IF ~~ THEN REPLY #43668 /* ~"I see. I had a few more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #43669 /* ~"My thanks, Kii'na. Farewell."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #43670 /* ~This woman has a yellow cast to her skin and severe features. Tattoos cover her body, and she wears a long blade at her side. Her eyes are like two small black pearls. As you approach her, they follow your movements. ~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43671 /* ~"Greetings, sword-ringer."~ */ GOTO 26
  IF ~~ THEN REPLY #43672 /* ~"Greetings."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43673 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43674 /* ~"Who are you?"~ */ GOTO 25
  IF ~~ THEN REPLY #43675 /* ~"What can you tell me of this place?"~ */ GOTO 25
  IF ~~ THEN REPLY #43676 /* ~"Sorry, wrong person. Farewell."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #43677 /* ~She gazes at you calmly as you approach.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43678 /* ~"Greetings, sword-ringer."~ */ GOTO 26
  IF ~~ THEN REPLY #43812 /* ~"Greetings."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43813 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43814 /* ~"Who are you?"~ */ GOTO 25
  IF ~~ THEN REPLY #43815 /* ~"What can you tell me of this place?"~ */ GOTO 25
  IF ~~ THEN REPLY #43816 /* ~"Sorry, wrong person. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.3 23.4 24.1 24.3 24.4
  SAY #43684 /* ~She is unperturbed. "You are not... *known* to me. This meeting can have no benefit to either of us. Farewell."~ */
  IF ~~ THEN REPLY #43685 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0 24.0
  SAY #43686 /* ~"You are not *known* to me, yet you greet me in the manner of my people. No matter... I cannot help you, traveler. Farewell."~ */
  IF ~~ THEN REPLY #43687 /* ~"The salt-crusted boat sets sail."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 60 even though they appear after this state */
~  NearbyDialog("DDakkon")
Global("Dakkon_Know_Kiina","AR0500",0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #43688 /* ~This woman has a yellow cast to her skin and severe features. Tattoos cover her body, and she wears a long blade at her side. Her eyes are like two small black pearls. As you approach her, they follow Dak'kon's movements.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 133
END

IF WEIGHT #11 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 28 // from:
  SAY #43689 /* ~The *zerth* stares blackly at Dak'kon as he returns with you. She turns her back to you, as if daring Dak'kon to strike the target.~ */
  IF ~~ THEN REPLY #43690 /* ~"Dak'kon, cut her down."~ */ EXTERN ~DDAKKON~ 137
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43691 /* ~"Cut it out, Kii'na. Are you familiar with the fortress Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43692 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #43693 /* ~As you approach, she ignores you entirely. Dak'kon gives her a slight bow, which she ignores entirely. She looses a string of harsh words at Dak'kon, and he replies in a level tone. This only seems to infuriate her.~ */
  IF ~~ THEN REPLY #43694 /* ~"Dak'kon, will you translate for me?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #43695 /* ~"What did she say?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43696 /* ~"Ask her if she is familiar with the fortress Vristigor."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 36
  IF ~~ THEN REPLY #43697 /* ~Wait.~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #43698 /* ~"Let's get out of here."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from:
  SAY #43699 /* ~"Why do you insult the Unbroken Circle of Zerthimon by continuing to wear it against your heart? You are not numbered among the People, betrayer of Shra'kt'lor! The Anarchs and the *zerths* have spoken and their words shall be obeyed. You are not to speak your mind to me... or to any *zerth.*"~ */
  IF ~~ THEN DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ EXTERN ~DDAKKON~ 145
END

IF ~~ THEN BEGIN 31 // from: 29.4
  SAY #43700 /* ~Dak'kon cuts her off mid-sentence with a stiffly correct bow. She turns her head from him and gazes at you. "You walk in the shadow of a pariah!"~ */
  IF ~~ THEN REPLY #43701 /* ~"Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 29.1
  SAY #43702 /* ~"He need not translate for you. I will tell you. You are a human, wearing a shirt of scars and blood, unfit to hear the words of Zerthimon. You walk in the shadow of a pariah. Yet he has persuaded me to allow you to hear me speak. I would *know* your will."~ */
  IF ~~ THEN REPLY #43703 /* ~"I just had a few questions..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43704 /* ~"Are you familiar with the fortress Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43705 /* ~"I want nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #43706 /* ~She looks amused and dismayed at the same time. "Yes, strike, Dak'kon, and let your treachery overflow from your githyanki heart." She bares her throat to him.~ */
  IF ~~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXTERN ~DDAKKON~ 138
END

IF ~~ THEN BEGIN 34 // from:
  SAY #43707 /* ~She speaks to Dak'kon again. "Will you strike me down for one not of the People? Do his words carry more weight than those of a *zerth?* You are truly lost, Dak'kon. How did this come to be?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 139
END

IF ~~ THEN BEGIN 35 // from:
  SAY #43708 /* ~"You have lost your way, Dak'kon. *Know* that I hope you find your path. I pity you. Farewell."~ */
  IF ~~ THEN REPLY #43709 /* ~"Let's go, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.2 32.1
  SAY #43710 /* ~She looks at you - hard. "How did you, who walks in the shadow of a pariah, come to *know* that name?"~ */
  IF ~~ THEN REPLY #43711 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 37
  IF ~~ THEN REPLY #43712 /* ~"A rumor on the street."~ */ GOTO 38
  IF ~~ THEN REPLY #43713 /* ~"Forget it."~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0 38.0 41.4 42.2 52.4 55.2 60.1
  SAY #43714 /* ~"*Know*... *know* you have my gratitude... you and this *zerth.* *Know* this shall not be forgotten." She turns to Dak'kon. "*Know* that this will NOT atone for the fall of Shra'kt'lor. The Anarchs' verdict stands still."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43715 /* ~"Ummm... Farewell."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
SetGlobal("Shrakatlor","GLOBAL",1)
EscapeArea()
~ JOURNAL #39489 /* ~I told one of the githzerai I met about the planned githyanki attack on the fortress Vristigor. She left in a hurry.~ */ EXIT
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43716 /* ~"Ummm... Farewell."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~I told one of the githzerai I met about the planned githyanki attack on the fortress Vristigor. She left in a hurry.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2
  SAY #43717 /* ~"I must *know* where you heard this name."~ */
  IF ~~ THEN REPLY #43718 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 37
  IF ~~ THEN REPLY #43719 /* ~"Did I not make myself clear? I'm not going to tell you."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #43720 /* ~"Vilquar's Eye!" She turns to Dak'kon. "Make him tell!"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 140
END

IF ~~ THEN BEGIN 40 // from:
  SAY #43721 /* ~"Then you both shall die." Her hands begin weaving incantations in the air.~ */
  IF ~~ THEN REPLY #43722 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43723 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.3
  SAY #43724 /* ~After another small flurry of conversation, the woman suddenly ceases speaking to Dak'kon. "I will not hear you. You will hear me, human. You are not *known* to me, but your trappings speak ill of you. Your body is a book written in scars and blood, and you walk in the shadow of a pariah that does not *know* Zerthimon and does not *know* himself. Speak your mind!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43725 /* ~"Greetings, sword-ringer."~ */ GOTO 42
  IF ~~ THEN REPLY #43726 /* ~"Greetings."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43727 /* ~"Shadow of a pariah? What do you mean?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43728 /* ~"Shadow of a pariah? What do you mean?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43729 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43730 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43731 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43732 /* ~"Can you teach me the githzerai language?"~ */ GOTO 56
  IF ~~ THEN REPLY #43733 /* ~"Can you teach me the Way of Zerthimon?"~ */ GOTO 59
  IF ~~ THEN REPLY #43734 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 52.0 52.1
  SAY #43735 /* ~She hisses in irritation. "Your pleasantries are as dust. The sign of mourning draws near - time is short, human. I would *know* your questions, then it is my will you leave."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43736 /* ~"What did you mean when you said I walk in the shadow of a pariah?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43737 /* ~"What did you mean when you said I walk in the shadow of a pariah?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43738 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43739 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43740 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43741 /* ~"Can you teach me the githzerai language?"~ */ GOTO 56
  IF ~~ THEN REPLY #43742 /* ~"Can you teach me the Way of Zerthimon?"~ */ GOTO 59
  IF ~~ THEN REPLY #43743 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.2 41.3 42.0 42.1 52.2 52.3 55.0 55.1 61.0 61.1
  SAY #43744 /* ~"You walk with a pariah and you *know* not his history? He is quick to speak other words, but of his history he has remained silent? Ask him of Shra'kt'lor, of the fall of a mighty fortress to the githyanki, and see what his divided mind reveals to you. Ask him how he speaks with Zerthimon's words, but his *karach* is as mist."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 141
END

IF ~~ THEN BEGIN 44 // from:
  SAY #43745 /* ~"There is no doubt in how Zerthimon's mind is spoken. Generations of *zerth* are as Rrakma's Jewel, of one mind on this matter. Your stance carries with it a divided mind. The doubt is yours, an echo cast from your own faithlessness."~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 142
END

IF ~~ THEN BEGIN 45 // from:
  SAY #43746 /* ~"You shall lie with the dead of Shra'kt'lor in shifting chaos, for you see all with Vilquar's Eye. Your mind is divided, your *karach* weak!"~ */
  IF ~~ THEN REPLY #43747 /* ~Stand in the way of the blades.~ */ EXTERN ~DDAKKON~ 143
  IF ~~ THEN REPLY #43748 /* ~"Dak'kon, you will stop this now."~ */ GOTO 48
  IF ~~ THEN REPLY #43749 /* ~"Let it go, Dak'kon."~ */ GOTO 48
  IF ~~ THEN REPLY #43750 /* ~Attack the *zerth.*~ */ EXTERN ~DDAKKON~ 143
END

IF ~~ THEN BEGIN 46 // from:
  SAY #43751 /* ~"Dog! Githyanki traitor dog!" She lashes out with her sword at you!~ */
  IF ~~ THEN REPLY #43752 /* ~"Time to die, Kii'na."~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #43753 /* ~The blades of the two fly at each other in a whirlwind of motion!~ */
  IF ~~ THEN DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2
  SAY #43754 /* ~Dak'kon reluctantly lowers his blade. Kii'na stares at him incredulously for a moment, and then a sharp grin splits her features. "The truth at last. Your mind is not divided. You are... a *slave* to this human. He speaks with an Anarch's authority to you, and you *listen.*"~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",0)
~ EXTERN ~DDAKKON~ 144
END

IF ~~ THEN BEGIN 49 // from:
  SAY #43755 /* ~"His words carry the weight of yours and have the shape of Limbo's form. I will not hear you, Dak'kon."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 146
END

IF ~~ THEN BEGIN 50 // from:
  SAY #43756 /* ~"The words of Zerthimon are not for the ears of a hu-man to be heard. Their minds are not as one, and they bring division wherever they travel. This one wears a shirt of scars and blood, and he travels with a traitor. Vilquar's heart beats within your chest if you ask if I will hear him."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 147
END

IF ~~ THEN BEGIN 51 // from:
  SAY #43757 /* ~"I will not hear him. He will hear me."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 148
END

IF ~~ THEN BEGIN 52 // from:
  SAY #43758 /* ~The gith woman turns to you. Her black pearl eyes glint dangerously. "You are not *known* to me, but your trappings speak ill of you, human. Your body is a book written in scars and blood, and you walk in the shadow of a pariah that claims to speak for Zerthimon himself. Speak your mind!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43759 /* ~"Greetings, sword-ringer."~ */ GOTO 42
  IF ~~ THEN REPLY #43760 /* ~"Greetings."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43761 /* ~"Shadow of a pariah? What do you mean?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43762 /* ~"Shadow of a pariah? What do you mean?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43763 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43764 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43765 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43766 /* ~"Can you teach me the githzerai language?"~ */ GOTO 56
  IF ~~ THEN REPLY #43767 /* ~"Can you teach me the Way of Zerthimon?"~ */ GOTO 59
  IF ~~ THEN REPLY #43768 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.5 41.6 42.3 42.4 52.5 52.6 55.3 55.4 61.2 61.3
  SAY #43769 /* ~She looks at Dak'kon *hard* for a moment. "Gith was a great warrior who freed our people from captivity under the *illithid* slavelords. Zerthimon was her lieutenant. When the two had freed our people, Gith turned upon Zerthimon on the Blasted Plains. Words were spoken, steel was bared - and one people became two. Those who remained with the bitch-queen took the name Githyanki. Those of us who traveled Zerthimon's path remained true to the People took the name Githzerai. Our rage lies in Gith's betrayal." ~ */
  IF ~~ THEN REPLY #43770 /* ~"And that's why you hate each other so much?"~ */ JOURNAL #39486 /* ~I have discovered that the rivalry between the githzerai and the githyanki stems from an ancient common heritage - both hate what the other has become. Odd how often two things that sprang from the same source can become so diametrically opposed.~ */ GOTO 54
  IF ~~ THEN REPLY #43771 /* ~"I see. I had some other questions..."~ */ JOURNAL #39486 /* ~I have discovered that the rivalry between the githzerai and the githyanki stems from an ancient common heritage - both hate what the other has become. Odd how often two things that sprang from the same source can become so diametrically opposed.~ */ GOTO 55
  IF ~~ THEN REPLY #43772 /* ~"My thanks. Farewell."~ */ JOURNAL #39486 /* ~I have discovered that the rivalry between the githzerai and the githyanki stems from an ancient common heritage - both hate what the other has become. Odd how often two things that sprang from the same source can become so diametrically opposed.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #43773 /* ~"Both our people are like the mule of Penansk - stubborn, blind, and bothersome. The githyanki add cruelty to that list. They hate us for our growth into realms they cannot understand."~ */
  IF ~~ THEN REPLY #43774 /* ~"I see. I had some other questions..."~ */ GOTO 55
  IF ~~ THEN REPLY #43775 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.0 53.1 54.0 57.0 58.0 59.0 60.0
  SAY #43776 /* ~"Ach'ali drowning! Ask and you shall be answered."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43777 /* ~"What did you mean when you said I walk in the shadow of a pariah?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43778 /* ~"What did you mean when you said I walk in the shadow of a pariah?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43779 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43780 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43781 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43782 /* ~"Can you teach me the githzerai language?"~ */ GOTO 56
  IF ~~ THEN REPLY #43783 /* ~"Can you teach me the Way of Zerthimon?"~ */ GOTO 59
  IF ~~ THEN REPLY #43784 /* ~"I have no other questions. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 41.7 42.5 52.7 55.5 61.4
  SAY #43785 /* ~"If the one you travel with cannot be bothered to do so, I shall educate you. Githzerai speech is based on history. All things become story to us; metaphor is a powerful tool, an inspiration to heroism for our people, and a deterrent to villainous deeds. When we speak of Toryg's table, we remember that Toryg was noted for his hospitality and good will. When we speak of Selqant's heart, we recall the lecherous and cruel nature of Selqant. Do you understand?"~ */
  IF ~~ THEN REPLY #43786 /* ~"Yes."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Kii'na the *zerth* has taught me much of the githzerai language. It seems to be based on metaphor, allegory, and stories from githzerai history.~ */ GOTO 57
  IF ~~ THEN REPLY #43787 /* ~"No."~ */ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #43788 /* ~Your education continues:
A wise man "wrote the book of the Anarchs."
To accuse someone of treason is to remember "Vilquar's Eye."
It is said of generous people that their "cupboards are bare."
Common greetings include "Hail, sword-ringer" and "Zerchai's kin bow to you," to which one should respond, "And the traveler is pleased."
Your mind is filled with many other such phrases.~ */
  IF ~~ THEN REPLY #43789 /* ~"I had some more questions..."~ */ GOTO 55
  IF ~~ THEN REPLY #43790 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43791 /* ~"Then I can aid you no further. Let the one who walks with you speak his mind on the matter."~ */
  IF ~~ THEN REPLY #43792 /* ~"I just had some more questions..."~ */ GOTO 55
  IF ~~ THEN REPLY #43793 /* ~"Maybe I'll get him to do it, because you don't make any sense. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 41.8 42.6 52.8 55.6 61.5
  SAY #43794 /* ~Her eyes harden. "You travel with one who calls himself a *zerth* and lectures me on my morality, and yet you ask if I can teach you the Way? Ask *him* to teach you, for I will not!"~ */
  IF ~~ THEN REPLY #43798 /* ~"Calm down and answer me some more questions."~ */ GOTO 55
  IF ~~ THEN REPLY #43799 /* ~"Maybe I will. Farewell."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
Global("Kiina_Speak","GLOBAL",1)
~ THEN BEGIN 60 // from:
  SAY #43800 /* ~"You have returned to plague me? What do you want now?"~ */
  IF ~~ THEN REPLY #43801 /* ~"I just wanted to ask a few questions..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43802 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ GOTO 37
  IF ~~ THEN REPLY #43803 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 61 // from:
  SAY #43804 /* ~The *zerth* bows grudgingly to you as you approach. "*Know* that your words have saved us tragedy. We swear the Oath of the Golden Hand, human. Your choice in traveling companions is unfortunate..." She shoots a glance at Dak'kon. "But you have shown yourself to be a friend to the People. I will hear you." Despite her words, she seems reluctant to deal with you.~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43805 /* ~"What can you tell me about Dak'kon?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43806 /* ~"What can you tell me about Dak'kon?"~ */ GOTO 43
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43807 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43808 /* ~"Can you teach me of the difference between githzerai and githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43809 /* ~"Can you teach me the githzerai language?"~ */ GOTO 56
  IF ~~ THEN REPLY #43810 /* ~"Can you teach me the Way of Zerthimon?"~ */ GOTO 59
  IF ~~ THEN REPLY #43811 /* ~"I have no other questions. Farewell."~ */ EXIT
END
