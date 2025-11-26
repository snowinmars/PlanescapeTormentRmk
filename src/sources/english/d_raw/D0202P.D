// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D0202P.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D0202P~

IF ~  !PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 0 // from:
  SAY #36382 /* ~There is something about the arch in front of you... something hauntingly familiar. A bone-numbing chill blankets the air between these two black pillars, as if the arch itself bordered on some other, colder space. For some reason, you KNOW this is the portal to the Fortress of Regrets... now all you need to do is open it.~ */
  IF ~~ THEN REPLY #36383 /* ~Grit your teeth and peel the skin from your left forearm...~ */ DO ~GiveItemCreate("SkScrap",Protagonist,1,0,0)
~ GOTO 1
  IF ~~ THEN REPLY #36384 /* ~Leave the portal alone... for now.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53637 /* ~You clench your teeth and dig your fingernails into your left forearm; with a dry, tearing sound, you peel off a strip of skin. The chill between the pillars becomes stronger, almost hungering, as if the portal has opened a crack...~ */
  IF ~  !PartyHasItem("SkScrap")
~ THEN GOTO 14
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66928 /* ~Examine the skin...~ */ GOTO 3
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66929 /* ~Leave the portal alone... for now.~ */ EXIT
END

IF ~  PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 2 // from:
  SAY #53640 /* ~You stand before the arch again; a bone-numbing chill blankets the air between these two black pillars, as if the arch itself bordered on some other, colder space. This is the portal to the Fortress of Regrets... now all you need to do is inscribe a regret on the scrap of skin you ripped from arm.~ */
  IF ~~ THEN REPLY #53641 /* ~Prick your left index finger, and inscribe a regret on the scrap of flesh with your blood...~ */ GOTO 4
  IF ~~ THEN REPLY #53642 /* ~Leave the portal alone... for now.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #53643 /* ~This scrap of skin has been peeled from the back of your left forearm. Its scarred, gray surface reminds you of a zombie's hide; it feels more like a piece of cured leather than a strip of skin. ~ */
  IF ~~ THEN REPLY #53644 /* ~Prick your left index finger, and inscribe a regret on the scrap of flesh with your blood...~ */ GOTO 4
  IF ~~ THEN REPLY #53645 /* ~Put the skin away...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #53646 /* ~You prick the tip of your index finger; before the wound can heal, you squeeze forth several drops of blood. As you prepare to scrawl your regret, a series of images float across your mind...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53647 /* ~Regret: "I regret what happened to my companions..."~ */ GOTO 5
  IF ~~ THEN REPLY #53648 /* ~Regret: "I regret my actions..."~ */ GOTO 6
  IF ~~ THEN REPLY #53649 /* ~Regret: "I regret my past..."~ */ GOTO 7
  IF ~~ THEN REPLY #53650 /* ~Regret: "I regret events that have led up to this point..."~ */ GOTO 8
  IF ~~ THEN REPLY #53651 /* ~Let the wound heal without writing on the flesh, and put the skin away.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 13.0
  SAY #53653 /* ~You whisper the words to yourself, but the regret echoes through your mind: 'I regret...'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53655 /* ~"...all my companions had to suffer for me to reach here."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53869 /* ~"...trying to sell Morte to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53870 /* ~"...trying to sell Annah to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53871 /* ~"...trying to sell Dak'kon to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53872 /* ~"...trying to sell Fall-from-Grace to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53873 /* ~"...trying to sell Nordom to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53874 /* ~"...not selling Morte to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53875 /* ~"...not selling Annah to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53878 /* ~"...not selling Dak'kon to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53879 /* ~"...not selling Nordom to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53880 /* ~"...for selling Morte to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53881 /* ~"...for selling Annah to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53882 /* ~"...for selling Dak'kon to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53883 /* ~"...for selling Nordom to Vrischika."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53884 /* ~"...enslaving Dak'kon all these decades."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53885 /* ~"...having taught Ignus the power to harm others."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53886 /* ~"...betraying Morte and leaving him in the Pillar of Skulls."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Dead("Dakkon")
~ THEN REPLY #53887 /* ~"...Dak'kon's death."~ */ GOTO 9
  IF ~  Dead("Annah")
~ THEN REPLY #53888 /* ~"...Annah's death."~ */ GOTO 9
  IF ~  Dead("Morte")
~ THEN REPLY #53889 /* ~"...Morte's death."~ */ GOTO 9
  IF ~  Dead("Grace")
~ THEN REPLY #53890 /* ~"...Fall-from-Grace's death."~ */ GOTO 9
  IF ~  Dead("Ignus")
~ THEN REPLY #53891 /* ~"...the death of Ignus."~ */ GOTO 9
  IF ~  Dead("Nordom")
~ THEN REPLY #53892 /* ~"...Nordom's death."~ */ GOTO 9
  IF ~  Dead("Vhail")
~ THEN REPLY #53893 /* ~"...Vhailor's death."~ */ GOTO 9
  IF ~~ THEN REPLY #53894 /* ~Think of another regret...~ */ GOTO 13
  IF ~~ THEN REPLY #53895 /* ~Let the wound heal without writing on the flesh, and put the skin away.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 13.1
  SAY #53896 /* ~You whisper the words to yourself, but the regret echoes through your mind: 'I regret...'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53897 /* ~"...I didn't get to kill more people."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53898 /* ~"...not setting Coaxmetal free from the siege tower."~ */ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #53899 /* ~"...not setting Coaxmetal free from the siege tower."~ */ GOTO 9
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53900 /* ~"...setting Coaxmetal free from the siege tower."~ */ GOTO 9
  IF ~~ THEN REPLY #53903 /* ~"...having to slay Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53904 /* ~"...I wandered all over the planes when the damn portal was right here when I FIRST woke up."~ */ GOTO 9
  IF ~~ THEN REPLY #53905 /* ~Think of another regret...~ */ GOTO 13
  IF ~~ THEN REPLY #53906 /* ~Let the wound heal without writing on the flesh, and put the skin away.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 13.2
  SAY #53907 /* ~You whisper the words to yourself, but the regret echoes through your mind: 'I regret...'~ */
  IF ~~ THEN REPLY #53908 /* ~"...ever asking to become immortal."~ */ GOTO 9
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53909 /* ~"...Fin Andlye's murder. If I hadn't become immortal, that paranoid incarnation of mine never would have killed him..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #53910 /* ~"...the damage my previous incarnations have done, to themselves and to others."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~~ THEN REPLY #53911 /* ~"...the deaths I've caused, here and across the multiverse."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53912 /* ~"...lying to Deionarra to force her to accompany me on my journey."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53913 /* ~"...murdering Deionarra at the Fortress of Regrets."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53914 /* ~"...the suffering I caused Iannis by leading his daughter to her death."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53915 /* ~Think of another regret...~ */ GOTO 13
  IF ~~ THEN REPLY #53916 /* ~Let the wound heal without writing on the flesh, and put the skin away.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 13.3
  SAY #53917 /* ~You whisper the words to yourself, but the regret echoes through your mind: 'I regret...'~ */
  IF ~~ THEN REPLY #53918 /* ~"...it took *this* long to find where my mortality lies."~ */ GOTO 9
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53919 /* ~"...it took this many deaths to reach this point."~ */ GOTO 9
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53920 /* ~"...there's no one here to share this moment with me."~ */ GOTO 9
  IF ~~ THEN REPLY #53921 /* ~"...that I have no regrets to write upon this scrap of skin."~ */ GOTO 9
  IF ~~ THEN REPLY #53922 /* ~Think of another regret...~ */ GOTO 13
  IF ~~ THEN REPLY #53923 /* ~Let the wound heal without writing on the flesh, and put the skin away.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 5.10 5.11 5.12 5.13 5.14 5.15 5.16 5.17 5.18 5.19 5.20 5.21 5.22 5.23 6.0 6.1 6.2 6.3 6.4 6.5 7.0 7.1 7.2 7.3 7.4 7.5 7.6 8.0 8.1 8.2 8.3
  SAY #53924 /* ~You scrawl the regret onto the scrap of flesh... but your rapid healing forces you to stop often to re-open the cut on your finger and squeeze forth more blood. Several moments later, you have finished, your blood glistening on the scrap of skin... a combination of your flesh, your blood, and your regret.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53926 /* ~Watch the blood dry...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53927 /* ~Watch the blood dry...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53928 /* ~As you watch the bloody regret dry, a wave of cold washes over you. You look up; the black pillars to either side of the arch are glowing softly, motes of misty blue light drifting from their sides to form a shimmering curtain between them. Beyond the curtain, you can barely make out a weathered stone causeway leading into darkness.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53929 /* ~"Everybody ready?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53930 /* ~"Everybody ready?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53931 /* ~"Everybody ready?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53932 /* ~"Everybody ready?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53934 /* ~"Everybody ready?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53935 /* ~"Everybody ready?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53936 /* ~"Everybody ready?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53937 /* ~"Everybody ready?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53938 /* ~"Everybody ready?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53939 /* ~"Everybody ready?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53940 /* ~Hold the scrap of skin with your regret upon it, then step through the curtain.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53941 /* ~Hold the scrap of skin with your regret upon it, then step through the curtain.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53942 /* ~Hold the scrap of skin with your regret upon it, then step through the curtain.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53943 /* ~Leave the portal alone.~ */ EXIT
END

IF ~  PartyHasItem("SkRegret")
~ THEN BEGIN 11 // from:
  SAY #53947 /* ~As you approach the two pillars that lead to the Fortress with the skin of regrets in your hand, you feel a wave of cold, and the pillars begin glowing softly, motes of misty blue light drifting from their sides to form a shimmering curtain between them. Beyond the curtain, you can barely make out a weathered stone causeway leading into darkness.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53948 /* ~"Everybody ready?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53949 /* ~"Everybody ready?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53950 /* ~"Everybody ready?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53951 /* ~"Everybody ready?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53952 /* ~"Everybody ready?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53954 /* ~"Everybody ready?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53956 /* ~"Everybody ready?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53957 /* ~"Everybody ready?"~ */ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53958 /* ~"Everybody ready?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53959 /* ~"Everybody ready?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53960 /* ~Hold the scrap of skin with your regret upon it, then prepare to step through the curtain.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53961 /* ~Hold the scrap of skin with your regret upon it, then prepare to step through the curtain.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53962 /* ~Hold the scrap of skin with your regret upon it, then prepare to step through the curtain.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53963 /* ~Leave the portal alone.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.9 11.9
  SAY #53964 /* ~Your question is met with silence; none of your companions are close enough to hear you. ~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #53965 /* ~Hold the scrap of skin with your regret upon it, then prepare to step through the curtain.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53966 /* ~Go find your companions, then return to the portal.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.24 6.6 7.7 8.4
  SAY #53967 /* ~In the few moments you spent thinking, the cut on your finger has healed completely; you are forced to re-open the tip of your finger and squeeze forth some more blood. As you prepare to scrawl your regret, a series of images float across your mind...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53969 /* ~Regret: "I regret what happened to my companions..."~ */ GOTO 5
  IF ~~ THEN REPLY #53970 /* ~Regret: "I regret my actions..."~ */ GOTO 6
  IF ~~ THEN REPLY #53971 /* ~Regret: "I regret my past..."~ */ GOTO 7
  IF ~~ THEN REPLY #53972 /* ~Regret: "I regret events that have led up to this point..."~ */ GOTO 8
  IF ~~ THEN REPLY #53973 /* ~Put the skin away...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #66925 /* ~...but you have no room to hold the skin, and it falls to the floor.~ */
  IF ~~ THEN REPLY #66926 /* ~Turn away from the portal and pick up the skin.~ */ EXIT
END
