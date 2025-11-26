// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS6~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #3208 /* ~This strange, cubic creature seems to be as much machine as it is organic. As you approach the thing, it silently stares at you with wide, unblinking eyes. Its face hasn't the slightest trace of emotion on it.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 429
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #40748 /* ~This strange, cubic creature seems to be as much machine as it is organic. As you approach the thing, it silently stares at you with wide, unblinking eyes. Its face hasn't the slightest trace of emotion on it.~ */
  IF ~~ THEN REPLY #40749 /* ~"Greetings..."~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #40750 /* ~Leave it alone.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #40751 /* ~The modron stares at you quietly.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40752 /* ~"I had some questions..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40753 /* ~"I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #40754 /* ~Leave it alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #40755 /* ~Its voice has a metallic, reverberating quality to it, as if it were more a sound played out on some warped musical instrument than true speech: "Your greeting is returned." There is a soft *click* as the creature blinks. An awkward silence hangs in the air between the two of you.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40756 /* ~"I had some questions..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40757 /* ~"I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #65533 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #40758 /* ~"Identify yourself to us."~ */
  IF ~~ THEN REPLY #40759 /* ~"But... my questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #40760 /* ~"It's not important who I am."~ */ GOTO 6
  IF ~~ THEN REPLY #40761 /* ~Lie: "I'm... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40762 /* ~"I'm not sure who I am."~ */ GOTO 8
  IF ~~ THEN REPLY #40763 /* ~"Forget it... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40764 /* ~"To learn the identity of the subject is of a high priority. To answer various questions that might be posed by the subject is of a low priority. Identify yourself to us."~ */
  IF ~~ THEN REPLY #40765 /* ~"It's not important who I am."~ */ GOTO 6
  IF ~~ THEN REPLY #40766 /* ~Lie: "I'm... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40767 /* ~"I'm not sure who I am."~ */ GOTO 8
  IF ~~ THEN REPLY #40768 /* ~"Forget it... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 8.0
  SAY #40769 /* ~"The opinion of the subject as to importance of its identity is irrelevant. We consider the identity of the subject to be important; thus, for all intents and purposes, it is important."~ */
  IF ~~ THEN REPLY #40770 /* ~Lie: "I'm... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40771 /* ~"I'm not sure who I am."~ */ GOTO 8
  IF ~~ THEN REPLY #40772 /* ~"Forget it... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.0 8.2
  SAY #40773 /* ~The creature tilts slightly forward, then back, on its metallic legs - whether the movement is meant to indicate a bow or a nod, you are unsure. "We would identity ourselves as modrons, quadrone type, winged variant, to the subject, Adahn."~ */
  IF ~~ THEN REPLY #40774 /* ~"I had some questions, now..."~ */ GOTO 10
  IF ~~ THEN REPLY #40775 /* ~"I'll be taking my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.2 6.1
  SAY #40776 /* ~"We would know why this is so."~ */
  IF ~~ THEN REPLY #40777 /* ~"It's not important, really..."~ */ GOTO 6
  IF ~~ THEN REPLY #40778 /* ~"I don't know, myself. I just can't remember."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
~ GOTO 9
  IF ~~ THEN REPLY #40779 /* ~Lie: "I'm... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40780 /* ~"Forget it... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #40781 /* ~"All things should have a name; all things should be identified. We find your answer unsatisfactory, but it shall have to suffice for the present." The creature pauses and blinks at you. "We would identity ourselves as modrons, quadrone type, winged variant, to the subject."~ */
  IF ~~ THEN REPLY #40782 /* ~"I had some questions, now..."~ */ GOTO 10
  IF ~~ THEN REPLY #40783 /* ~"I'll be taking my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.1 7.0 9.0 11.1 12.1 13.1 14.1 15.0 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.0 25.0
  SAY #40784 /* ~"The subject is free to ask a question."~ */
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #40785 /* ~"Do you know what this little cube-like toy creature is?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #40786 /* ~"What are you doing here?"~ */ GOTO 11
  IF ~~ THEN REPLY #40787 /* ~"What can you tell me about this place?"~ */ GOTO 16
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40788 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 18
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68126 /* ~"What can you tell me about the silent prostitute?"~ */ GOTO 18
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40789 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40790 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 21
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40791 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 21
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40792 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 22
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40793 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 23
  IF ~~ THEN REPLY #40794 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40795 /* ~"Our purpose here is observation."~ */
  IF ~~ THEN REPLY #40796 /* ~"What are you observing?"~ */ GOTO 12
  IF ~~ THEN REPLY #40797 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40798 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #40799 /* ~"We are observing one of the establishment's staff."~ */
  IF ~~ THEN REPLY #40800 /* ~"Who are you observing?"~ */ GOTO 13
  IF ~~ THEN REPLY #40801 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40802 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #40803 /* ~"As previously stated, we are observing one of the establishment's staff."~ */
  IF ~~ THEN REPLY #40804 /* ~"Yes, but who *exactly* are you observing?"~ */ GOTO 14
  IF ~~ THEN REPLY #40805 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40806 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40807 /* ~"The object of our scrutiny is named 'Dolora.'"~ */
  IF ~~ THEN REPLY #40808 /* ~"Why are you watching her?"~ */ GOTO 15
  IF ~~ THEN REPLY #40809 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40810 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40811 /* ~"We have not been informed as to the specific purpose or purposes which resulted in our being given our present task. The command of our superior pentadrone is sufficient reason to perform said task; as such, the purpose or purposes are irrelevant to us."~ */
  IF ~~ THEN REPLY #40812 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40813 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY #40814 /* ~"A building located in the section of Sigil commonly known as the Clerk's Ward. We cannot give exact coordinates as the surface of Sigil changes at intervals we have not determined as of the present. The building itself is known as the Brothel of Slating Intellectual Lusts. It serves as what may be broadly defined as a language school. The students of the school are primarily females who intend to, at some point we have not determined and which varies from student to student, become a factotum of the Society of Sensation."~ */
  IF ~~ THEN REPLY #40815 /* ~"The Society of Sensation?"~ */ GOTO 17
  IF ~~ THEN REPLY #40816 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40817 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #40818 /* ~"We will provide a brief summary as to what the Society of Sensation is defined as: a faction whose core belief is that with experience comes true understanding of the multiverse and its secrets."~ */
  IF ~~ THEN REPLY #40819 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40820 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.3 10.4
  SAY #40821 /* ~"The subject referred to is named 'Ecco.' We have gathered no more information regarding said subject."~ */
  IF ~~ THEN REPLY #40822 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40823 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.5
  SAY #40824 /* ~"Were we to hypothesize certainty regarding which Ravel was being referred to, we would still possess no means of determining whether or not Ravel was the mother of Kesai."~ */
  IF ~~ THEN REPLY #40825 /* ~"Which Ravel? There's more than one?"~ */ GOTO 20
  IF ~~ THEN REPLY #40826 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40827 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40828 /* ~"We cannot state such as fact, but we must consider that no less than 11,032 planes are infinite in scope, of which no less than 3,701 are populated with sentient beings which use individual names. It therefore stands to reason that, at any one moment in time, there would be an infinite number of beings so named."~ */
  IF ~~ THEN REPLY #40829 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40830 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.6 10.7
  SAY #40831 /* ~"We do not. If you are not currently in the process of doing so, we would suggest the methodical approach and questioning of each of the inhabitants of this building."~ */
  IF ~~ THEN REPLY #40832 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40833 /* ~"I'll keep asking around, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.8
  SAY #40834 /* ~"We know nothing of any being or object possessing such an appellation."~ */
  IF ~~ THEN REPLY #40835 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40836 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 10.9
  SAY #40837 /* ~"We do not. We have not as yet made an effort to catalog each of the inhabitants of this building, and do not intend to do so at any time."~ */
  IF ~~ THEN REPLY #40838 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40839 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 10.0
  SAY #40840 /* ~The modron - its appearance identical in every aspect but size to the object in your hands - blinks once, twice, then speaks: "The object is a portal cube. The user is to position the appendages of the portal cube in such a manner that it will activate. Once activated, the portal cube will transport the user to whatever destination it was tuned to during its creation."~ */
  IF ~~ THEN REPLY #40841 /* ~"What's the proper position to activate this one?"~ */ GOTO 25
  IF ~~ THEN REPLY #40842 /* ~"Where will this cube take its user?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #40843 /* ~"We do not have that information. Over ninety-seven percent of all portal cubes function in a slightly different manner. We were not present at the construction of the subject's portal cube, nor have we ever been given instructions as to its use. Should the subject desire to utilize the portal cube, they will have to determine its method of operation and destination via experimentation."~ */
  IF ~~ THEN REPLY #40844 /* ~"I had another question..."~ */ GOTO 10
  IF ~~ THEN REPLY #40845 /* ~"Farewell, then."~ */ EXIT
END
