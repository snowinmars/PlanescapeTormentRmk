// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOJO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DOJO~

IF ~  GlobalGT("CR_Vic","GLOBAL",3)
GlobalLT("CR_Vic","GLOBAL",6)
Global("Alley_Pregnant","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18838 /* ~The large man hulks more than ever, a thin layer of patchy brown fur covering him from head to tail. "Ojo like man in wall now," he says sadly.~ */
  IF ~~ THEN REPLY #2830 /* ~"What happened here?"~ */ GOTO 1
  IF ~~ THEN REPLY #18839 /* ~"Where did everyone go?"~ */ GOTO 2
  IF ~~ THEN REPLY #18840 /* ~"You're a wererat now?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18841 /* ~"Your speech has improved, Ojo. What happened?"~ */ GOTO 5
  IF ~~ THEN REPLY #18842 /* ~"Then I'd better kill you."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18843 /* ~"That's too bad. Farewell."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2829 /* ~"Big fur. Teeth. All friends bite. Some be food. Some be furry. They leave Ojo alone."~ */
  IF ~~ THEN REPLY #18844 /* ~"So where did everyone go?"~ */ GOTO 2
  IF ~~ THEN REPLY #18845 /* ~"The rats came and invaded? Thanks, Ojo. Farewell."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #18846 /* ~"Rats and fur-men come. Everyone hitting. They go away to crying place. Ojo not follow. They come back. They furry and mean."~ */
  IF ~~ THEN REPLY #18847 /* ~"I see. Was there anything else I should know about this?"~ */ GOTO 6
  IF ~~ THEN REPLY #18848 /* ~"I see. Thanks, Ojo. Farewell."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5 1.1 2.1 4.1 5.1
  SAY #18849 /* ~As you turn, you notice the large man crouching to spring. His eyes have gone feral, and a thin trail of drool depends from his open mouth. His teeth look very, very sharp.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18850 /* ~"Don't do it, Ojo. I don't want to have to hurt you."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18851 /* ~"Don't do it, Ojo. I don't want to have to hurt you."~ */ GOTO 8
  IF ~~ THEN REPLY #18852 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #18853 /* ~He looks sadly down at his hands, and then up at you. A small gleam catches his teeth as he says, "Ratsy." An evil smile starts to dance around his mouth.~ */
  IF ~~ THEN REPLY #18854 /* ~"Is there anything else I should know?"~ */ GOTO 6
  IF ~~ THEN REPLY #18855 /* ~"Well, that's too bad. Farewell, Ojo."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #18856 /* ~"Then I had better make sure you infect no others. Prepare to die."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #18857 /* ~He shrugs.~ */
  IF ~~ THEN REPLY #18858 /* ~"Is there anything else I should know?"~ */ GOTO 6
  IF ~~ THEN REPLY #18859 /* ~"Farewell, then."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0 5.0
  SAY #18860 /* ~"Leave. Ratsies bite. Then I bite you."~ */
  IF ~~ THEN REPLY #18861 /* ~"Very well. Farewell, then."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #18862 /* ~He pauses, his muscles slowly relaxing. "Leave. Or bite you."~ */
  IF ~~ THEN REPLY #18863 /* ~Leave.~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #18864 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #18865 /* ~He ignores your words and leaps at you!~ */
  IF ~~ THEN REPLY #18866 /* ~"Ojo, wait!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18867 /* ~"If that's the way it has to be..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Ojo","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #18868 /* ~The large man turns to you, crouches, and springs!~ */
  IF ~~ THEN REPLY #18869 /* ~"Ojo, wait!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18870 /* ~"If that's the way you want to be..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 10 // from:
  SAY #18871 /* ~Ojo turns away from the wall and looks at you dully.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 197
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18872 /* ~Ojo turns away from the wall and stares at Morte, a slow smolder in his eyes.~ */
  IF ~~ THEN REPLY #18873 /* ~"All right, Morte, that's enough."~ */ EXTERN ~DMORTE~ 198
  IF ~~ THEN REPLY #18874 /* ~"Ojo, I had some questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18875 /* ~"Let's get out of here. Farewell, Ojo."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 12 // from: 11.1 16.0 17.0 18.4 19.1 20.2 22.2 23.1 27.3 28.2 29.1 30.2 31.1 32.3 33.6 35.1 36.1 37.1 38.2 39.1 40.4 41.4 42.4 43.3
  SAY #18876 /* ~Ojo just stares.~ */
  IF ~  Global("Know_Ojo_Wall","GLOBAL",1)
~ THEN REPLY #18877 /* ~"Can you tell me about the man in the wall again?"~ */ GOTO 27
  IF ~~ THEN REPLY #18878 /* ~"Tell me about yourself again."~ */ GOTO 17
  IF ~~ THEN REPLY #18879 /* ~"What are you doing?"~ */ GOTO 18
  IF ~~ THEN REPLY #18880 /* ~"Tell me about the people of this village."~ */ GOTO 33
  IF ~~ THEN REPLY #18881 /* ~"Tell me about the catacombs."~ */ GOTO 21
  IF ~~ THEN REPLY #18882 /* ~"Tell me about the Buried Village."~ */ GOTO 21
  IF ~~ THEN REPLY #18883 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.0 15.0 21.0
  SAY #18884 /* ~He blinks at you.~ */
  IF ~~ THEN REPLY #18885 /* ~Point at him: "Who are you?"~ */ GOTO 16
  IF ~~ THEN REPLY #18886 /* ~"Forget it. I had other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #18887 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 14 // from:
  SAY #18888 /* ~You see a burly man with a slack jaw. The spark of intelligence is, in his eyes, little more than a brief flare.~ */
  IF ~~ THEN REPLY #18889 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #18890 /* ~"What are you doing?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18891 /* ~"Tell me about the people of this village."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18892 /* ~"Tell me about the catacombs."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18893 /* ~"Tell me about the Buried Village."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18894 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #18895 /* ~The man blinks at you.~ */
  IF ~~ THEN REPLY #18896 /* ~"Tell me about yourself."~ */ GOTO 13
  IF ~~ THEN REPLY #18897 /* ~"What are you doing?"~ */ GOTO 21
  IF ~~ THEN REPLY #18898 /* ~"Tell me about the people of this village."~ */ GOTO 21
  IF ~~ THEN REPLY #18899 /* ~"Tell me about the catacombs."~ */ GOTO 21
  IF ~~ THEN REPLY #18900 /* ~"Tell me about the Buried Village."~ */ GOTO 21
  IF ~~ THEN REPLY #18901 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #18902 /* ~"Ojo."~ */
  IF ~~ THEN REPLY #18903 /* ~"Okay, Ojo. I had some questions for you..."~ */ GOTO 12
  IF ~~ THEN REPLY #18904 /* ~"Thanks, Ojo. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #18905 /* ~He shrugs.~ */
  IF ~~ THEN REPLY #18906 /* ~"All right... then answer some other questions for me."~ */ GOTO 12
  IF ~~ THEN REPLY #18907 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #18908 /* ~"Ojo talk..." He stops abruptly and begins massaging his hand.~ */
  IF ~~ THEN REPLY #18909 /* ~Examine his hand.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18910 /* ~"Who are you talking to?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18911 /* ~"Who are you talking to?"~ */ GOTO 24
  IF ~~ THEN REPLY #18912 /* ~"What?"~ */ GOTO 22
  IF ~~ THEN REPLY #18913 /* ~"All right. I had some other questions for you."~ */ GOTO 12
  IF ~~ THEN REPLY #18914 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18915 /* ~There is a small, inflamed scab on his skin. As you watch, he peels the scab away again.~ */
  IF ~~ THEN REPLY #18916 /* ~"What happened to your hand?"~ */ GOTO 20
  IF ~~ THEN REPLY #18917 /* ~"I had some other questions for you, Ojo."~ */ GOTO 12
  IF ~~ THEN REPLY #18918 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #18919 /* ~"Bit."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18920 /* ~"Who bit you, Ojo?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18921 /* ~"Who bit you, Ojo?"~ */ GOTO 24
  IF ~~ THEN REPLY #18922 /* ~"All right. I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18923 /* ~"Farewell, Ojo."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.4 12.5 14.1 14.2 14.3 14.4 15.1 15.2 15.3 15.4
  SAY #18924 /* ~"Not talk strangers." He looks away from you, rubbing his hand.~ */
  IF ~~ THEN REPLY #18925 /* ~"All right. Tell me about yourself."~ */ GOTO 13
  IF ~~ THEN REPLY #18926 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #18927 /* ~"Ojo talk." He turns away from you.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18928 /* ~"Who are you talking to?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18929 /* ~"Who are you talking to?"~ */ GOTO 24
  IF ~~ THEN REPLY #18930 /* ~"All right. I had some other questions for you."~ */ GOTO 12
  IF ~~ THEN REPLY #18931 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.1 20.0 22.0 40.0 41.1 42.1 43.0
  SAY #18932 /* ~He looks at the wall, and looks back at you. "Man in wall."~ */
  IF ~~ THEN REPLY #18933 /* ~"There's a man in the wall?"~ */ DO ~SetGlobal("Know_Ojo_Wall","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #18934 /* ~"Uh, okay. I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18935 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.2 20.1 22.1 40.1 41.2 42.2 43.1
  SAY #18936 /* ~Ojo looks toward one of the walls, and then turns back to you, eyes narrowed and the corner of his mouth twitching. "Who you? You leave."~ */
  IF ~~ THEN REPLY #18937 /* ~"I just wanted to ask you some more questions, Ojo."~ */ GOTO 25
  IF ~~ THEN REPLY #18938 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #18939 /* ~"No! You leave!" He is becoming agitated.~ */
  IF ~~ THEN REPLY #18940 /* ~"Just a few more questions."~ */ GOTO 26
  IF ~~ THEN REPLY #18941 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18942 /* ~He stumbles over to the corner and sinks into it, turning himself away from you. No amount of cajoling will convince him to look at you or respond to you.~ */
  IF ~~ THEN REPLY #18943 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0 23.0 28.1 29.0 30.1 31.0 32.2
  SAY #18944 /* ~He looks at the wall, and then looks back at you.~ */
  IF ~~ THEN REPLY #18945 /* ~"What does the man in the wall say?"~ */ GOTO 28
  IF ~~ THEN REPLY #18946 /* ~"What does the man in the wall look like?"~ */ GOTO 30
  IF ~~ THEN REPLY #18947 /* ~"What wall is he in?"~ */ GOTO 32
  IF ~~ THEN REPLY #18948 /* ~"All right. I had some other questions for you."~ */ GOTO 12
  IF ~~ THEN REPLY #18949 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #18950 /* ~"Tells about crying stone place. Tells stories. I tell stories too."~ */
  IF ~~ THEN REPLY #18951 /* ~"Stories about what?"~ */ GOTO 29
  IF ~~ THEN REPLY #18952 /* ~"I had some other questions about the man in the wall..."~ */ GOTO 27
  IF ~~ THEN REPLY #18953 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18954 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #18955 /* ~He looks at the wall and falls silent.~ */
  IF ~~ THEN REPLY #18956 /* ~"All right, then. Tell me about the man in the wall again."~ */ GOTO 27
  IF ~~ THEN REPLY #18957 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18958 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY #18959 /* ~"Small. Red eyes. Hairy."~ */
  IF ~~ THEN REPLY #18960 /* ~"He sounds like a rat."~ */ GOTO 31
  IF ~~ THEN REPLY #18961 /* ~"All right. I had some other questions about the man in the wall..."~ */ GOTO 27
  IF ~~ THEN REPLY #18962 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18963 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 32.1
  SAY #18964 /* ~He nods.~ */
  IF ~~ THEN REPLY #18965 /* ~"All right. I had some other questions about the man in the wall..."~ */ GOTO 27
  IF ~~ THEN REPLY #18966 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18967 /* ~"Thanks, Ojo. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #18968 /* ~He points at a wall. You notice a small hole in it. Upon closer examination, you see that the hole is ragged, as if it had been chewed out by a rat.~ */
  IF ~~ THEN REPLY #18969 /* ~"This looks like it was chewed by a rat."~ */ GOTO 31
  IF ~~ THEN REPLY #18970 /* ~"Is the man in the wall a rat?"~ */ GOTO 31
  IF ~~ THEN REPLY #18971 /* ~"I see... Ojo, I had some other questions about the man in the wall..."~ */ GOTO 27
  IF ~~ THEN REPLY #18972 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #18973 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 12.3 35.0 36.0 37.0 38.1 39.0 40.3 41.3 42.3 43.2
  SAY #18974 /* ~"Who?"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #18975 /* ~"Annah."~ */ GOTO 34
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18976 /* ~"Annah."~ */ GOTO 35
  IF ~~ THEN REPLY #18977 /* ~"Marta."~ */ GOTO 36
  IF ~~ THEN REPLY #18978 /* ~"Pharod."~ */ GOTO 37
  IF ~~ THEN REPLY #18979 /* ~"Gris."~ */ GOTO 38
  IF ~~ THEN REPLY #18980 /* ~"Quint."~ */ GOTO 39
  IF ~~ THEN REPLY #18981 /* ~"I had some other questions, instead."~ */ GOTO 12
  IF ~~ THEN REPLY #18982 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #18983 /* ~He looks fearfully at Annah.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 109
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #18984 /* ~"Mean girl."~ */
  IF ~~ THEN REPLY #18985 /* ~"All right. Tell me about some of the others."~ */ GOTO 33
  IF ~~ THEN REPLY #18986 /* ~"All right. I had some other questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18987 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY #18988 /* ~"Scary witch."~ */
  IF ~~ THEN REPLY #18989 /* ~"All right. Tell me about some of the others."~ */ GOTO 33
  IF ~~ THEN REPLY #18990 /* ~"All right. I had some other questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18991 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY #18992 /* ~"Fair-odd."~ */
  IF ~~ THEN REPLY #18993 /* ~"All right. Tell me about some of the others."~ */ GOTO 33
  IF ~~ THEN REPLY #18994 /* ~"All right. I had some other questions."~ */ GOTO 12
  IF ~~ THEN REPLY #18995 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.4
  SAY #18996 /* ~His eyes narrow suddenly. "Dead."~ */
  IF ~~ THEN REPLY #18997 /* ~"How do you know he's dead?"~ */ GOTO 40
  IF ~~ THEN REPLY #18998 /* ~"All right. Tell me about some of the others."~ */ GOTO 33
  IF ~~ THEN REPLY #18999 /* ~"All right. I had some other questions."~ */ GOTO 12
  IF ~~ THEN REPLY #19000 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.5
  SAY #19001 /* ~"Kwint."~ */
  IF ~~ THEN REPLY #19002 /* ~"All right. Tell me about some of the others."~ */ GOTO 33
  IF ~~ THEN REPLY #19003 /* ~"All right. I had some other questions."~ */ GOTO 12
  IF ~~ THEN REPLY #19004 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY #19005 /* ~"Man in wall told me."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19006 /* ~"Tell me about the man in the wall."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19007 /* ~"Tell me about the man in the wall."~ */ GOTO 24
  IF ~~ THEN REPLY #19008 /* ~"What did he tell you?"~ */ GOTO 41
  IF ~~ THEN REPLY #19009 /* ~"Tell me about some of the other villagers."~ */ GOTO 33
  IF ~~ THEN REPLY #19010 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #19011 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.2
  SAY #19012 /* ~"Gris dead."~ */
  IF ~~ THEN REPLY #19013 /* ~"Where is Gris?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19014 /* ~"Tell me about the man in the wall."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19015 /* ~"Tell me about the man in the wall."~ */ GOTO 24
  IF ~~ THEN REPLY #19016 /* ~"Tell me about some of the other villagers."~ */ GOTO 33
  IF ~~ THEN REPLY #19017 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #19038 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #19018 /* ~"In crying place."~ */
  IF ~~ THEN REPLY #19019 /* ~"You mean the Weeping Stone Catacombs?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19020 /* ~"Tell me about the man in the wall."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19021 /* ~"Tell me about the man in the wall."~ */ GOTO 24
  IF ~~ THEN REPLY #19022 /* ~"Tell me about some of the other villagers."~ */ GOTO 33
  IF ~~ THEN REPLY #19023 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #19024 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19025 /* ~He nods.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19026 /* ~"Tell me about the man in the wall."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19027 /* ~"Tell me about the man in the wall."~ */ GOTO 24
  IF ~~ THEN REPLY #19028 /* ~"Tell me about some of the other villagers."~ */ GOTO 33
  IF ~~ THEN REPLY #19029 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #19030 /* ~"Farewell."~ */ EXIT
END
