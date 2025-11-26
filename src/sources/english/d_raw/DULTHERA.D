// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DULTHERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DULTHERA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64787 /* ~You see an overweight, older woman wearing tattered clothes. She seems to be wandering the streets aimlessly, cackling to herself. When she notices your approach she gives you a toothless smile. "Come to see Ulthera have ye? What can she do for ye?"~ */
  IF ~~ THEN REPLY #64788 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #64789 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64790 /* ~"Aye, aye. Greetings to ye..." She examines you casually and her smile broadens. "Rarely does one such a ye come to visit Ulthera. What ye be needing?"~ */
  IF ~~ THEN REPLY #64791 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64792 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.2 8.1 9.0 12.1 13.2 14.1 15.1 16.1 17.1 18.1 24.0 30.0
  SAY #64793 /* ~"Aye, ask ye then."~ */
  IF ~~ THEN REPLY #64794 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #64795 /* ~"What are you doing here?"~ */ GOTO 5
  IF ~~ THEN REPLY #64796 /* ~"What can you tell me about this place?"~ */ GOTO 13
  IF ~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN REPLY #64797 /* ~"I wanted to ask you about Sheryl's father, Arkin."~ */ GOTO 16
  IF ~~ THEN REPLY #64798 /* ~"Nothing, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64799 /* ~"Did ye not hear me? Have scars grown o'er ye ears an' made ye deaf?" She cocks her head to one side and begins to examine your ears. "Bah! No matter. Ulthera be who I am. Ulthera the witch I be called."~ */
  IF ~~ THEN REPLY #64800 /* ~"Are you a witch?"~ */ GOTO 4
  IF ~~ THEN REPLY #64801 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64802 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64803 /* ~She lets loose a cackling laugh that hurts your ears. "Course not, ye berk. Folks don't understand Ulthera. Think she's crazy, strange... a witch. That's all."~ */
  IF ~~ THEN REPLY #64804 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64805 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #64806 /* ~"What does Ulthera do..." She frowns and her face becomes a mass of wrinkles. "She divines things lost. Folks come to her and ask her questions. She finds the things they ask her about."~ */
  IF ~~ THEN REPLY #64807 /* ~"I've lost my memories, can you find them for me?"~ */ GOTO 6
  IF ~~ THEN REPLY #64808 /* ~"I've lost my name, can you find it for me?"~ */ GOTO 10
  IF ~~ THEN REPLY #64809 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64810 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64811 /* ~She frowns at you for a moment and then holds out her withered hand. "Ye hand, give it to Ulthera."~ */
  IF ~~ THEN REPLY #64812 /* ~Take her hand.~ */ GOTO 7
  IF ~~ THEN REPLY #64813 /* ~Refuse.~ */ GOTO 30
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64814 /* ~You reach out and take Ulthera's hand. For a moment nothing happens. Suddenly you feel another presence in your mind, probing into your deepest thoughts. The sensation is strange and somehow frightening. Instinctively you fight back, trying to push the intruder from your being. You hear a gasp from Ulthera as she releases your hand.~ */
  IF ~~ THEN REPLY #64815 /* ~"Well?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64816 /* ~"Aye, a strange one ye be..." She shakes her head sadly. "Ulthera doesn't know... Ye memories feel more hidden than lost... Or mayhap possessed by another... A great gulf Ulthera senses..." She sighs. "Ulthera cannot help ye... Ye are beyond her simple means."~ */
  IF ~~ THEN REPLY #64817 /* ~"I don't understand what you were just talking about. What do you mean?"~ */ GOTO 9
  IF ~~ THEN REPLY #64818 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64819 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #64820 /* ~She snorts and shakes her head. "Ulthera understands less than ye do... Forgive an old woman. Ulthera cannot help ye."~ */
  IF ~~ THEN REPLY #64821 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64822 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #64823 /* ~She frowns at you for a moment and then holds out her withered hand. "Ye hand, give it to Ulthera."~ */
  IF ~~ THEN REPLY #64824 /* ~Take her hand.~ */ GOTO 11
  IF ~~ THEN REPLY #64826 /* ~Refuse.~ */ GOTO 30
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64825 /* ~You reach out and take Ulthera's hand. For a moment nothing happens. Suddenly you feel another presence in your mind, probing into your deepest thoughts. The sensation is strange and somehow frightening. Instinctively you fight back, trying to push the intruder from your being. You hear a gasp from Ulthera as she releases your hand.~ */
  IF ~~ THEN REPLY #64827 /* ~"Well?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #64828 /* ~"Aye, a strange one ye be..." She shakes her head sadly. "Ulthera doesn't know... Ye name not be lost, but given up freely... Nameless ye are, and nameless ye shall stay. A choice ye made... Ulthera cannot help ye."~ */
  IF ~~ THEN REPLY #64829 /* ~"I don't understand what you were just talking about. What do you mean?"~ */ GOTO 9
  IF ~~ THEN REPLY #64830 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64831 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #64832 /* ~She glances about and smiles. "This be Pharod's realm. The Buried Village it be called... Sigil lies above, the catacombs below... Nothing more does Ulthera know..."~ */
  IF ~~ THEN REPLY #64833 /* ~"I'm looking for Pharod, where can I find him?"~ */ GOTO 14
  IF ~~ THEN REPLY #64834 /* ~"Tell me about the catacombs."~ */ GOTO 15
  IF ~~ THEN REPLY #64835 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64836 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #64837 /* ~"North and east, there ye need to go. Ulthera knows not where exactly. Guards Pharod has, so guards ye should seek. If ye find guards, Pharod is sure to be near..."~ */
  IF ~~ THEN REPLY #64838 /* ~"You mentioned catacombs, what can you tell me about them?"~ */ GOTO 15
  IF ~~ THEN REPLY #64839 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64840 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #64841 /* ~She looks worried. "Crypts of the dead they be, Weeping Stone they be called. The dead rest uneasy there; walk the halls they do... Care ye should take if ye go there." She points vaguely. "South and east, there ye need to go if ye seek Weeping Stone..."~ */
  IF ~~ THEN REPLY #64842 /* ~"You mentioned Pharod, where can I find him?"~ */ GOTO 14
  IF ~~ THEN REPLY #64843 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64844 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.3
  SAY #64845 /* ~"Bah! That wench Sheryl sent ye!" She seems to be making a statement rather than asking a question. She glares at you a moment before continuing. "What ye want to know about Arkin?"~ */
  IF ~~ THEN REPLY #64846 /* ~"Sheryl says he's missing. She's worried about him."~ */ GOTO 17
  IF ~~ THEN REPLY #64847 /* ~"Never mind, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64848 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64849 /* ~She nods her head slowly. "Aye, missing he be. An' that foolish wench came an' asked Ulthera... No! Accused Ulthera! Accused her of wrongdoing... Bah! Ulthera is insulted!"~ */
  IF ~~ THEN REPLY #64850 /* ~"Surely you can forgive a child worried over a missing father."~ */ GOTO 18
  IF ~~ THEN REPLY #64851 /* ~"Never mind, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64852 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #64853 /* ~Ulthera glares at you but soon her anger fades and she nods her head. "Aye, aye... Ulthera can forgive, for worry can make one so young forget her manners... How can Ulthera help ye?"~ */
  IF ~~ THEN REPLY #64854 /* ~"Arkin was looking for portal keys. I understand he came to you for help?"~ */ GOTO 19
  IF ~~ THEN REPLY #64855 /* ~"Never mind, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64856 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64857 /* ~"Aye." She nods. "Arkin came to Ulthera an' asked her to divine what the keys may be... Lost keys, aye, lost to time, lost to man... Find them Ulthera did... Gave them to Arkin she did. Arkin has the keys."~ */
  IF ~~ THEN REPLY #64858 /* ~"What are they?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64859 /* ~"Ah... Ulthera has them... The keys. Simple they are." She begins to cackle and rummage around in her pockets. After a moment a look of glee crosses her wrinkled features. "Here ye be, the key of entry..." She hands you a candlestick.~ */
  IF ~~ THEN REPLY #64860 /* ~"...and the exit key, what is it?"~ */ DO ~GiveItemCreate("Candle",Protagonist,1,0,0)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #64861 /* ~She laughs hysterically for a moment at some unseen joke. "Aye, the exit key... an empty purse! Aye, ye must leave the tomb with an empty purse..." Ulthera hands you an empty purse.~ */
  IF ~~ THEN REPLY #64862 /* ~"Now all I need is the location of the portal. Where is it?"~ */ DO ~GiveItemCreate("Purse",Protagonist,1,0,0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #64863 /* ~She laughs again and then shrugs. "Ulthera knows not... lost it is. Arkin knew, not Ulthera." Ulthera gives you a solemn look and lowers her voice. "Find she can, aye, but ye must bring Ulthera something..."~ */
  IF ~~ THEN REPLY #64864 /* ~"What is it that you need?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #64865 /* ~She taps her chin with a bony finger. "Hmm. A tomb ye would find... sympathetic it must be... Bring Ulthera a human leg bone. Find the portal she will. Now go!"~ */
  IF ~~ THEN REPLY #64866 /* ~"Very well, Ulthera. I'll bring you a human leg bone. Farewell."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, the witch, gave me the keys to the portal that Sheryl's father, Arkin, wanted to explore. The entry key is a candlestick and the exit key is an empty purse. Unfortunately Ulthera does not know the location of the portal. She has asked me to find a human leg bone. She claims she can use the bone to find the portal. I have agreed to do this.~ */ EXIT
  IF ~~ THEN REPLY #64867 /* ~"Forget it. I don't want to do this. Farewell."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64868 /* ~"Hmm. I need to think about this. Farewell."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #64869 /* ~You see Ulthera, the diviner. She waves a gnarled hand at your approach. "Aye, back again are ye. What ye be wanting?"~ */
  IF ~~ THEN REPLY #64870 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64871 /* ~"Nothing, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #64872 /* ~You see Ulthera, the diviner. She waves a gnarled hand at your approach. "Aye, back again are ye. Thinking ye were. Find Ulthera a human leg bone an' she will find ye the portal. What say ye?"~ */
  IF ~~ THEN REPLY #64873 /* ~"Very well, Ulthera. I'll bring you a human leg bone. Farewell."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, the witch, gave me the keys to the portal that Sheryl's father, Arkin, wanted to explore. The entry key is a candlestick and the exit key is an empty purse. Unfortunately Ulthera does not know the location of the portal. She has asked me to find a human leg bone. She claims she can use the bone to find the portal. I have agreed to do this.~ */ EXIT
  IF ~~ THEN REPLY #64874 /* ~"Forget it. I don't want to do this. Farewell."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64875 /* ~"I'll consider it. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #64876 /* ~You see Ulthera, the diviner. She waves a gnarled hand at your approach. "Aye, back again are ye. Refused to help ye did. Find Ulthera a human leg bone an she will find ye the portal. What say ye?"~ */
  IF ~~ THEN REPLY #64877 /* ~"Very well, Ulthera. I'll bring you a human leg bone. Farewell."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthera, the witch, gave me the keys to the portal that Sheryl's father, Arkin, wanted to explore. The entry key is a candlestick and the exit key is an empty purse. Unfortunately Ulthera does not know the location of the portal. She has asked me to find a human leg bone. She claims she can use the bone to find the portal. I have agreed to do this.~ */ EXIT
  IF ~~ THEN REPLY #64878 /* ~"Forget it. I don't want to do this. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #64879 /* ~"I'll consider it. Farewell."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #64880 /* ~You see Ulthera, the diviner. She waves a gnarled hand at your approach. "Aye, back again are ye. Agreed to help ye did. Find Ulthera a human leg bone an' she will find ye the portal. Where be the bone?"~ */
  IF ~  !PartyHasItem("Legclub")
~ THEN REPLY #64881 /* ~"I don't have it yet. I'm still looking. Farewell."~ */ EXIT
  IF ~  PartyHasItem("Legclub")
~ THEN REPLY #64882 /* ~"Here it is, now tell me where the portal is."~ */ DO ~DestroyItemObject("Legclub",Protagonist,TRUE)
SetGlobal("Ulthera_Quest","GLOBAL",4)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #64883 /* ~Ulthera glances about cautiously and then takes the bone from you. She clutches it close to her chest and begins to chant while swaying to and from. Her voice becomes more anxious but lowers in volume until you can barely hear her. Finally she gasps and points to the northwest with the bone. "Aye, north an' west it be, near the entrance to the town... Ulthera found it for ye, now go!"~ */
  IF ~~ THEN REPLY #64884 /* ~"Thank you, Ulthera. Farewell."~ */ JOURNAL #64936 /* ~I found the leg bone for Ulthera and asked her to find the location of the portal Arkin used. She chanted and carried on a bit, then said the portal could be found to the northwest, near the entry to the buried village. I hope she is right.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ulthera_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #64885 /* ~You see Ulthera, the diviner. She waves a gnarled hand at your approach. "Aye, back again are ye. What ye be wanting?"~ */
  IF ~~ THEN REPLY #64886 /* ~"Nothing, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 6.1 10.1
  SAY #64932 /* ~Ulthera frowns at you and then puts her hands on her hips. "Fearing an old woman? Fearing mayhap Ulthera will bite ye? Never ye mind then. What else ye be wanting?"~ */
  IF ~~ THEN REPLY #64933 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64934 /* ~"I must be going now, farewell."~ */ EXIT
END
