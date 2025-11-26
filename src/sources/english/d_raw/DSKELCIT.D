// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELCIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELCIT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19719 /* ~There is no meat left on the bones of this ancient, animated corpse... only a few colored rags, which seem to serve more as decoration than clothing.~ */
  IF ~~ THEN REPLY #19744 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #19751 /* ~Leave the skeleton alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #19720 /* ~"And greetings to thee." The thing's calm, far-away voice echoes from within its skull, expelled with a cloud of dust.~ */
  IF ~~ THEN REPLY #19753 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #19755 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #19721 /* ~"I shall answer what I can." Dust falls from the joints of the skeleton's jaws as it speaks. "Ask what thou will; I've more than enough time to speak with thee."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19757 /* ~"Why have I been made a prisoner?"~ */ GOTO 17
  IF ~~ THEN REPLY #19759 /* ~"Where am I?"~ */ GOTO 3
  IF ~~ THEN REPLY #19760 /* ~"What are you doing here?"~ */ GOTO 14
  IF ~~ THEN REPLY #19761 /* ~"Who inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19763 /* ~"Let me ask you of someone in particular..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19765 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 16
  IF ~~ THEN REPLY #19768 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.1
  SAY #19722 /* ~"Thou art in what we call the Dead Nations... our land and home, beneath the city of Sigil. This is but a small part of our civilization, a borderland... the Dead Nations extend for many, many leagues into the darkness."~ */
  IF ~~ THEN REPLY #19769 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19770 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3 5.3 6.0 7.1 8.3 10.1 11.2 12.1 13.0
  SAY #19723 /* ~"This place is a place of the Undead, ruled by our Silent King. There are zombies here, as well as ghouls. Farther away, in catacombs to the east, live cranium rats. Also, on occasion, one of the Living - one such as thyself, or Soego - ventures down here."~ */
  IF ~~ THEN REPLY #19771 /* ~"Who is this Silent King?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19772 /* ~"Tell me of your own kind."~ */ GOTO 6
  IF ~~ THEN REPLY #19773 /* ~"Tell me of the other undead."~ */ GOTO 9
  IF ~~ THEN REPLY #19774 /* ~"Tell me of the cranium rats."~ */ GOTO 11
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19775 /* ~"Tell me of Soego."~ */ GOTO 13
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19776 /* ~"Tell me of Soego."~ */ GOTO 12
  IF ~~ THEN REPLY #19777 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19778 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.6 6.1 7.2 8.4 9.2 10.2 11.3 12.2 13.1 14.1 15.1 16.1 17.3 18.2 20.0 21.5 22.2 23.2 24.2
  SAY #19724 /* ~The skeleton nods slowly, the bones of its neck creaking softly. "Please, ask."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19779 /* ~"Why have I been made a prisoner?"~ */ GOTO 17
  IF ~~ THEN REPLY #19780 /* ~"Where am I?"~ */ GOTO 3
  IF ~~ THEN REPLY #19781 /* ~"What are you doing here?"~ */ GOTO 14
  IF ~~ THEN REPLY #19782 /* ~"Who inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19783 /* ~"Let me ask you of someone in particular..."~ */ GOTO 21
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19784 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 16
  IF ~~ THEN REPLY #19785 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #19725 /* ~The skeleton nods. "We are the oldest of the undead here, the most free of flesh. We make an effort to serve as guides and mentors to the others, maintaining a healthy community here."~ */
  IF ~~ THEN REPLY #19786 /* ~"Who else inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19787 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19788 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 9.0 23.0
  SAY #19726 /* ~"Strong, but slow of mind and body, they have retained more of their humanity - their emotions - than we. They serve our community as workers, laborers, under the guidance of Stale Mary, the most caring and intelligent of them."~ */
  IF ~~ THEN REPLY #19789 /* ~"Tell me of Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #19790 /* ~"Who else inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19791 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19792 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 11.1 24.0
  SAY #19727 /* ~"The ghouls are strong, violent, and ravenous creatures led by their ghastly matriarch, Acaste. They serve the community - the Dead Nations - as guards... but are an unstable element. Fear of the other undead's numbers, and of the Silent King, keeps them in check. Without our great lord to command them, we... as well as our charges... might fall prey to them, one day."~ */
  IF ~~ THEN REPLY #19793 /* ~"Tell me of Acaste."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #19794 /* ~"Who is this Silent King?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19795 /* ~"Your charges?"~ */ GOTO 15
  IF ~~ THEN REPLY #19796 /* ~"Who else inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19797 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19798 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #19728 /* ~"Of whom do thou ask?"~ */
  IF ~~ THEN REPLY #19799 /* ~"The zombies."~ */ GOTO 7
  IF ~~ THEN REPLY #19800 /* ~"The ghouls."~ */ GOTO 8
  IF ~~ THEN REPLY #19801 /* ~"Never mind. I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #19802 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0 8.1 17.1 18.1 21.0 22.0
  SAY #19729 /* ~"Our lord and master. He is called the Silent King because he speaks only in times of dire need." The skeleton gesticulates as it speaks, old joints creaking and popping as it does so. "Ask Hargrimm, our high priest, of him. He can tell thee more."~ */
  IF ~~ THEN REPLY #19803 /* ~"Tell me of Hargrimm."~ */ GOTO 22
  IF ~~ THEN REPLY #19804 /* ~"Who else inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19805 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19806 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY #19730 /* ~"Vermin, whose intelligence increases according to their proximity with others of their own kind. A serious threat, at one time... they raided our charges, disturbing the bones of the silent ones. Now, they keep to the easternmost portions of the catacombs. The ghouls caught and ate enough of them to put an end to their pillaging, if only temporarily."~ */
  IF ~~ THEN REPLY #19808 /* ~"Your charges?"~ */ GOTO 15
  IF ~~ THEN REPLY #19810 /* ~"Tell me of the ghouls."~ */ GOTO 8
  IF ~~ THEN REPLY #19811 /* ~"Who else inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19812 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19813 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.5
  SAY #19731 /* ~"He was a missionary of sorts, a Dustman who hoped to persuade us to surrender ourselves to the True Death. Now, as I understand it, he is one of our charges."~ */
  IF ~~ THEN REPLY #19814 /* ~"Your charges?"~ */ GOTO 15
  IF ~~ THEN REPLY #19815 /* ~"Who else inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19816 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19817 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.4 21.4
  SAY #19732 /* ~"He is a missionary of sorts, a Dustman who hopes to persuade us to surrender ourselves to the True Death. He can be found wandering the Chapel in the northern reaches of these cold, dusty halls; thou may wish to speak with him thyself."~ */
  IF ~~ THEN REPLY #19818 /* ~"Who else inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #19819 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19820 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2 5.2
  SAY #19733 /* ~"What do the living do, in the world above? We go about our lives here, in the quiet darkness. We work to protect our charges, the silent ones, from the depredations of others."~ */
  IF ~~ THEN REPLY #19821 /* ~"Your charges?"~ */ GOTO 15
  IF ~~ THEN REPLY #19822 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19823 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.2 11.0 12.0 14.0 18.0
  SAY #19734 /* ~"The silent ones... the dead who do naught but sleep. We protect them, watch over them as they rest."~ */
  IF ~~ THEN REPLY #19824 /* ~"Who would disturb them?"~ */ GOTO 20
  IF ~~ THEN REPLY #19825 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19826 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 5.5
  SAY #19735 /* ~The skeleton shrugs, its shoulder blades scraping along the back of its rib cage. "No, I have not. Perhaps thou should speak to Hargrimm, our high priest. He knows much."~ */
  IF ~~ THEN REPLY #19827 /* ~"Tell me of Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19828 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19829 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 5.0
  SAY #19736 /* ~The skeleton touches its chin, tilting its skull slightly upwards. "The ghouls are permitted to feast upon all those found robbing the catacombs. The Silent King felt it would be best to let other intruders - those caught wandering and made prisoners, such as thyself - languish here to lapse into our care, rather than be devoured by the ghouls. Thou may wish to ask Hargrimm, our high priest - it is he who speaks to the Silent King."~ */
  IF ~~ THEN REPLY #19830 /* ~"Tell me of Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19831 /* ~"Silent King?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19832 /* ~"'Lapse into your care'?"~ */ GOTO 18
  IF ~~ THEN REPLY #19833 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19834 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #19737 /* ~The skeleton nods. "To become one of our charges. To number amongst the silent ones."~ */
  IF ~~ THEN REPLY #19835 /* ~"Your... charges?"~ */ GOTO 15
  IF ~~ THEN REPLY #19836 /* ~"Who is this Silent King?"~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19837 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19838 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #19738 /* ~"Greetings, once more. Accustomed to thy new home, yet?"~ */
  IF ~~ THEN REPLY #19839 /* ~"Hardly. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #19840 /* ~"Not just yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #19739 /* ~"Many." He ticks them off on yellowed, dust-covered finger bones as he speaks. "Hungry, uncontrolled ghouls, rats, and most of all... the living. Those from the buried village - servants of a man named Pharod - often descend into the vaults of the Dead Nations, disturbing the silent ones. I do not know why, nor do I care... my only concern is that we stop their foul laboring."~ */
  IF ~~ THEN REPLY #19841 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19842 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.4 5.4 22.1 23.1 24.1
  SAY #19740 /* ~The skeleton nods gracefully. "Who?"~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #19843 /* ~"The Silent King."~ */ GOTO 10
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #19844 /* ~"Hargrimm."~ */ GOTO 22
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #19845 /* ~"Stale Mary."~ */ GOTO 23
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #19846 /* ~"Acaste."~ */ GOTO 24
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19847 /* ~"Soego."~ */ GOTO 13
  IF ~~ THEN REPLY #19848 /* ~"Never mind. I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #19849 /* ~"No one, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.0 16.0 17.0 21.1
  SAY #19741 /* ~"Our high priest. It is he who speaks to the Silent King, giving us our lord's word and law. He is here, in the antechamber of the Silent King's throne room."~ */
  IF ~~ THEN REPLY #19850 /* ~"Tell me of the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #19851 /* ~"Let me ask about someone else..."~ */ GOTO 21
  IF ~~ THEN REPLY #19852 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19853 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0 21.2
  SAY #19742 /* ~"She is slow, but caring, and wise. She acts as a mother of sorts to the other zombies. She may be found in a chamber west of where thou first entered the Dead Nations."~ */
  IF ~~ THEN REPLY #19854 /* ~"Tell me about the zombies."~ */ GOTO 7
  IF ~~ THEN REPLY #19855 /* ~"Let me ask about someone else..."~ */ GOTO 21
  IF ~~ THEN REPLY #19856 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19857 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 8.0 21.3
  SAY #19743 /* ~"She is the ghastly matriarch of a pack of ghouls which calls themselves the Blighted Ones. They serve the Dead Nations as guardians and protectors... for now. She watches over the chamber where thou first entered the Dead Nations."~ */
  IF ~~ THEN REPLY #19858 /* ~"Tell me of the Blighted Ones."~ */ GOTO 8
  IF ~~ THEN REPLY #19859 /* ~"Let me ask about someone else..."~ */ GOTO 21
  IF ~~ THEN REPLY #19860 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #19861 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
