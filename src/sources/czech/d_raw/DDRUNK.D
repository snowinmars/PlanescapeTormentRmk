// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9710 /* ~Tenhle muž je opilý na mol. Málem nedokáže ani stát, natož s tebou mluvit. Páchne chlastem, zvratky a zaschlou močí.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #9807 /* ~"Mám pro tebe nějaké otázky..."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #9809 /* ~"Mám pro tebe nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #9811 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9792 /* ~Ožrala tě vnímá jenom na půl ucha. Dívá se kolem sebe, je zmatený, snaží se odhalit zdroj tvého hlasu. Všiml sis, že Annah ho pomalu obchází, nejspíš hledá jeho peněženku.~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #9813 /* ~"Annah... nech toho."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 75
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #9816 /* ~"Annah... nech toho."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 76
  IF ~~ THEN REPLY #9819 /* ~Zatřes s ním, abys získal jeho pozornost.~ */ GOTO 4
  IF ~~ THEN REPLY #9824 /* ~Nechej ho být.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 77
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #9793 /* ~Ožrala tě vnímá jenom na půl ucha. Dívá se kolem sebe, je zmatený, snaží se odhalit zdroj tvého hlasu.~ */
  IF ~~ THEN REPLY #9828 /* ~Zatřes s ním, abys získal jeho pozornost.~ */ GOTO 3
  IF ~~ THEN REPLY #9830 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9795 /* ~"Huh, huh? Whuh? Bluuueeeeee!" Náhle začal prudce zvracet, uskočil jsi, aby tě nepostříkal. Z téhle zapáchající trosky nic užitečného nedostaneš.~ */
  IF ~~ THEN REPLY #9832 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #9796 /* ~"Huh, huh? Whuh? Bluuueeeeee!" Náhle začal prudce zvracet, ty i Annah jste uskočili, aby vás nepostříkal. Z téhle zapáchající trosky nic užitečného nedostaneš.~ */
  IF ~~ THEN REPLY #9834 /* ~Nechej ho být.~ */ EXIT
END
