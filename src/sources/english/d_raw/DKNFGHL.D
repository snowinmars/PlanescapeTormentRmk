// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKNFGHL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKNFGHL~

IF ~  NumTimesTalkedTo(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 0 // from:
  SAY #23790 /* ~This ghoul's face has a great gash across it, and one of its eyes has been destroyed entirely. Despite the relative freshness of the wound, it seems to cause the foul-smelling creature no pain or discomfort. You notice a grimy knife tucked into its waistband... the letters 'UHIR' are carved into its handle.~ */
  IF ~~ THEN REPLY #23791 /* ~"Greetings..."~ */ GOTO 1
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23808 /* ~"Uh... could I have that knife you've got tucked in your belt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23811 /* ~Leave the ghoul be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0
  SAY #23812 /* ~The ghoul narrows his eyes and snarls at you. Its tongue - no less than two hands long - curls out to lick at its scabby lips.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23813 /* ~"Uh... could I have that knife you've got tucked in your belt?"~ */ GOTO 5
  IF ~  HasItem("UhrKnf","KnfGhl")
!Global("Uhir","GLOBAL",2)
~ THEN REPLY #23814 /* ~"Are you... Uhir?"~ */ GOTO 2
  IF ~~ THEN REPLY #23815 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #23816 /* ~"I must be taking my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #23817 /* ~The ghoul continues to eye you hungrily. He clenches and unclenches his clawed fists, as if fighting the urge to leap upon you and feed.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23818 /* ~"Uh... could I have that knife you've got tucked in your belt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23819 /* ~"Calm yourself, and answer my questions."~ */ GOTO 3
  IF ~~ THEN REPLY #23820 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #23821 /* ~The ghoul hisses at you: "Silence, meat! No talk! I no lissen to meat-thing! I hear only your heart, blood in meat's veins, sweet, delicious blood... tasty, rich, heart-meat..." Drool pours from its mouth, spattering the dusty tiles. "NO TALK!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23822 /* ~"Uh... could I have that knife you've got tucked in your belt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23823 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 4 // from:
  SAY #23824 /* ~This ghoul's face has a great gash across it, and one of its eyes has been destroyed entirely. You notice a grimy knife tucked into its waistband. It hisses at you as you approach: "Away! Go away! I no *talk* to meat thing, I no *listen,* meat! GO!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23825 /* ~"Uh... could I have that knife you've got tucked in your belt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23826 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.0 2.0 3.0 4.0
  SAY #23827 /* ~The ghoul looks down at the knife, scratching its head as if wondering how it got there. Finally, it looks up and gives you a sly, toothy grin... "Meat want knife? Meat make trade, yes..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23828 /* ~"How about these rat tails?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23829 /* ~"How about these rat tails?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23830 /* ~"I could give you copper..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23831 /* ~"But I've no copper to give you."~ */ GOTO 6
  IF ~~ THEN REPLY #23832 /* ~"Hand it over, ghoul... before I have to take it from you."~ */ GOTO 9
  IF ~~ THEN REPLY #23833 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.3 9.2 9.3
  SAY #23834 /* ~The ghoul shakes its head, then points to its mouth. "No, no... food, meat, yes..." Its long, gray tongue lolls out as it slavers messily.~ */
  IF ~~ THEN REPLY #23835 /* ~"I'll be back if I find you something to eat, then."~ */ JOURNAL #23836 /* ~I found the ghoul who has Uhir's knife. It wants food in exchange for the blade... perhaps I can find or kill something down here, like rats, for it to eat.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 9.0
  SAY #23837 /* ~The ghoul regards them critically. "Tasty yes, but small. More, meat... more! Hungrier!"~ */
  IF ~~ THEN REPLY #23838 /* ~"I'll be back with more, then."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 9.1
  SAY #23839 /* ~"Yes, yes!" The ghoul snatches them away greedily and devours them. After licking his clawed fingers clean, he tosses you Uhir's knife.~ */
  IF ~~ THEN REPLY #23840 /* ~"Uh... thanks. Farewell."~ */ DO ~SetGlobal("DN_Knife","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY #23841 /* ~"Hssst! You meat, delicious, red, wet meat - not threat! Meat wants knife? Meat make trade!"~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23842 /* ~"How about these rat tails?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23843 /* ~"How about these rat tails?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23845 /* ~"I could give you copper..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23846 /* ~"But I've no copper to give you."~ */ GOTO 6
  IF ~~ THEN REPLY #23847 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 10 // from:
  SAY #23848 /* ~This ghoul's face has a great gash across it, and one of its eyes has been destroyed entirely. Despite the relative freshness of the wound, it seems to cause the foul-smelling creature no pain or discomfort.~ */
  IF ~~ THEN REPLY #23849 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #23850 /* ~Leave the ghoul be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 11 // from:
  SAY #23851 /* ~This ghoul's face has a great gash across it, and one of its eyes has been destroyed entirely. It hisses at you as you approach: "Away! Go away! I no *talk* to meat thing, I no *listen,* meat! GO!"~ */
  IF ~~ THEN REPLY #23852 /* ~Leave.~ */ EXIT
END
