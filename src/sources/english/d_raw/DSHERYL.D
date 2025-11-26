// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHERYL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHERYL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64681 /* ~You see a pretty young woman in tattered clothes. She is pacing back and forth with a worried expression on her face. She does not notice your approach.~ */
  IF ~~ THEN REPLY #64682 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #64683 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64684 /* ~She jumps at your greeting and spins to face you. You notice her eyes travel along your many scars and her worried look deepens. "Uh... Hello, cutter. Can I help you with something?" ~ */
  IF ~~ THEN REPLY #64685 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64686 /* ~"You seem upset. Is something wrong?"~ */ GOTO 13
  IF ~~ THEN REPLY #64687 /* ~"No, not really. I think I'll be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.2 8.2 11.1 12.1 13.1 20.0 23.0 29.1 30.1 31.0
  SAY #64688 /* ~"Questions... I think I can help you." She waits for you to speak.~ */
  IF ~~ THEN REPLY #64689 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #64690 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #64691 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #64692 /* ~"You seem upset. Is there something wrong?"~ */ GOTO 13
  IF ~  Global("Mention_Catacombs","GLOBAL",1)
~ THEN REPLY #64693 /* ~"You mentioned the Weeping Stone Catacombs. What can you tell me about them?"~ */ GOTO 29
  IF ~~ THEN REPLY #64694 /* ~"Never mind, I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64695 /* ~"Sheryl..." She seems distracted as she speaks to you. "My name is Sheryl."~ */
  IF ~~ THEN REPLY #64696 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64697 /* ~"I see. I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #64698 /* ~She hesitates before answering. "Nothing... Nothing really. I just..." She shrugs and looks away from you. You think she is hiding something.~ */
  IF ~~ THEN REPLY #64699 /* ~"Hmm. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64700 /* ~"Well, I'll be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #64701 /* ~"You new here?" She gives you a quizzical look and then sighs. "Of course you are... I'm sorry, what would you like to know?"~ */
  IF ~~ THEN REPLY #64702 /* ~"I'm looking for someone named Pharod. Do you know where I can find him?"~ */ GOTO 6
  IF ~~ THEN REPLY #64703 /* ~"Is there anything you can tell me about this place?"~ */ GOTO 12
  IF ~~ THEN REPLY #64704 /* ~"Hmm. Never mind, I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64705 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #64706 /* ~"Pharod..." At the mention of Pharod she tenses up for just a moment but quickly hides it. "I know of him... You a friend of his?"~ */
  IF ~~ THEN REPLY #64707 /* ~"Yes, we go back a long way."~ */ GOTO 7
  IF ~~ THEN REPLY #64708 /* ~"No, I just want to... *talk* to him."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64709 /* ~She frowns and nods. "Well, you can find your *friend* to the north. I must take my leave now. Farewell." She ignores any further attempt to talk to her.~ */
  IF ~~ THEN REPLY #64710 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64711 /* ~She stares at you for a moment and then smiles. "I see... Well, he's to the north. Look for the passage with the two thugs outside. I think you can find him there."~ */
  IF ~~ THEN REPLY #64712 /* ~"I get the impression you don't care for Pharod much."~ */ GOTO 9
  IF ~~ THEN REPLY #64713 /* ~"Is there anything else you can tell about this place?"~ */ GOTO 12
  IF ~~ THEN REPLY #64714 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64715 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64716 /* ~"No, I don't." She pauses for a moment and then sighs. "He's got himself set up as some sort of *baron* here. Everyone does what he says; everyone pays him tribute. If you don't..." She shrugs.~ */
  IF ~~ THEN REPLY #64717 /* ~"Tribute? From what?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64718 /* ~She looks about nervously and then leans in close to whisper to you. "Southeast of here is the Weeping Stone Catacombs. Pharod sends his Collectors in there to rob the dead of any treasure they may have. He gets a pretty hefty share of anything that is found..." She straightens up and pauses.~ */
  IF ~~ THEN REPLY #64719 /* ~"Go on."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64720 /* ~She shrugs. "Pharod gets rich, his Collectors just get by... barely. It's the same story no matter where you go. The rich get richer and the poor get poorer."~ */
  IF ~~ THEN REPLY #64721 /* ~"Is there anything else you can tell me about this place?"~ */ GOTO 12
  IF ~~ THEN REPLY #64722 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64723 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 8.1 11.0
  SAY #64724 /* ~"Not really. Just watch your step. Be careful who you call friend. That's all."~ */
  IF ~~ THEN REPLY #64725 /* ~"I'm looking for someone named Pharod. Do you know where I can find him?"~ */ GOTO 6
  IF ~~ THEN REPLY #64726 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64727 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.3
  SAY #64728 /* ~She seems reluctant to talk to you at first and then begins to speak in earnest. "My father, Arkin... He's missing and I don't know what to do. I'm at my wits end."~ */
  IF ~~ THEN REPLY #64729 /* ~"Tell me what happened, maybe I can help."~ */ DO ~SetGlobal("Mention_Catacombs","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #64730 /* ~"Hmm. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64731 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 24.1 25.1
  SAY #64732 /* ~"Southeast of here is a place called the Weeping Stone Catacombs. A lot of the Collectors, like my father, go there and..." She looks embarrassed. "Well, they loot the dead for treasure. On one of his excursions there my father found some record or something that spoke of crypts that could only be entered through portals..." She pauses.~ */
  IF ~~ THEN REPLY #64733 /* ~"Go on."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64734 /* ~"My father thought that those crypts must be for special people... The rich, or nobles, or... who knows. Why else would you make them accessible only through portals? In any case, the crypts are also a trap for would be crypt thieves..."~ */
  IF ~~ THEN REPLY #64735 /* ~"A trap? In what way?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64736 /* ~"They can only be reached by a portal so the only way out is by a portal. Even if someone found the key to open the entry portal, they'd be trapped there if they didn't have the key for the exit portal..." She pauses for effect.~ */
  IF ~~ THEN REPLY #64737 /* ~"So you think your father may be trapped in one of these crypts?"~ */ GOTO 17
  IF ~~ THEN REPLY #64738 /* ~"Did your father find the keys?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64739 /* ~She pauses and wrinkles her brow in thought. "I don't know for sure, but he may well be. He was very excited about the prospects of what could be found in such a crypt. He was searching for the portal keys."~ */
  IF ~~ THEN REPLY #64740 /* ~"Did he find the keys?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #64741 /* ~"He might have. He said he was going to see a witch here in town named Ulthera. He wanted to ask her if she could *divine* what the entry and exit keys were for one of the portals..."~ */
  IF ~~ THEN REPLY #64742 /* ~"Is it possible to do that?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64743 /* ~She sighs. "I don't know. That's not really my concern. My fear is that this Ulthera did divine the entry key... and then told him the wrong exit key. She could take his money and never worry about him coming back for a refund. She could sit back, wait for him to die, and then investigate the crypt herself."~ */
  IF ~~ THEN REPLY #64744 /* ~"Have you talked to her about this?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64745 /* ~She gives you an embarrassed look and turns away. "Well... yes. I'm afraid I wasn't too tactful in my breaching of the subject and I angered her. She will no longer speak to me." She gives you a hopeful look. "Will you seek her out and speak to her for me?"~ */
  IF ~~ THEN REPLY #64746 /* ~"Hmm. I'll think about it, let me ask you something else..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #64747 /* ~"No, I don't want to get involved."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #64748 /* ~"Yes, I'll help you. Just tell me where I can find her."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~A young woman named Sheryl is worried about her missing father. She fears that he may be trapped in a crypt that can only be reached by a portal. Sheryl wants me to talk to a witch named Ulthera, whom she believes gave her father the portal key. I have agreed to help her.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #64749 /* ~She frowns. "I see. Well, thank you for listening to me. It was nice to have someone to speak to at least. Forgive me, but I must be going." ~ */
  IF ~~ THEN REPLY #64750 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 25.2
  SAY #64751 /* ~She visibly relaxes and smiles at you. "Thank you so much, I can't begin to tell you what this means to me... The witch Ulthera can be found wandering about town. She has no permanent residence that I know of. Please find her and ask her about my father."~ */
  IF ~~ THEN REPLY #64752 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #64753 /* ~You see Sheryl. She is pacing back and forth with a worried look on her face. She smiles at your approach. "Hello again, cutter. What's up?"~ */
  IF ~~ THEN REPLY #64754 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64755 /* ~"Nothing, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 25 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #64756 /* ~You see Sheryl. She is pacing back and forth with a worried look on her face. She smiles at your approach. "Hello again, cutter. Have you given some more thought to helping me find my father?"~ */
  IF ~~ THEN REPLY #64757 /* ~"No, I'm still considering it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #64758 /* ~"What was your problem again? I seem to have forgotten."~ */ GOTO 14
  IF ~~ THEN REPLY #64759 /* ~"Yes, I've given it some thought and I will try to help you."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~A young woman named Sheryl is worried about her missing father. She fears that he may be trapped in a crypt that can only be reached by a portal. Sheryl wants me to talk to a witch named Ulthera, whom she believes gave her father the portal key. I have agreed to help her.~ */ GOTO 22
END

IF WEIGHT #2 /* Triggers after states #: 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #64760 /* ~You see Sheryl. She is pacing back and forth with a worried look on her face. She smiles at your approach. "Hello again, cutter. I know you refused me aid before, but would you please reconsider and help me find my father?"~ */
  IF ~~ THEN REPLY #64761 /* ~"No, I don't want to get involved. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #64762 /* ~"What was your problem again? I seem to have forgotten."~ */ GOTO 14
  IF ~~ THEN REPLY #64763 /* ~"Yes, I've given it some thought and I will try to help you."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~A young woman named Sheryl is worried about her missing father. She fears that he may be trapped in a crypt that can only be reached by a portal. Sheryl wants me to talk to a witch named Ulthera, whom she believes gave her father the portal key. I have agreed to help her.~ */ GOTO 22
END

IF WEIGHT #1 /* Triggers after states #: 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #64764 /* ~You see Sheryl. She is pacing back and forth with a worried look on her face. She smiles at your approach and speaks to you anxiously. "Hello again, cutter. Any luck finding my father yet?"~ */
  IF ~  !PartyHasItem("Arkring")
~ THEN REPLY #64765 /* ~"No, but I'm working on it. Farewell."~ */ EXIT
  IF ~  PartyHasItem("Arkring")
~ THEN REPLY #64766 /* ~"I found this ring on a body in a crypt that could only be reached by portal. It may be your father's..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",4)
DestroyItemObject("Arkring",Protagonist,TRUE)
~ JOURNAL #64786 /* ~I found a ring on a body in a crypt that could only be reached by portal. I gave Sheryl the ring and she says it belonged to her father.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #64767 /* ~Sheryl takes the ring from you and her eyes fill with tears. She quickly wipes them away and gives you a forced smile. "My father's ring... Thank you, cutter. I couldn't live with always wondering what happened to him. At least now I can put him to rest in my mind. I have nothing to give you for your kindness, other than my gratitude."~ */
  IF ~~ THEN REPLY #64768 /* ~"Your gratitude is enough Sheryl, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sheryl_Quest","GLOBAL",4)
~ THEN BEGIN 28 // from:
  SAY #64769 /* ~You see Sheryl. She looks up at your approach and smiles at you. "Hello, cutter. What can I do for you?"~ */
  IF ~~ THEN REPLY #64770 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.4
  SAY #64771 /* ~"The catacombs... Take care if you go down there. I've never seen them myself, but I've been told that some strange creatures wander the crypts."~ */
  IF ~~ THEN REPLY #64772 /* ~"What kind of strange creatures?"~ */ GOTO 30
  IF ~~ THEN REPLY #64773 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64774 /* ~"I'll be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64775 /* ~"Well, there are the undead. Zombies and skeletons mostly. There are the horned lizards. Vicious fighters from what I hear. Oh, and the flying heads. Those you should watch out for."~ */
  IF ~~ THEN REPLY #64776 /* ~"Flying heads?"~ */ GOTO 31
  IF ~~ THEN REPLY #64777 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64778 /* ~"I'll be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64780 /* ~She shrugs. "I know, it sounds crazy. As I said before, I've never seen any of these myself, but I've talked to Collectors who say they have. One of them spoke of the flying heads."~ */
  IF ~~ THEN REPLY #64781 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64782 /* ~"I'll be going now. Farewell."~ */ EXIT
END
