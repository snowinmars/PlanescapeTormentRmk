// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKSCRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~SKSCRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52402 /* ~Dieser Hautfetzen wurde von der Rückseite deines linken Unterarms abgeschält. Seine narbige, graue Oberfläche erinnert dich an die Haut eines Zombies. Er fühlt sich eher wie ein Stück gegerbtes Leder als wie ein Streifen Haut an. ~ */
  IF ~~ THEN REPLY #52403 /* ~Stich in deinen linken Zeigefinger und schreib mit dem Blut etwas, das du bereust, auf den Fleischfetzen...~ */ GOTO 1
  IF ~~ THEN REPLY #53254 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53255 /* ~Du stichst dir in die Spitze des Zeigefingers, und bevor die Wunde heilen kann, quetschst du einige Tropfen Blut heraus. Als du dazu ansetzt, dein Reuebekenntnis zu kritzeln, gehen dir verschiedene Bilder durch den Kopf.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53256 /* ~Bereue: "Ich bereue, was meinen Kameraden zugestoßen ist..."~ */ GOTO 2
  IF ~~ THEN REPLY #53257 /* ~Bereue: "Ich bereue meine Taten..."~ */ GOTO 3
  IF ~~ THEN REPLY #53258 /* ~Bereue: "Ich bereue meine Vergangenheit..."~ */ GOTO 4
  IF ~~ THEN REPLY #53259 /* ~Bereue: "Ich bereue die Ereignisse, die zu all dem hier geführt haben..."~ */ GOTO 5
  IF ~~ THEN REPLY #53260 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0
  SAY #53261 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53262 /* ~"...alle meine Kameraden mußten leiden, damit ich es hierher schaffen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53263 /* ~"...daß ich versucht habe, Morte an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53264 /* ~"...daß ich versucht habe, Annah an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53265 /* ~"...daß ich versucht habe, Dak'kon an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53266 /* ~"...daß ich versucht habe, Grace, die Gefallene, an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53267 /* ~"...daß ich versucht habe, Nordom an Vrischika zu verkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53268 /* ~"...daß ich Morte nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53269 /* ~"...daß ich Annah nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53270 /* ~"...daß ich Dak'kon nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53271 /* ~"...daß ich Nordom nicht an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53272 /* ~"...daß ich Morte an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53273 /* ~"...daß ich Annah an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53274 /* ~"...daß ich Dak'kon an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53275 /* ~"...daß ich Nordom an Vrischika verkauft habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53276 /* ~"...daß ich Dak'kon all diese Jahrzehnte versklavt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53277 /* ~"...daß ich Ignus beigebracht habe, anderen zu schaden."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53278 /* ~"...daß ich Morte verraten und ihn der Schädelsäule überlassen habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Dead("Dakkon")
~ THEN REPLY #53279 /* ~"...Dak'kons Tod."~ */ GOTO 6
  IF ~  Dead("Annah")
~ THEN REPLY #53280 /* ~"...Annahs Tod."~ */ GOTO 6
  IF ~  Dead("Morte")
~ THEN REPLY #53281 /* ~"...Mortes Tod."~ */ GOTO 6
  IF ~  Dead("Grace")
~ THEN REPLY #53282 /* ~"...den Tod von Grace, der Gefallenen."~ */ GOTO 6
  IF ~  Dead("Ignus")
~ THEN REPLY #53283 /* ~"...den Tod von Ignus."~ */ GOTO 6
  IF ~  Dead("Nordom")
~ THEN REPLY #53284 /* ~"...Nordoms Tod."~ */ GOTO 6
  IF ~  Dead("Vhail")
~ THEN REPLY #53286 /* ~"...Vhailors Tod."~ */ GOTO 6
  IF ~~ THEN REPLY #53287 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 7
  IF ~~ THEN REPLY #53288 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #53289 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53290 /* ~"...daß ich nicht mehr Leute umbringen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53291 /* ~"...daß ich Coaxmetall nicht aus dem Belagerungsturm befreit habe."~ */ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #68188 /* ~"...daß ich Coaxmetall nicht aus dem Belagerungsturm befreit habe."~ */ GOTO 6
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53292 /* ~"...daß ich Coaxmetall aus dem Belagerungsturm befreit habe."~ */ GOTO 6
  IF ~~ THEN REPLY #53295 /* ~"...daß ich Ravel umbringen mußte."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53297 /* ~"...daß ich über die ganzen Ebenen gewandert bin, wo das Portal genau hier war, wo ich ANFANGS aufgewacht bin."~ */ GOTO 6
  IF ~~ THEN REPLY #53298 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 7
  IF ~~ THEN REPLY #53299 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #53300 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~~ THEN REPLY #53301 /* ~"...daß ich darum gebeten habe, unsterblich zu werden."~ */ GOTO 6
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53302 /* ~"...den Mord an Fin Andlye. Wenn ich nicht unsterblich geworden wäre, dann hätte diese paranoide Inkarnation von mir ihn nie getötet..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #53303 /* ~"...die Schäden, die meine früheren Inkarnationen angerichtet haben, sich selbst und anderen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~~ THEN REPLY #53304 /* ~"...die Tode, für die ich verantwortlich bin, hier und im ganzen Multiversum."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53305 /* ~"...daß ich Deionarra angelogen habe, damit sie mich auf meiner Reise begleitet."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53306 /* ~"...daß ich Deionarra in der Festung der Reue ermordet habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53307 /* ~"...das Leid, das ich über Jannis gebracht habe, indem ich seine Tochter in den Tod gestürzt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53308 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 7
  IF ~~ THEN REPLY #53309 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #53310 /* ~Du flüsterst dir die Worte selbst zu, doch das Reuebekenntnis hallt in deinem Kopf wieder: 'Ich bereue...'~ */
  IF ~~ THEN REPLY #53311 /* ~"...daß ich *so* lange gebraucht habe, um meine Sterblichkeit zu finden."~ */ GOTO 6
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53312 /* ~"...daß es so viele Leben gekostet hat, hierher zu kommen."~ */ GOTO 6
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53313 /* ~"...daß niemand hier ist, mit dem ich diesen Augenblick teilen kann."~ */ GOTO 6
  IF ~~ THEN REPLY #53314 /* ~"...daß ich keine Reue besitze, die ich auf diesen Hautfetzen schreiben kann."~ */ GOTO 6
  IF ~~ THEN REPLY #53315 /* ~Überleg dir ein anderes Reuebekenntnis...~ */ GOTO 7
  IF ~~ THEN REPLY #53316 /* ~Leg die Haut weg...~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 2.11 2.12 2.13 2.14 2.15 2.16 2.17 2.18 2.19 2.20 2.21 2.22 2.23 3.0 3.1 3.2 3.3 3.4 3.5 4.0 4.1 4.2 4.3 4.4 4.5 4.6 5.0 5.1 5.2 5.3
  SAY #53317 /* ~Du kritzelst dein Reuebekenntnis auf den Fleischfetzen... Aber deine schnelle Heilfähigkeit zwingt dich, die Wunde an deinem Finger wieder und wieder zu öffnen, um mehr Blut herauszupressen. Wenig später bist du fertig, und dein Blut glänzt auf dem Fleischfetzen... eine Mischung aus deinem Fleisch, deinem Blut und deiner Reue.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53318 /* ~"Das sollte wohl reichen..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ EXIT
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53319 /* ~"Das sollte wohl reichen..."~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.24 3.6 4.7 5.4
  SAY #53320 /* ~In der kurzen Zeit, in der du nachgedacht hast, ist der Schnitt in deinem Finger völlig verheilt. Du mußt die Wunde noch einmal öffnen, um mehr Blut herauszupressen. Als du gerade dein Reuebekenntnis kritzeln willst, gehen dir verschiedene Bilder durch den Kopf...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53321 /* ~Bereue: "Ich bereue, was meinen Kameraden zugestoßen ist..."~ */ GOTO 2
  IF ~~ THEN REPLY #53322 /* ~Bereue: "Ich bereue meine Taten..."~ */ GOTO 3
  IF ~~ THEN REPLY #53323 /* ~Bereue: "Ich bereue meine Vergangenheit..."~ */ GOTO 4
  IF ~~ THEN REPLY #53324 /* ~Bereue: "Ich bereue die Ereignisse, die zu all dem hier geführt haben..."~ */ GOTO 5
  IF ~~ THEN REPLY #53325 /* ~Leg die Haut weg...~ */ EXIT
END
