// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR3~

IF ~  Global("Good_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52688 /* ~"He has awakened."~ */
  IF ~~ THEN DO ~SetGlobal("Good_Incarnation","GLOBAL",1)
~ EXTERN ~DINCAR1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63861 /* ~"The two of you, be silent! Let us make sure he is all right and save the arguments for later."~ */
  IF ~~ THEN REPLY #63862 /* ~"Wh... who are you all?"~ */ EXTERN ~DINCAR1~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63863 /* ~"Calm yourself. He's only disoriented, as were we all. Give him a moment to get his bearings."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63864 /* ~"This arguing avails us nothing! Give him his space, leave him be."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 4
END

IF ~  Global("Good_Incarnation","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #63865 /* ~The man before you resembles you, but his face seems... calmer somehow. He gives a slight smile as you approach, and he nods, as if in approval. "Are you all right?"~ */
  IF ~~ THEN REPLY #63866 /* ~"Who are you?"~ */ DO ~SetGlobal("Good_Incarnation","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #63867 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 8.0
  SAY #63868 /* ~"Have we *ever* had a name? Or was it just the first of us?" The man chuckles softly. "Know that I am your ally in this - I, like these others, have died my death in your mind, and this figment is all that remains."~ */
  IF ~~ THEN REPLY #63869 /* ~"But who *are* you?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #63870 /* ~"Ah..." His smile fades, and he looks at you with concern. "This must be disorienting for you. Let me try and explain - I am one of your incarnations. I was once lost, now I am here again."~ */
  IF ~~ THEN REPLY #63871 /* ~"How is that possible?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63872 /* ~"I - do not know. Whatever you touched within the Fortress has brought pieces of yourself to the surface." He pauses for a moment, thinking. "One of the others may know the means of how this came to be - but it is beyond me."~ */
  IF ~~ THEN REPLY #63873 /* ~"If you are a part of me, there are things I must know."~ */ GOTO 9
  IF ~~ THEN REPLY #63874 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~  Global("Good_Incarnation","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #63875 /* ~This incarnation smiles as you approach, and he speaks, his voice carrying a faint echo. "Yes?"~ */
  IF ~~ THEN REPLY #63876 /* ~"Who are you?"~ */ GOTO 5
  IF ~~ THEN REPLY #63877 /* ~"If you are a part of me, there are things I must know."~ */ GOTO 9
  IF ~~ THEN REPLY #63878 /* ~Leave the incarnation alone.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.1 10.1 11.1 12.1 13.0 14.1 15.0 16.0 17.1 18.1 19.0 20.0 29.2
  SAY #63879 /* ~"Ask."~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63880 /* ~"In order to leave, you must again become part of me. Will you do so?"~ */ GOTO 21
  IF ~  Global("Know_Traces","GLOBAL",1)
~ THEN REPLY #63881 /* ~"Before you said that when we die, traces are left in the mind. That's what caused you all to emerge. Right?"~ */ GOTO 29
  IF ~~ THEN REPLY #63882 /* ~"I have had countless lives. Why are there only three incarnations here?"~ */ GOTO 10
  IF ~~ THEN REPLY #63883 /* ~"Do you know why I wanted to become immortal?"~ */ GOTO 14
  IF ~~ THEN REPLY #63884 /* ~"What was your life like?"~ */ GOTO 17
  IF ~~ THEN REPLY #63885 /* ~"I came to this Fortress with allies... but they have been separated from me."~ */ GOTO 16
  IF ~~ THEN REPLY #63886 /* ~"How do I leave this place?"~ */ GOTO 20
  IF ~~ THEN REPLY #63887 /* ~"I have nothing more to ask - we may speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #63888 /* ~"I do not know. Perhaps we were the three pieces that were somehow still present in your mind."~ */
  IF ~~ THEN REPLY #63889 /* ~"Present? How?"~ */ DO ~SetGlobal("Know_Traces","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #63890 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63891 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63892 /* ~"I do not know for sure, but I would guess that when we die, traces of the former personality may remain in your mind - and I know that sometimes we may make ourselves felt."~ */
  IF ~~ THEN REPLY #63893 /* ~"How?"~ */ GOTO 12
  IF ~~ THEN REPLY #63894 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63895 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 29.1
  SAY #63896 /* ~"When you are about to place yourself in danger, or were close to a realization, for example, I found that I could stir, help prod you in the right direction."~ */
  IF ~~ THEN REPLY #63897 /* ~"So *you* were that crawling sensation I kept feeling in the back of my skull?"~ */ GOTO 13
  IF ~~ THEN REPLY #63898 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63899 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63900 /* ~"I would be at a loss to describe how it felt to you, but it is possible, yes."~ */
  IF ~~ THEN REPLY #63901 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63902 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63903 /* ~"No, I do not. I think it was done out of fear. Perhaps one of the others knows, but not I."~ */
  IF ~~ THEN REPLY #63904 /* ~"What makes you think it was done out of fear?"~ */ GOTO 15
  IF ~~ THEN REPLY #63905 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63906 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63907 /* ~The man smiles slightly, but there is no humor in it; if anything, it is a sad smile. "What man wishes to die?" He shakes his head slowly. "But only the first of us will ever truly know the reason that brought us to this state."~ */
  IF ~~ THEN REPLY #63908 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63909 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63910 /* ~"Then I fear your friends are already dead." The man looks pained. "This place bears a hatred for the living."~ */
  IF ~~ THEN REPLY #63911 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63912 /* ~"I must consider this - I will speak to you again."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY #63913 /* ~"It was quiet, and long, and was filled with much of the pain and the joys that one would expect in life. I served as a cartographer for a time, and I walked the planes for several years."~ */
  IF ~~ THEN REPLY #63914 /* ~"How did you die?"~ */ GOTO 18
  IF ~~ THEN REPLY #63915 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63916 /* ~"Very well. We will speak more later."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #63917 /* ~"In the end, as I traveled upon the fields of Bytopia, terrible shadows took on life as I lay sleeping. I died as I felt their claws upon me." ~ */
  IF ~~ THEN REPLY #63918 /* ~"They are the shades of all those that died in our place."~ */ GOTO 19
  IF ~~ THEN REPLY #63919 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63920 /* ~"Very well. We will speak more later."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63921 /* ~The man looks pained. "Yes, I know... I know that now. One cannot be in this place of regrets and not feel their agony."~ */
  IF ~~ THEN REPLY #63922 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63923 /* ~"Very well. We will speak more later."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.6
  SAY #63924 /* ~"I do not know - I have never been here before. One of the others may possess the knowing of how to leave, but I do not."~ */
  IF ~~ THEN REPLY #63925 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63926 /* ~"Very well. We will speak more later."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.0
  SAY #63927 /* ~"I had a suspicion - we were not meant to exist as this, and as unnatural as our immortality is, this situation compounds it." He nods. "Yes, I will merge with you again."~ */
  IF ~~ THEN REPLY #63928 /* ~"You know you will cease to exist?"~ */ GOTO 22
  IF ~~ THEN REPLY #63929 /* ~"Very well."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #63930 /* ~He nods. "Yes, I know."~ */
  IF ~~ THEN REPLY #63931 /* ~"Very well."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 36.0
  SAY #63932 /* ~"One last thing... just this..." The incarnation pauses for a moment, searching your features. "Before I return to oblivion - there is something I would know."~ */
  IF ~~ THEN REPLY #63933 /* ~"I can spare a little time for this - what do you wish to know?"~ */ GOTO 24
  IF ~~ THEN REPLY #63934 /* ~"I have no time for this. If you truly wish to help me, I need you to surrender yourself."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63935 /* ~He studies your eyes, his expression somber. "Did you *live* your life - the brief life you have had? In the end... was it worth it?"~ */
  IF ~~ THEN REPLY #63936 /* ~"No. I was reborn in a terrible place, and I am sorry to have lived."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63937 /* ~"It seemed so... short. What little I experienced, I enjoyed, and I do not wish to forget it."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63938 /* ~"I've been traveling too much to really appreciate it. Perhaps we shall see after this matter has come to a close."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63939 /* ~"Your question is of no matter - I would leave now."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63940 /* ~"This life seems to have only caused suffering for myself and others. I would see it end, and the planes allowed peace once more."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 24.1 24.2 24.3 24.4
  SAY #63941 /* ~He nods, and for a moment you think he's going to say something, but then he collapses, the life running out of him and into yours. As he falls to the black stones, you feel a crawling sensation in the back of your skull, making you shiver, and you know the incarnation is no more.~ */
  IF ~~ THEN REPLY #63942 /* ~"Farewell..."~ */ DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
SetGlobal("Absorb_Good_Incarnation","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63943 /* ~The third incarnation speaks softly, but he sounds pained. "Why did you do such a terrible thing?"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 32
END

IF ~~ THEN BEGIN 27 // from:
  SAY #63944 /* ~The third incarnation interrupts. "Perhaps there are no answers in such a thing. Perhaps there never was."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 73
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63945 /* ~The third incarnation interrupts. "Perhaps there are no answers in such a thing. Perhaps there never was."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 74
END

IF ~~ THEN BEGIN 29 // from: 9.1
  SAY #63946 /* ~"My understanding may not be complete, but yes, that seems to be the case. And we may make ourselves felt in small ways."~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #63947 /* ~"So, is it possible that the first of us - the real one of us, before all the incarnations, might still be buried somewhere in my mind."~ */ DO ~AddexperienceParty(96000)
~ GOTO 30
  IF ~~ THEN REPLY #63948 /* ~"Like how?"~ */ GOTO 12
  IF ~~ THEN REPLY #63949 /* ~"There is something else I would know."~ */ GOTO 9
  IF ~~ THEN REPLY #63950 /* ~"Very well. We will speak more later."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #63951 /* ~The expression on the incarnation's face flickers for just a moment, but it is like a window, and you suddenly realize who it is you are speaking to.~ */
  IF ~~ THEN REPLY #63952 /* ~"*You* were the first of us."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63953 /* ~The incarnation's eyes take on a haunted look, and his gaze turns away from yours. "I know what you are thinking - but it is not the case. You think that knowing the mind of the first of us will somehow help you here, in this place. It will not."~ */
  IF ~~ THEN REPLY #63954 /* ~"But why - I have so many questions that YOU can answer. Why did we become immortal? Why?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #63955 /* ~"Because if we die, *truly* die..." The incarnation looks up at you, and his eyes are like steel. "Death's kingdom will *not* be paradise, not for us. If you spoke to these others that were here, know that a fraction of the evil of their lives is but a drop of water compared to the evil of mine. That life, that one life, even *without* the thousands of others, has given a seat in the Lower Planes for eternity."~ */
  IF ~~ THEN REPLY #63956 /* ~"But you seem so much... calmer. More well-intentioned."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63957 /* ~"I became that way, yes. Because for me..." His voice takes on a strange echo. "It is *regret* that may change the nature of a man." He sighs. "But it was too late. I was already damned."~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #63958 /* ~"I found that changing my nature was not enough. I needed more time, and I needed more life. So I came to the greatest of the Gray Sisters and asked her for a boon - to try and help me live long enough to rectify all the damage I had done. To make me immortal."~ */
  IF ~~ THEN REPLY #63959 /* ~"And Ravel did. But when she first tested your immortality and killed you, you forgot everything. *Everything.*"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #63960 /* ~He looks broken. "And the planes have been dying ever since. The crime is great, and the blame is mine."~ */
  IF ~~ THEN REPLY #63961 /* ~"There are so many questions I have for you - who are you, what was your *life* like? Who-"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63962 /* ~The incarnation shakes his head, cutting you off. "When I become no more, when I merge with you, you will have the answers you seek. It may take some time to sort them out, but they are there." He smiles ruefully. "It is difficult to communicate a life with words."~ */
  IF ~~ THEN REPLY #63963 /* ~"Very well, then... we shall become as one. Are you ready?"~ */ DO ~SetGlobal("Absorb_Real_Incarnation","GLOBAL",1)
~ GOTO 23
END
