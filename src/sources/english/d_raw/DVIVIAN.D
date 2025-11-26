// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIVIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIVIAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 28 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",0)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 0 // from:
  SAY #2999 /* ~This tall, elegant woman, with her sharp features and regal demeanor, is a striking example of aristocratic beauty. Her clothes appear to be spun of silver thread, and a small phial dangles from her necklace. She is perfumed with an exotic, erotic scent that seems to draw you towards her.~ */
  IF ~~ THEN REPLY #3000 /* ~"Greetings..."~ */ DO ~SetGlobal("Vivian","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #38430 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #38431 /* ~This tall, elegant woman, with her sharp features and regal demeanor, is a striking example of aristocratic beauty. Her clothes appear to be spun of silver thread, and a small phial dangles from her necklace. She is perfumed with an exotic, erotic scent that seems to draw you towards her.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #38434 /* ~She looks you over, arching an eyebrow with what you sense to be disdain. "Greetings. My name is Vivian; am I to presume I am being summoned?"~ */
  IF ~~ THEN REPLY #38435 /* ~"No, I just had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #38436 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.1 7.2 9.2 10.1 12.0 17.0 18.0 19.1 20.1 21.1 22.0 23.0 24.1 25.0 26.0 27.0 28.0 29.2 30.1 37.0 38.0
  SAY #39059 /* ~She nods imperiously. "Go on, then."~ */
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39060 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~  GlobalGT("Scent_Quest","AR0605",0)
~ THEN REPLY #39067 /* ~"What are you doing here?"~ */ GOTO 30
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39068 /* ~"What's that incredible smell?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39069 /* ~"What's that phial you've got on your necklace?"~ */ GOTO 20
  IF ~~ THEN REPLY #39070 /* ~"Can you tell me about this place?"~ */ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39071 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 38
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67850 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 38
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39072 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ JOURNAL #66743 /* ~I asked one of the prostitutes if she knew whether or not Kesai-Serris was truly Ravel's daughter, and she suggested I ask Juliette about it. Apparently, they were good friends before Juliette met Montague.~ */ GOTO 26
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39073 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39074 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 21
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39075 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 27
  IF ~~ THEN REPLY #39076 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39077 /* ~"Aside from my work as a student here? I am looking for something, actually. You would not happen to have smelled it, would you?"~ */
  IF ~~ THEN REPLY #39078 /* ~"A student?"~ */ GOTO 5
  IF ~~ THEN REPLY #39079 /* ~"Smelled it?"~ */ GOTO 6
  IF ~~ THEN REPLY #39080 /* ~"No, I don't think so..."~ */ GOTO 7
  IF ~~ THEN REPLY #39081 /* ~"Actually, I'd best be taking my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #39082 /* ~Vivian nods, looking vaguely bored. "That is correct. Mistress Grace tutors us in the art of language and conversation - the ability to affect another with one's words, and to gain new insights into both them and ourselves. All the prostitutes here are such students."~ */
  IF ~~ THEN REPLY #39083 /* ~"You... asked if I had smelled something?"~ */ GOTO 6
  IF ~~ THEN REPLY #39084 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39085 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 19.0 20.0
  SAY #39086 /* ~"Yes, I have a particular scent that seems to have gone... *wandering.* 'Tis somewhat... difficult to keep in one place. I hope that someone did not take it by accident... though you never know, with the 'ladies' around here." She frowns. "So... by any chance have you smelled it somewhere?"~ */
  IF ~~ THEN REPLY #39087 /* ~"You smell quite nice right now, you know..."~ */ GOTO 8
  IF ~~ THEN REPLY #39088 /* ~"How can a scent go wandering?"~ */ GOTO 9
  IF ~~ THEN REPLY #39089 /* ~"I don't think I've smelled it..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2 8.1
  SAY #39090 /* ~"Unfortunate. I fear that I may never find it."~ */
  IF ~~ THEN REPLY #39091 /* ~"How would you know it if you found it?"~ */ GOTO 10
  IF ~~ THEN REPLY #39092 /* ~"I can help..."~ */ GOTO 11
  IF ~~ THEN REPLY #39093 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39094 /* ~"Good luck finding it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #39095 /* ~She scowls for a moment, then smiles at you. "Yes, yes, and I thank you for your compliment... but I assure you, this particular aroma is *nothing* to my personal scent." She sighs.~ */
  IF ~~ THEN REPLY #39096 /* ~"How can a scent go wandering?"~ */ GOTO 9
  IF ~~ THEN REPLY #39097 /* ~"I don't think I've smelled it..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #39098 /* ~Vivian shakes her head. "I had meant to infer that it had been *taken.* The 'ladies' here are a bit jealous at times, and have been known to take my various perfumes for themselves. This time, though, someone has absconded with my own, personal, scent... I worked on that scent, perfected it, and now *poof!* 'Tis gone! I need not bear such annoyances!" Vivian stomps her feet: "I want that scent back, and I want it now!"~ */
  IF ~~ THEN REPLY #39099 /* ~"How would you know it if you found it?"~ */ GOTO 10
  IF ~~ THEN REPLY #39100 /* ~"I can help..."~ */ GOTO 11
  IF ~~ THEN REPLY #39101 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39102 /* ~"Good luck finding it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #39103 /* ~"You would know it by smell, I assure you. 'Tis quite striking, especially to men."~ */
  IF ~~ THEN REPLY #39104 /* ~"I can help you..."~ */ GOTO 11
  IF ~~ THEN REPLY #39105 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39106 /* ~"Good luck finding it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 9.1 10.0
  SAY #39107 /* ~Vivian seems dubious. "Are you certain? I do not wish to impose."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #39108 /* ~"No imposition. I am pleased to help such a lovely woman as yourself."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~I have agreed to help Vivian, one of the Prostitutes in the Brothel of Slating Intellectual Lusts, find her 'personal scent.' She said I'd know it when I smelled it.~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #39109 /* ~"No imposition. I am pleased to help such a lovely woman as yourself."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~I have agreed to help Vivian, one of the Prostitutes in the Brothel of Slating Intellectual Lusts, find her 'personal scent.' She said I'd know it when I smelled it.~ */ EXTERN ~DANNAH~ 194
  IF ~~ THEN REPLY #39110 /* ~"Oh, no imposition - I expect a reward."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vivian_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #39111 /* ~"If you doubt, then perhaps I can't help you."~ */ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39112 /* ~Vivian smiles and nods to you. "You are too kind. Very well... if you run across it, please let me know. I am somewhat anxious to get it back. A one-of-a-kind scent, really."~ */
  IF ~~ THEN REPLY #39113 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39114 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #39115 /* ~Vivian rolls her eyes. "As I should have expected from your brutish, mercenary appearance. Very well... recover my scent, and I shall aid you with yours."~ */
  IF ~~ THEN REPLY #39116 /* ~"Mine?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39117 /* ~She smirks, then points at you: "Yes, *yours.* That foul, vinegary smell." She sniffs, then wrinkles her nose. "'Tis in your *skin,* too... no bathing will remove that stink."~ */
  IF ~~ THEN REPLY #39118 /* ~"How would you do this, and how could it benefit me?"~ */ GOTO 15
  IF ~~ THEN REPLY #39119 /* ~"Forget it. Waste of my time."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39120 /* ~"To answer your first question, I possess certain skills - magical in nature, which I shan't elaborate upon further - which allow me to create and change one's scent."~ */
  IF ~~ THEN REPLY #39121 /* ~"And the benefits...?"~ */ GOTO 16
  IF ~~ THEN REPLY #39122 /* ~"Forget it. Waste of my time."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39123 /* ~"You simply cannot deny the fact that the smell of a man or woman plays an important part in how well one is received. Whether you've been told so or not, I am quite certain people are at least a tad put off by that deathly aroma of yours. It might increase your charisma considerably to smell a bit better, you know."~ */
  IF ~~ THEN REPLY #39124 /* ~"Very well... I'll find your scent for you."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~I have agreed to help Vivian, one of the Prostitutes in the Brothel of Slating Intellectual Lusts, find her 'personal scent.' She said I'd know it when I smelled it.~ */ GOTO 17
  IF ~~ THEN REPLY #39125 /* ~"Forget it. Waste of my time."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39126 /* ~"The deal is done, then. Should you run across it, let me know. I am somewhat anxious to get it back. A one-of-a-kind scent, really."~ */
  IF ~~ THEN REPLY #39127 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39128 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 14.1 15.1 16.1
  SAY #39129 /* ~"Very well. 'Tis of no matter - I am certain I shall find it in time, with your help or not."~ */
  IF ~~ THEN REPLY #39130 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39131 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.2
  SAY #39132 /* ~She smiles at you. "I thank you for your compliment... but I assure you, this particular aroma is a bland and paltry odor in comparison to my personal scent." She sighs.~ */
  IF ~~ THEN REPLY #39133 /* ~"Your... 'personal' scent?"~ */ GOTO 6
  IF ~~ THEN REPLY #39134 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39135 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.3
  SAY #39136 /* ~Vivian looks down at the phial dangling from her throat. "Oh... that. 'Tis a phial of perfume, merely. I assure you, though, this particular aroma in no way compares to my personal scent." She sighs.~ */
  IF ~~ THEN REPLY #39137 /* ~"Your... 'personal' scent?"~ */ GOTO 6
  IF ~~ THEN REPLY #39138 /* ~"Let me ask you about something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39139 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.9
  SAY #39140 /* ~"Isn't she some historical figure? I can't quite recall. Who is she?"~ */
  IF ~~ THEN REPLY #39141 /* ~"A night hag from Sigil's past, I think."~ */ JOURNAL #66742 /* ~I asked one of the Brothel's prostitutes about Ravel, and she suggested I speak to Yves about it. I'm told that Yves collects all sorts of tales, and will likely have one about Ravel in her repertoire.~ */ GOTO 22
  IF ~~ THEN REPLY #39142 /* ~"Never mind... let me ask you something else..."~ */ GOTO 3
  IF ~~ THEN REPLY #39143 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39144 /* ~"I hope she stays in the past, then. Night hags are foul creatures, besmirching all femininity everywhere in the planes." She suddenly pauses. "You may wish to ask Yves. She knows all sorts of peculiar little tales."~ */
  IF ~~ THEN REPLY #39146 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39147 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.8
  SAY #39148 /* ~"Were I to know its location, I'd set it alight and cast its remains into the deepest of pits! May that wretched thing *never* find her precious veil, and be confined to that chamber for the rest of her days!" Vivian 'harumphs.'~ */
  IF ~~ THEN REPLY #39149 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39150 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.4
  SAY #39151 /* ~"Mistress Grace's brothel? 'Tis a school, where she tutors us in the art of language and conversation - the ability to affect another with one's words, and to gain new insights into both them and ourselves. For many, 'tis in preparation to become a member of the Society of Sensation."~ */
  IF ~~ THEN REPLY #39152 /* ~"The Society of Sensation?"~ */ GOTO 25
  IF ~~ THEN REPLY #39153 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39154 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0
  SAY #39155 /* ~Vivian sighs. "You may wish to ask Fall-from-Grace - or better yet, someone at the Civic Festhall - about the Sensates. They would be happy to speak with you, I am certain."~ */
  IF ~~ THEN REPLY #39156 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39157 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 3.7
  SAY #39158 /* ~Vivian nods, lowering her voice. "I, too, have heard such a rumor. T'would explain the red eyes, the... unusual tone of her skin. I know not if such gossip is true, however. Inquire of Juliette - she was once Kesai-Serris' best friend, until Juliette fell in love with Montague."~ */
  IF ~~ THEN REPLY #39159 /* ~"I had other questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #39160 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 3.10
  SAY #39161 /* ~"Tenth student?" She studies you as if not sure she heard you correctly. "Perhaps you have taken one too many blows to the head. Or perhaps one of the girls has been playing games with you. There is no tenth prostitute that I know of."~ */
  IF ~~ THEN REPLY #39162 /* ~"I had other questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #39163 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",1)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 28 // from:
  SAY #39164 /* ~Vivian acknowledges your presence with a regal nod. She is still surrounded by the scent of her exotic, erotic perfume, which seems to irresistibly draw you towards her.~ */
  IF ~~ THEN REPLY #39165 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #39166 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 37 even though they appear after this state */
~  Global("Scent_Quest","AR0605",1)
~ THEN BEGIN 29 // from:
  SAY #39167 /* ~Vivian greets you with a polite half-smile. "Had you any luck in finding my scent, perchance?"~ */
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #39168 /* ~"Yes... I found it in this red veil..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
GiveItemCreate("CVeil",Protagonist,1,0,0)
AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~I returned Vivian's personal scent to her.~ */ GOTO 31
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #39169 /* ~"In a way... I believe it was on Marissa's lost veil, which I returned to her. She has your scent."~ */ DO ~AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~I returned Vivian's personal scent to her.~ */ GOTO 35
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39170 /* ~"No, but I had some questions..."~ */ GOTO 3
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39171 /* ~"No, but I'll keep looking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.1
  SAY #39172 /* ~"I am one of Mistress Grace's prostitutes - one of her students - here in the Brothel. I am working to get myself into the Sensate faction, and my family recommended this establishment as one means by which I could examine my inner self to see if I wished to join."~ */
  IF ~~ THEN REPLY #39173 /* ~"The Sensate faction?"~ */ GOTO 25
  IF ~~ THEN REPLY #39174 /* ~"I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #39175 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #39176 /* ~Vivian's eyes light up. "Oh, how simply wonderful!" She takes the veil from your hands, mutters a few words over it, and returns it to you. She shakes out her crimson hair and, in moments, you are surrounded by the most intensely exotic and arousing scent you have ever had the pleasure of smelling.~ */
  IF ~  Global("Evil_Vivian_1","GLOBAL",0)
~ THEN REPLY #39177 /* ~"That smells... great..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39178 /* ~"That smells... great..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 36.0
  SAY #39179 /* ~"It does, does it not?" She smiles at you. "And as you have done a favor for me, so I wish to perform one for you. Stand close to me, scarred one..."~ */
  IF ~~ THEN REPLY #39180 /* ~Approach her.~ */ GOTO 33
  IF ~~ THEN REPLY #39181 /* ~"No thanks; I'm all right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 34.0
  SAY #39184 /* ~You step closer to Vivian; she takes your hand and, turning it over, takes a single cautious sniff of your wrist. "Phew!" She wrinkles her nose. "Vinegar! Or... embalming fluid? Here, I will remove this smell from you..." She mutters a few strange syllables, and a light tingling sensation spreads over your skin. In moments, your chemical reek lessens substantially. "There - how is that? People should be less eager to avoid conversation with you, now."~ */
  IF ~~ THEN REPLY #39185 /* ~"Thanks, Vivian. Farewell."~ */ DO ~PermanentStatChange(Protagonist,CHR,RAISE,1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1 36.1
  SAY #39186 /* ~"It does, does it not?" Vivian's smile suddenly disappears. "Well, I suppose you shall be wanting your reward, now. Stand closer to me, scarred one..."~ */
  IF ~~ THEN REPLY #39187 /* ~Approach her.~ */ GOTO 33
  IF ~~ THEN REPLY #39188 /* ~"No thanks; I'm all right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.1
  SAY #39189 /* ~For the briefest of moments, Vivian's eyes smolder with rage. "She *does,* does she? We shall see about that. Do not move; I shall return shortly."~ */
  IF ~~ THEN REPLY #39190 /* ~Wait.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39191 /* ~"There! That solves that! That hideous witch... always stealing my perfumes, but never did I think she would have the audacity to steal my own personal scent. Hmph!" She suddenly shakes out her crimson hair and, in moments, you are surrounded by the most intensely exotic and arousing scent you have ever had the pleasure of smelling.~ */
  IF ~  !Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39192 /* ~"That smells... great..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39193 /* ~"That smells... great..."~ */ GOTO 34
END

IF WEIGHT #0 ~  Global("Scent_Quest","AR0605",2)
~ THEN BEGIN 37 // from:
  SAY #39194 /* ~Vivian turns to greet you. Even her regal beauty is eclipsed by the splendor of the wondrously erotic scent that surrounds her... her exotic 'personal smell,' which you recovered for her.~ */
  IF ~~ THEN REPLY #39195 /* ~"I had a question for you, Vivian..."~ */ GOTO 3
  IF ~~ THEN REPLY #39196 /* ~"Just passing by. Farewell, Vivian."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 3.5 3.6
  SAY #39197 /* ~"You mean Ecco? She's a dear. Quiet." Vivian frowns. "That may be part of the charm. There is all manner of speculation as to why she is silent, but I think t'was that her heart was most horribly broken. Dolora might know best. She has been known to speak to a man Ecco once loved, before she lost her voice."~ */
  IF ~~ THEN REPLY #39199 /* ~"I have another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #52814 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
