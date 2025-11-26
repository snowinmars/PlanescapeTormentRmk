// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMICCAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMICCAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45919 /* ~This rotund woman, complete with shrewish eyes and a nasal voice brays out: "Now what have we here? A customer? Do mine eyes spy a customer?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DBROKAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45921 /* ~"The dead one has returned. Brokah! The dead one has returned!"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45923 /* ~His partner, a diminutive woman with a braying voice gives you a quick glance and replies: "It's a customer, you dolt, as I've been telling you for ages! I told you we'd get customers, but you never believed me and now we have one! Are you ready for him... this... well... dead-looking man?"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45925 /* ~"I have eyes, can I not see? I see him, I see him, stop pestering me, you wizened old bag of bones!" She turns to you and modulates her voice. "What can old Miccah do for you?"~ */
  IF ~~ THEN REPLY #45926 /* ~"Let's talk about trades."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45927 /* ~"Can you tell me about the area?"~ */ GOTO 5
  IF ~~ THEN REPLY #45928 /* ~"Can you tell me about yourself?"~ */ GOTO 6
  IF ~~ THEN REPLY #45929 /* ~"Who's he?"~ */ GOTO 7
  IF ~~ THEN REPLY #45931 /* ~"What can you tell me of the factions?"~ */ GOTO 8
  IF ~~ THEN REPLY #45932 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45933 /* ~"That's what I've been saying to you!" She lowers her voice and turns to you. "What can we do for you?"~ */
  IF ~~ THEN REPLY #45934 /* ~"Let's talk about trades."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45935 /* ~"Can you tell me about the area?"~ */ GOTO 5
  IF ~~ THEN REPLY #45936 /* ~"Can you tell me about yourself?"~ */ GOTO 6
  IF ~~ THEN REPLY #45939 /* ~"Who's he?"~ */ GOTO 7
  IF ~~ THEN REPLY #45941 /* ~"What can you tell me of the factions?"~ */ GOTO 8
  IF ~~ THEN REPLY #45942 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45944 /* ~"I'm sure my husband here will be more than delighted to tell you about the Civic Festhall and the Brothel..." she sniffs, "but my tastes run more toward..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 14
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45947 /* ~"I? I am chained to this anchor of a pawnshop with a husband who doesn't appreciate me enough..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 15
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45951 /* ~"He? He is Brokah. He is my husband of twenty-some years, though his inconstant nature makes it hard to believe he has not strayed in that time..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 16
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45955 /* ~"The factions? The factions? Ha. All they have done is tax this poor shop nearly to death, driven us to the Hive or worse, and make Brokah even less of a man than he already is..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 17
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45958 /* ~Miccah breaks in: "And the first thing you'll mention will be the brothel, no doubt, the brothel for you men! It's always the brothel or the Civic Festhall - never the Market or..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 9
END

IF ~~ THEN BEGIN 10 // from:
  SAY #45961 /* ~"He's just being polite. He doesn't really care. You have nothing useful to say anyway. You're the owner of a pawnshop and that's all you'll ever be because you lack ambition..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45964 /* ~"...the greatest gift ever to enter his life, isn't that right? I saved him, you see, from the life his parents had planned for him and he promised to take me away from all this and instead, instead what you see is the life he gave me. I tell you, it would be enough to drive a body to drink..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45967 /* ~"I have ears, I can hear what he says. Brokah has no truck with the factions because they know he can't hold to a belief long enough to believe it himself."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45969 /* ~"Precious little judgment too, I say, because I allowed your words to sway me away from a promising future and now I'm..."

The two of them hurl themselves headlong into pointed bickering.~ */
  IF ~~ THEN REPLY #45970 /* ~"I had a few more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #45971 /* ~"I'd like to buy something..."~ */ GOTO 17
  IF ~~ THEN REPLY #45972 /* ~"Farewell, then."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45973 /* ~"Something I thought marriage could cure and which hope was entirely in vain. Ach!" The two of them thrust into yet another tedious argument and ignore you.~ */
  IF ~~ THEN REPLY #45974 /* ~"I had a few more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #45975 /* ~"I'd like to buy something..."~ */ GOTO 17
  IF ~~ THEN REPLY #45976 /* ~"Farewell, then."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45977 /* ~"To be sure, the goats on the farm must miss your tender ministrations..." Brokah purples and the two of them fall into what sounds like the latest in a long, long series of arguments. Their attentions are entirely devoted to each other, and they ignore you.~ */
  IF ~~ THEN REPLY #45979 /* ~"I had a few more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #45980 /* ~"I'd like to buy something..."~ */ GOTO 17
  IF ~~ THEN REPLY #45981 /* ~"Farewell, then."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45982 /* ~She splutters incoherently for a moment, and then launches into a tirade that blisters your ears, and soon Brokah is shouting just as loudly. They ignore you.~ */
  IF ~~ THEN REPLY #45983 /* ~"I had a few more questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #45985 /* ~"I'd like to buy something..."~ */ GOTO 17
  IF ~~ THEN REPLY #45987 /* ~"Farewell, then."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 13.2 14.0 14.1 14.2 15.0 15.1 15.2 16.0 16.1 16.2
  SAY #45988 /* ~The two of them are in a heated argument. They ignore you entirely as their words slowly fill the air in the shop.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #45989 /* ~"I'll just come back later, then. Farewell."~ */ DO ~SetGlobal("Insult_BandM_1","GLOBAL",1)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ EXTERN ~DMORTE~ 730
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #66818 /* ~"I'll just come back later, then. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #66819 /* ~"I'll just come back later, then. Farewell."~ */ EXIT
END
