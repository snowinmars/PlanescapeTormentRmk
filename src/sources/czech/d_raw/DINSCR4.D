// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38103 /* ~Myslím, že budeme stále umírat a vstávat z mrtvých, dokud konečně nevrátíme svůj život na správnou cestu. Jak zařídit, aby to nastalo, nevím. A to mne neustále trápí.
~ */
  IF ~~ THEN REPLY #53714 /* ~Pokračuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53715 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53716 /* ~Je to nějaký karmický cyklus? Jak jsem zjistil, některé inkarnace spáchaly hrozivé zločiny, ale bylo tady také mnoho inkarnací, které konaly pouze dobro. Jsou tyhle inkarnace zamýšlené jako trest? Nevím. A to je jediná pravda, kterou mohou tyto rytiny nabídnout: Já nevím.~ */
  IF ~~ THEN REPLY #53717 /* ~Pokračuj.~ */ GOTO 2
  IF ~~ THEN REPLY #53718 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53719 /* ~Ve kterém bodě se *já* odděluje od *my*? Ve kterém bodě jsem uvolněn od pozůstatků činů ostatních inkarnací? Ve kterém bodě budu moci být *já*, bez zátěže těch minulých životů?"~ */
  IF ~  Global("Inscr_4","GLOBAL",0)
~ THEN REPLY #53720 /* ~Prozkoumej panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53721 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53722 /* ~Panel je kvalitně udělaný, rozhodně práce mistra. Máš pocit, že by se dal zatlačit do zdi.~ */
  IF ~~ THEN REPLY #53723 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_4","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53724 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53725 /* ~Panel hladce zajel do zdi. Ze sarkofágu za tebou slyšíš cvaknutí.~ */
  IF ~~ THEN REPLY #53726 /* ~Odvrať se od nápisu.~ */ EXIT
END
