// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D0202P.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D0202P~

IF ~  !PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 0 // from:
  SAY #36382 /* ~Irgend etwas ist mit dem Torbogen vor dir... etwas, das dir auf unheimliche Weise bekannt vorkommt. Eine Kälte, die dir die Knochen einfriert, steht zwischen diesen beiden schwarzen Säulen in der Luft, als ob der Torbogen selbst an einen anderen, kälteren Raum grenzte. Aus irgendeinem Grund WEISST du, daß dies das Portal zur Festung der Reue ist... Nun mußt du es nur noch öffnen.~ */
  IF ~~ THEN REPLY #36383 /* ~Beiß die Zähne zusammen und pell die Haut von deinem linken Unterarm...~ */ DO ~GiveItemCreate("SkScrap",Protagonist,1,0,0)
~ GOTO 1
  IF ~~ THEN REPLY #36384 /* ~Laß das Portal in Ruhe... für den Augenblick.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53637 /* ~Du beißt die Zähne zusammen und gräbst deine Fingernägel in deinen linken Unterarm. Mit einem trockenen, reißenden Geräusch ziehst du einen Streifen Haut ab. Die Kälte zwischen den Säulen wird stärker, fast fordernd, als hätte sich das Portal einen Spaltbreit geöffnet...~ */
  IF ~  !PartyHasItem("SkScrap")
~ THEN GOTO 14
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66928 /* ~Untersuche die Haut...~ */ GOTO 3
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66929 /* ~Laß das Portal in Ruhe... für den Augenblick.~ */ EXIT
END

IF ~  PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 2 // from:
  SAY #53640 /* ~Wieder stehst du vor dem Bogen, eine schneidende Kälte erfüllt die Luft zwischen diesen beiden schwarzen Pfeilern, als würde das Portal zu einem anderen, kälteren Raum führen. Dies ist das Portal zur Festung der Reue... Jetzt mußt du nur noch dein Reuebekenntnis auf den Hautfetzen schreiben, den du dir vom Arm gerissen hast.~ */
  IF ~~ THEN REPLY #53641 /* ~Stich in deinen linken Zeigefinger und schreib mit dem Blut etwas, das du bereust, auf den Fleischfetzen...~ */ GOTO 4
  IF ~~ THEN REPLY #53642 /* ~Laß das Portal in Ruhe... für den Augenblick.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #53643 /* ~Dieser Hautfetzen wurde von der Rückseite deines linken Unterarms abgeschält. Seine narbige, graue Oberfläche erinnert dich an die Haut eines Zombies. Er fühlt sich eher wie ein Stück gegerbtes Leder als wie ein Streifen Haut an. ~ */
  IF ~~ THEN REPLY #53644 /* ~Stich in deinen linken Zeigefinger und schreib mit dem Blut etwas, das du bereust, auf den Fleischfetzen...~ */ GOTO 4
  IF ~~ THEN REPLY #53645 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #53646 /* ~Du stichst dir in die Spitze deines Zeigefingers, und bevor die Wunde verheilen kann, preßt du einige Tropfen Blut heraus. Als du ansetzt, dein Reuebekenntnis zu kritzeln, gehen dir verschiedene Bilder durch den Kopf...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53647 /* ~Bereue: "Ich bereue, was meinen Kameraden zugestoßen ist..."~ */ GOTO 5
  IF ~~ THEN REPLY #53648 /* ~Bereue: "Ich bereue meine Taten..."~ */ GOTO 6
  IF ~~ THEN REPLY #53649 /* ~Bereue: "Ich bereue meine Vergangenheit..."~ */ GOTO 7
  IF ~~ THEN REPLY #53650 /* ~Bereue: "Ich bereue die Ereignisse, die zu all dem hier geführt haben..."~ */ GOTO 8
  IF ~~ THEN REPLY #53651 /* ~Laß die Wunde heilen, ohne auf das Fleisch zu schreiben, und lege die Haut beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 13.0
  SAY #53653 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53655 /* ~"...alle meine Kameraden mußten leiden, damit ich es hierher schaffen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53869 /* ~"...daß ich versucht habe, Morte an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53870 /* ~"...daß ich versucht habe, Annah an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53871 /* ~"...daß ich versucht habe, Dak'kon an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53872 /* ~"...daß ich versucht habe, Grace, die Gefallene, an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53873 /* ~"...daß ich versucht habe, Nordom an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53874 /* ~"...daß ich Morte nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53875 /* ~"...daß ich Annah nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53878 /* ~"...daß ich Dak'kon nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53879 /* ~"...daß ich Nordom nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53880 /* ~"...daß ich Morte an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53881 /* ~"...daß ich Annah an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53882 /* ~"...daß ich Dak'kon an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53883 /* ~"...daß ich Nordom an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53884 /* ~"...daß ich Dak'kon all diese Jahrzehnte versklavt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53885 /* ~"...daß ich Ignus beigebracht habe, anderen zu schaden."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53886 /* ~"...daß ich Morte verraten und ihn der Schädelsäule überlassen habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Dead("Dakkon")
~ THEN REPLY #53887 /* ~"...Dak'kons Tod."~ */ GOTO 9
  IF ~  Dead("Annah")
~ THEN REPLY #53888 /* ~"...Annahs Tod."~ */ GOTO 9
  IF ~  Dead("Morte")
~ THEN REPLY #53889 /* ~"...Mortes Tod."~ */ GOTO 9
  IF ~  Dead("Grace")
~ THEN REPLY #53890 /* ~"...den Tod von Grace, der Gefallenen."~ */ GOTO 9
  IF ~  Dead("Ignus")
~ THEN REPLY #53891 /* ~"...den Tod von Ignus."~ */ GOTO 9
  IF ~  Dead("Nordom")
~ THEN REPLY #53892 /* ~"...Nordoms Tod."~ */ GOTO 9
  IF ~  Dead("Vhail")
~ THEN REPLY #53893 /* ~"...Vhailors Tod."~ */ GOTO 9
  IF ~~ THEN REPLY #53894 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 13
  IF ~~ THEN REPLY #53895 /* ~Laß die Wunde heilen, ohne auf das Fleisch zu schreiben, und lege die Haut beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 13.1
  SAY #53896 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53897 /* ~"...daß ich nicht mehr Leute umbringen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53898 /* ~"...daß ich Coaxmetall nicht aus dem Belagerungsturm befreit habe."~ */ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #53899 /* ~"...daß ich Coaxmetall nicht aus dem Belagerungsturm befreit habe."~ */ GOTO 9
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53900 /* ~"...daß ich Coaxmetall aus dem Belagerungsturm befreit habe."~ */ GOTO 9
  IF ~~ THEN REPLY #53903 /* ~"...daß ich Ravel umbringen mußte."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53904 /* ~"...daß ich über die ganzen Ebenen gewandert bin, wo das Portal genau hier war, wo ich ANFANGS aufgewacht bin."~ */ GOTO 9
  IF ~~ THEN REPLY #53905 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 13
  IF ~~ THEN REPLY #53906 /* ~Laß die Wunde heilen, ohne auf das Fleisch zu schreiben, und lege die Haut beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 13.2
  SAY #53907 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~~ THEN REPLY #53908 /* ~"...daß ich darum gebeten habe, unsterblich zu werden."~ */ GOTO 9
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53909 /* ~"...den Mord an Fin Andlye. Wenn ich nicht unsterblich geworden wäre, dann hätte diese paranoide Inkarnation von mir ihn nie getötet..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #53910 /* ~"...die Schäden, die meine früheren Inkarnationen angerichtet haben, sich selbst und anderen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~~ THEN REPLY #53911 /* ~"...die Tode, für die ich verantwortlich bin, hier und im ganzen Multiversum."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53912 /* ~"...daß ich Deionarra angelogen habe, damit sie mich auf meiner Reise begleitet."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53913 /* ~"...daß ich Deionarra in der Festung der Reue ermordet habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53914 /* ~"...das Leid, das ich über Jannis gebracht habe, indem ich seine Tochter in den Tod gestürzt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53915 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 13
  IF ~~ THEN REPLY #53916 /* ~Laß die Wunde heilen, ohne auf das Fleisch zu schreiben, und lege die Haut beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 13.3
  SAY #53917 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~~ THEN REPLY #53918 /* ~"...daß ich *so* lange gebraucht habe, um meine Sterblichkeit zu finden."~ */ GOTO 9
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53919 /* ~"...daß es so viele Leben gekostet hat, hierher zu kommen."~ */ GOTO 9
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53920 /* ~"...daß niemand hier ist, mit dem ich diesen Augenblick teilen kann."~ */ GOTO 9
  IF ~~ THEN REPLY #53921 /* ~"...daß ich keine Reue besitze, die ich auf diesen Hautfetzen schreiben kann."~ */ GOTO 9
  IF ~~ THEN REPLY #53922 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 13
  IF ~~ THEN REPLY #53923 /* ~Laß die Wunde heilen, ohne auf das Fleisch zu schreiben, und lege die Haut beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 5.10 5.11 5.12 5.13 5.14 5.15 5.16 5.17 5.18 5.19 5.20 5.21 5.22 5.23 6.0 6.1 6.2 6.3 6.4 6.5 7.0 7.1 7.2 7.3 7.4 7.5 7.6 8.0 8.1 8.2 8.3
  SAY #53924 /* ~Du kritzelst dein Reuebekenntnis auf den Fleischfetzen... Aber deine schnelle Heilfähigkeit zwingt dich, die Wunde an deinem Finger wieder und wieder zu öffnen, um mehr Blut herauszupressen. Wenig später bist du fertig, und dein Blut glänzt auf dem Fleischfetzen... eine Mischung aus deinem Fleisch, deinem Blut und deiner Reue.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53926 /* ~Sieh zu, wie das Blut trocknet...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53927 /* ~Sieh zu, wie das Blut trocknet...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53928 /* ~Während das blutige Reuebekenntnis trocknet, umfährt dich ein kalter Windhauch. Du blickst auf. Die schwarzen Pfeiler zu beiden Seiten des Bogens glühen leicht, Stäubchen aus neblig-blauem Licht schweben aus ihrer Seite und bilden einen funkelnden Vorhang zwischen ihnen. Hinter dem Vorhang kannst du einen verwitterten, steinernen Pfad erahnen, der in die Dunkelheit führt.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53929 /* ~"Alle Mann fertig?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53930 /* ~"Alle Mann fertig?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53931 /* ~"Alle Mann fertig?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53932 /* ~"Alle Mann fertig?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53934 /* ~"Alle Mann fertig?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53935 /* ~"Alle Mann fertig?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53936 /* ~"Alle Mann fertig?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53937 /* ~"Alle Mann fertig?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
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
~ THEN REPLY #53938 /* ~"Alle Mann fertig?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53939 /* ~"Alle Mann fertig?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53940 /* ~Halte den Hautfetzen mit deinem Bedauern drauf fest, geh dann durch den Vorhang.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53941 /* ~Halte den Hautfetzen mit deinem Bedauern drauf fest, geh dann durch den Vorhang.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53942 /* ~Halte den Hautfetzen mit deinem Bedauern drauf fest, geh dann durch den Vorhang.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53943 /* ~Laß das Portal in Ruhe.~ */ EXIT
END

IF ~  PartyHasItem("SkRegret")
~ THEN BEGIN 11 // from:
  SAY #53947 /* ~Als du auf die zwei Pfeiler zugehst, die in die Festung führen, die Haut mit deinem Reuebekenntnis in der Hand, spürst du einen kalten Luftzug, und die Pfeiler beginnen, leicht zu glühen. Stäubchen aus neblig-blauem Licht schweben aus ihrer Seite und bilden einen funkelnden Vorhang zwischen ihnen. Hinter dem Vorhang kannst du einen verwitterten, steinernen Pfad erahnen, der in die Dunkelheit führt.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53948 /* ~"Alle Mann fertig?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53949 /* ~"Alle Mann fertig?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53950 /* ~"Alle Mann fertig?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53951 /* ~"Alle Mann fertig?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53952 /* ~"Alle Mann fertig?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53954 /* ~"Alle Mann fertig?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53956 /* ~"Alle Mann fertig?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53957 /* ~"Alle Mann fertig?"~ */ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53958 /* ~"Alle Mann fertig?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53959 /* ~"Alle Mann fertig?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53960 /* ~Halte den Hautfetzen mit deinem Reuebekenntnis in der Hand und bereite dich darauf vor, durch den Vorhang zu gehen.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53961 /* ~Halte den Hautfetzen mit deinem Reuebekenntnis in der Hand und bereite dich darauf vor, durch den Vorhang zu gehen.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53962 /* ~Halte den Hautfetzen mit deinem Reuebekenntnis in der Hand und bereite dich darauf vor, durch den Vorhang zu gehen.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53963 /* ~Laß das Portal in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.9 11.9
  SAY #53964 /* ~Deine Frage stößt auf Schweigen. Keiner deiner Begleiter ist nahe genug, um dich zu hören. ~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #53965 /* ~Halte den Hautfetzen mit deinem Reuebekenntnis in der Hand und bereite dich darauf vor, durch den Vorhang zu gehen.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53966 /* ~Geh deine Begleiter suchen und komm dann zum Portal zurück.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.24 6.6 7.7 8.4
  SAY #53967 /* ~In den wenigen Augenblicken, in denen du nachgedacht hast, ist die Wunde an deinem Finger völlig verheilt. Du mußt dir erneut in die Fingerspitze stechen und noch etwas Blut herauspressen. Als du gerade dein Reuebekenntnis schreiben willst, gehen dir verschiedene Bilder durch den Kopf... ~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53969 /* ~Bereue: "Ich bereue, was meinen Kameraden zugestoßen ist..."~ */ GOTO 5
  IF ~~ THEN REPLY #53970 /* ~Bereue: "Ich bereue meine Taten..."~ */ GOTO 6
  IF ~~ THEN REPLY #53971 /* ~Bereue: "Ich bereue meine Vergangenheit..."~ */ GOTO 7
  IF ~~ THEN REPLY #53972 /* ~Bereue: "Ich bereue die Ereignisse, die zu all dem hier geführt haben..."~ */ GOTO 8
  IF ~~ THEN REPLY #53973 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #66925 /* ~...aber du hast keinen Platz, um die Haut zu halten, und sie fällt zu Boden.~ */
  IF ~~ THEN REPLY #66926 /* ~Wende dich vom Portal ab, und heb die Haut auf.~ */ EXIT
END
