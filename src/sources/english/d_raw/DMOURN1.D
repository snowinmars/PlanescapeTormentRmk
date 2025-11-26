// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7078 /* ~This Dustman is dressed in long dark robes, and his hands are folded into his sleeves. His head is bowed, and he is chanting at a measured pace with the other Dustmen around him. ~ */
  IF ~~ THEN REPLY #7079 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7810 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #7759 /* ~The Dustman appears to have heard you, but he does not look up.~ */
  IF ~~ THEN REPLY #7811 /* ~"I would speak with you for a moment."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7812 /* ~Listen to their chanting.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7813 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7814 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7815 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7816 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7817 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7818 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7819 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #7760 /* ~All the Dustmen carry the exact same tone and rhythm. The chant rises to a near shout every few minutes, then slowly fades in a way that reminds you of an echo. Once it fades completely, the Dustmen speak several lines praising the 'True Death,' then begin their chant again.~ */
  IF ~~ THEN REPLY #7820 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7821 /* ~Leave them to their chanting.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #7761 /* ~The Dustman lifts his head. He does not stop chanting, keeping the same pace and tone as the other Dustmen about him.~ */
  IF ~~ THEN REPLY #7823 /* ~"What are you doing?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7824 /* ~"I mourn for one dead."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7825 /* ~"I am here for one who has lost another."~ */ GOTO 35
  IF ~~ THEN REPLY #7828 /* ~"Sorry to trouble you. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #7762 /* ~The Dustman ignores you, instead bowing his head and resuming chanting.~ */
  IF ~~ THEN REPLY #7839 /* ~"I would speak with you."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7840 /* ~Listen to their chanting.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7841 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7842 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7843 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7844 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7845 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7846 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7847 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #7763 /* ~The mourner suddenly stops, and he studies you. "Do you feel anguish over the one that has died?"~ */
  IF ~~ THEN REPLY #7848 /* ~"No. The death does not stir my emotions."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #7849 /* ~Truth: "Yes... I believe I am to blame for the death of an innocent woman, Deionarra. Not only am I troubled over this, but I feel guilt over the grief I have caused her father."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #7850 /* ~Truth: "Yes... I am to blame for the death of an innocent man, Xachariah. His passing has troubled me."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #7851 /* ~Truth: "Yes... I am to blame for the death of many innocents across the planes. The anguish caused by this revelation is almost more than I can bear."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7852 /* ~"It is not I. There is a woman, Wife-of-Angyar, who has lost a son. Anguish hangs heavy upon her."~ */ GOTO 9
  IF ~~ THEN REPLY #7853 /* ~Lie: "No, uh, I'm speaking for a friend, uh... Adahn - he's the one who feels anguish over the person who died."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7854 /* ~"Yes, this recent death brought me a great deal of anguish and pain."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Well, uh, before I get into that, I had some questions for you..."~ */ GOTO 20
  IF ~~ THEN REPLY #14817 /* ~"I apologize... I misspoke. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #7764 /* ~"We will mourn your pain and that of her father, if it does not give offense."~ */
  IF ~~ THEN REPLY #7856 /* ~"If you could, it would ease her father's pain and my pain greatly."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7857 /* ~"No, there is no need. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #7765 /* ~"We will mourn your pain, if you so desire."~ */
  IF ~~ THEN REPLY #7858 /* ~"If you could, it would ease my pain greatly."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #7859 /* ~"No, there is no need. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #7766 /* ~"We will mourn your pain, if you so desire."~ */
  IF ~~ THEN REPLY #7860 /* ~"If you could, it would ease my pain greatly."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #7861 /* ~"No, there is no need. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #7767 /* ~"We will mourn her pain, if she will not take offense."~ */
  IF ~~ THEN REPLY #7862 /* ~"If you could, it would ease her pain greatly."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #7863 /* ~"No, there is no need. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #7768 /* ~"We will mourn his pain, if he will not take offense."~ */
  IF ~~ THEN REPLY #7864 /* ~"If you could, it would ease his pain greatly."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #7865 /* ~"No, there is no need. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #7769 /* ~The Dustman nods and resumes chanting.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7866 /* ~Listen to their chanting.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7867 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7868 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7869 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7870 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7871 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7872 /* ~Listen to their chanting.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7873 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.7 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #7770 /* ~The Dustman bows his head and resumes chanting.~ */
  IF ~~ THEN REPLY #7874 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #7771 /* ~"We are in mourning."~ */
  IF ~~ THEN REPLY #7875 /* ~"Who has died?"~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7876 /* ~"Who are you mourning in particular?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7877 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7878 /* ~"Who are you mourning in particular?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7879 /* ~"Who are you mourning in particular?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7880 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7881 /* ~"Who are you mourning in particular?"~ */ GOTO 40
  IF ~~ THEN REPLY #7882 /* ~"That is all I wished to know. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7772 /* ~"We mourn not for the dead. We mourn the living."~ */
  IF ~~ THEN REPLY #7883 /* ~"The living?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7884 /* ~"Who are you mourning in particular?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7885 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7886 /* ~"Who are you mourning in particular?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7887 /* ~"Who are you mourning in particular?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7888 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7889 /* ~"Who are you mourning in particular?"~ */ GOTO 40
  IF ~~ THEN REPLY #7890 /* ~"I... see. I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7891 /* ~"I think I've heard enough. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #7773 /* ~"We mourn the living that feel loss for the departed."~ */
  IF ~~ THEN REPLY #7892 /* ~"Why?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7893 /* ~"Who are you mourning in particular?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7894 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7895 /* ~"Who are you mourning in particular?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7896 /* ~"Who are you mourning in particular?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7897 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7898 /* ~"Who are you mourning in particular?"~ */ GOTO 40
  IF ~~ THEN REPLY #7899 /* ~"I... see. I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7900 /* ~"I think I've heard enough. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7774 /* ~"The passing of a soul into the True Death frequently leaves a troubled wake. When the departed is loved, anguish and a sense of loss often accompanies the passing."~ */
  IF ~~ THEN REPLY #7901 /* ~"Which is natural..."~ */ GOTO 17
  IF ~~ THEN REPLY #7902 /* ~"So you mourn the living because..."~ */ GOTO 17
  IF ~~ THEN REPLY #7903 /* ~"True Death?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7904 /* ~"Who are you mourning in particular?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7905 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7906 /* ~"Who are you mourning in particular?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7907 /* ~"Who are you mourning in particular?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7908 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7909 /* ~"Who are you mourning in particular?"~ */ GOTO 40
  IF ~~ THEN REPLY #7910 /* ~"I... see. I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7911 /* ~"I think I've heard enough. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #7781 /* ~"Anguish and loss are strong emotions. Such emotions anchor the living to this existence, preventing them from reaching the True Death when death comes for them. We mourn the living stricken with such emotions."~ */
  IF ~~ THEN REPLY #7912 /* ~"True Death?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7913 /* ~"Who are you mourning in particular?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7914 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7915 /* ~"Who are you mourning in particular?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7916 /* ~"Who are you mourning in particular?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7917 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7918 /* ~"Who are you mourning in particular?"~ */ GOTO 40
  IF ~~ THEN REPLY #7919 /* ~"I... see. I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7920 /* ~"I think I've heard enough. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #7782 /* ~"It is sometimes called the final death. The True Death is the freedom from this shadowy, painful existence. It is freedom from emotion. Freedom from reason. Freedom from these shells."~ */
  IF ~~ THEN REPLY #7921 /* ~"Sounds like oblivion."~ */ GOTO 19
  IF ~~ THEN REPLY #7922 /* ~"Is that why you mourn the living?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7923 /* ~"Who are you mourning in particular?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7924 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7925 /* ~"Who are you mourning in particular?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7926 /* ~"Who are you mourning in particular?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7927 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7928 /* ~"Who are you mourning in particular?"~ */ GOTO 40
  IF ~~ THEN REPLY #7929 /* ~"I... see. I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7930 /* ~"I think I've heard enough. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7783 /* ~The Dustman nods. "Some have called it that. It is not entirely accurate."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7931 /* ~"Who are you mourning in particular?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7932 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7933 /* ~"Who are you mourning in particular?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7934 /* ~"Who are you mourning in particular?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7935 /* ~"Who are you mourning in particular?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7936 /* ~"Who are you mourning in particular?"~ */ GOTO 40
  IF ~~ THEN REPLY #7937 /* ~"No matter. I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7938 /* ~"I think I've heard enough. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #7784 /* ~The Dustman waits.~ */
  IF ~~ THEN REPLY #7939 /* ~"What are you doing?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #7940 /* ~"Why has your chanting changed?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7941 /* ~"I mourn for one dead."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7942 /* ~"I petition for one who has lost another."~ */ GOTO 35
  IF ~~ THEN REPLY #7943 /* ~"I would listen to your chant."~ */ GOTO 11
  IF ~~ THEN REPLY #7944 /* ~"Sorry to trouble you. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #7785 /* ~All the Dustmen carry the exact same tone and rhythm. Unlike the chanting you heard when you first approached the memorial, however, this chant cycles, like the cresting and receding of waves on a shoreline. With this thought, your memories stir... ~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #7945 /* ~Try to remember...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #7946 /* ~Try to remember...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #7947 /* ~Try to remember...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #7948 /* ~Try to remember...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #7949 /* ~Shake off the memory.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #7786 /* ~You remember vaguely standing on a distant shore... in someplace else, somewhere far from here. There is someone with you, a woman. She is standing to your left just past your peripheral vision, and you can't make her figure out. As you try to flesh out the memory, it fades...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7950 /* ~Regain your bearings.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7951 /* ~Regain your bearings.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #7787 /* ~...and you are once again standing with the Dustmen mourners. Their chant has dropped to near-silence. They stop, speak several lines praising the 'True Death,' then begin their chant again.~ */
  IF ~~ THEN REPLY #7952 /* ~Listen again.~ */ GOTO 21
  IF ~~ THEN REPLY #7953 /* ~Leave them to their chanting.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #7788 /* ~All the Dustmen carry the exact same tone and rhythm. Unlike the chanting you heard when you first approached the memorial, however, this chant has a much higher pitch, like the whistling of an arrow, or a wind screaming through a canyon. This chant begins and ends quickly - when the Dustmen fall silent, they speak several lines praising the 'True Death,' then begin their chant again.~ */
  IF ~~ THEN REPLY #7954 /* ~"I have some questions for you..."~ */ GOTO 3
  IF ~~ THEN REPLY #7955 /* ~Leave them to their chanting.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #7789 /* ~All the Dustmen carry the exact same tone and rhythm. Unlike the chanting you heard when you first approached the memorial, however, this chant has a certain energy and randomness about it - the chant is unpredictable, the tone seeming to change even as it passes their lips. No matter how much the chant changes from moment to moment, the Dustmen match each other perfectly. When the chanting finally drops to near-silence, the Dustmen speak several lines praising the 'True Death,' then begin their chant again.~ */
  IF ~~ THEN REPLY #7956 /* ~"I have some questions for you..."~ */ GOTO 3
  IF ~~ THEN REPLY #7957 /* ~Leave them to their chanting.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #7790 /* ~Unlike the chanting you heard when you first approached the memorial, this chant is but a single note, drawn out for several minutes... it reminds you of the tolling of a great bell. The Dustmen remain silent for a moment after ending the note, speak several lines praising the 'True Death,' then begin the 'chant' again.~ */
  IF ~~ THEN REPLY #7958 /* ~"I have some questions for you..."~ */ GOTO 3
  IF ~~ THEN REPLY #7959 /* ~Leave them to their chanting.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #7791 /* ~Unlike the chanting you heard when you first approached the memorial, this chant is more subtle; at times, the chant is so low it seems to blend in with the noise from the streets. The Dustmen fall completely silent after a minute or so, speak several lines praising the 'True Death,' then begin the 'chant' again.~ */
  IF ~~ THEN REPLY #7960 /* ~"I have some questions for you..."~ */ GOTO 3
  IF ~~ THEN REPLY #7961 /* ~Leave them to their chanting.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #7792 /* ~The Dustman looks at you blankly. "Our chanting has not changed. We have carried the same chant since we began."~ */
  IF ~~ THEN REPLY #7962 /* ~"Your chanting has changed... I can hear a difference in the tone and rhythm."~ */ GOTO 29
  IF ~~ THEN REPLY #7963 /* ~"Very well, never mind."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #7793 /* ~The Dustman shakes his head. "Perhaps it is you who has changed." ~ */
  IF ~~ THEN REPLY #7964 /* ~"I have other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7965 /* ~"Perhaps so. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.1 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #7794 /* ~"I mourn Iannis. He has been wounded by the loss of his first and last daughter, Deionarra."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7966 /* ~"Deionarra? I have heard of her. Do you know how she died?"~ */ JOURNAL #27450 /* ~The Dustman mourners said they were mourning a man named Iannis, who is apparently father of that spirit I met in the Mortuary. Perhaps Iannis might know something more about Deionarra and myself...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7967 /* ~"I had some other questions..."~ */ JOURNAL #27451 /* ~The Dustman mourners said they were mourning a man named Iannis, who had lost his only daughter, Deionarra. For some reason, those names sound vaguely familiar, but I cannot place them.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7968 /* ~"Thank you. That is all I wished to know."~ */ JOURNAL #27451 /* ~The Dustman mourners said they were mourning a man named Iannis, who had lost his only daughter, Deionarra. For some reason, those names sound vaguely familiar, but I cannot place them.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.2 13.5 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #7795 /* ~"We mourn your anguish over the departed."~ */
  IF ~~ THEN REPLY #7969 /* ~"I have recovered. The one you mourned before we spoke is more in need than I."~ */ GOTO 34
  IF ~~ THEN REPLY #7970 /* ~"I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7971 /* ~"Thank you. That is all I wished to know."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.3 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #7796 /* ~"We mourn the Wife-of-Angyar, who feels anguish over the departed."~ */
  IF ~~ THEN REPLY #7972 /* ~"She has recovered. The one you mourned before we spoke is more in need than she."~ */ GOTO 34
  IF ~~ THEN REPLY #7973 /* ~"I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7974 /* ~"Thank you. That is all I wished to know."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.4 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #7797 /* ~"We mourn Adahn, who feels anguish over the departed."~ */
  IF ~~ THEN REPLY #7975 /* ~"Uh... Adahn has recovered. The one you mourned before we spoke is more in need than he."~ */ GOTO 34
  IF ~~ THEN REPLY #7976 /* ~"I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7977 /* ~"Thank you. That is all I wished to know."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #7798 /* ~The Dustman nods, then bows his head and resumes chanting.~ */
  IF ~~ THEN REPLY #7978 /* ~"I had some other questions..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #7979 /* ~Listen.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #7980 /* ~Leave.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #7799 /* ~The mourner suddenly stops, and he studies you. "Does the one you speak of feel anguish over the one that has died?"~ */
  IF ~~ THEN REPLY #7981 /* ~"No. It does not stir their emotions."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7982 /* ~"Yes. A woman, the Wife-of-Angyar, has lost a son. Anguish hangs heavy upon her."~ */ GOTO 9
  IF ~~ THEN REPLY #7983 /* ~Lie: "Uh, yes... my friend, uh... Adahn... just lost someone close to him. He feels anguish over the person who died."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7984 /* ~"Yes, this recent death brought them a great deal of anguish and pain."~ */ GOTO 38
  IF ~~ THEN REPLY #7985 /* ~"I apologize... I misspoke. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #7800 /* ~"We will mourn your pain, if you so desire."~ */
  IF ~~ THEN REPLY #7986 /* ~"If you could, it would ease my pain greatly."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #7987 /* ~"No, there is no need. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #7801 /* ~"The events surrounding her death are not known to me."~ */
  IF ~~ THEN REPLY #7988 /* ~"I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7989 /* ~"Very well. That is all I wished to know."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #7802 /* ~"We will mourn their pain, if it will not give offense."~ */
  IF ~~ THEN REPLY #7990 /* ~"If you could, it would ease their pain greatly."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #7991 /* ~"No, there is no need. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 4.7 11.6
  SAY #7803 /* ~Unlike the chanting you heard when you first approached the memorial, the tone of this chant is harder to discern. As you listen, you realize it sounds strangely muted, as if the air itself was absorbing the chant. The Dustmen's chanting drops off after a minute or so, they speak several lines praising the 'True Death,' then they begin the chant again.~ */
  IF ~~ THEN REPLY #7992 /* ~"I have some questions for you..."~ */ GOTO 3
  IF ~~ THEN REPLY #7993 /* ~Leave them to their chanting.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.6 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #7804 /* ~"We mourn the one you spoke of who feels anguish over the departed."~ */
  IF ~~ THEN REPLY #7994 /* ~"The person has recovered. The one you mourned before is more in need than the one I spoke of."~ */ GOTO 34
  IF ~~ THEN REPLY #7995 /* ~"I had some other questions..."~ */ GOTO 20
  IF ~~ THEN REPLY #7996 /* ~"Thank you. That is all I wished to know."~ */ GOTO 12
END
