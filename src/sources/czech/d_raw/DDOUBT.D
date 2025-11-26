// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOUBT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOUBT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20725 /* ~Na kostech této živoucí mrtvoly už nezbývá skoro žádné maso... jen pár barevných hadrů, které jsou spíše dekorací než oblečením. Zírá do země, kroutí hlavou a zamyšleně si poklepává na tvář.~ */
  IF ~~ THEN REPLY #21891 /* ~"Zdravím tě..."~ */ GOTO 1
  IF ~~ THEN REPLY #21892 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #21883 /* ~Nevšímá si tě, jak se zdá ztracen v myšlenkách.~ */
  IF ~~ THEN REPLY #21893 /* ~"Řekl jsem, 'Zdravím tě.'"~ */ GOTO 2
  IF ~~ THEN REPLY #21894 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #21884 /* ~Vzhlíží, a jak tě vidí, vzdychne a vyfoukne trochu prachu. "Mám toho spoustu na přemýšlení, a rád bych zůstal sám."~ */
  IF ~~ THEN REPLY #21895 /* ~"Můžu ti s něčím pomoct?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21896 /* ~"Nicméně, chtěl bych se na něco zeptat."~ */ GOTO 3
  IF ~~ THEN REPLY #21897 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #21885 /* ~"Tak to máš smůlu, protože já ti nic neřeknu. Nechej mě být."~ */
  IF ~~ THEN REPLY #21898 /* ~"Počkej... můžu ti s něčím pomoci?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21899 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #21886 /* ~"Ne. Čeká mě těžké rozhodnutí, to je všechno."~ */
  IF ~~ THEN REPLY #21900 /* ~"Co je to za rozhodnutí?"~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",1)
~ JOURNAL #21902 /* ~Mluvil jsem s kostlivcem, který přemýšlel o tom, že se vzdá svého postavení nemrtvého a navždy zemře. Myslím, že Soego si s ním bude chtít promluvit.~ */ GOTO 5
  IF ~~ THEN REPLY #21901 /* ~"Aha. Tak to tě nechám přemýšlet... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21887 /* ~"Pokračovat v mém... 'životě'... tady, nebo zemřít. Konečně postoupit do Pravé smrti, o které jsem slyšel."~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21927 /* ~"Pravá smrt?"~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21928 /* ~"Může to být k něčemu dobré, však víš. Všechny bytosti by měli hledat Pravou smrt."~ */ GOTO 7
  IF ~~ THEN REPLY #21929 /* ~"Nevidím důvod, proč by jsi měl vzdávat svůj život."~ */ GOTO 7
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21930 /* ~"Myslím, že pro tebe může být čas zprostit se svého lpění na životě."~ */ GOTO 7
  IF ~~ THEN REPLY #21931 /* ~"Zanechám tě tvým myšlenkám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21888 /* ~"Úplná absence vášní, Pravá smrt je pravý život za tímto stínem bytí. Povídá se, že na toto místo se musíme dostat, abychom byli volní."~ */
  IF ~~ THEN REPLY #21932 /* ~"Nevidím důvod, proč by jsi měl vzdávat svůj život."~ */ GOTO 7
  IF ~~ THEN REPLY #21933 /* ~"Myslím, že pro tebe může být čas zprostit se svého lpění na životě."~ */ GOTO 7
  IF ~~ THEN REPLY #21934 /* ~"Zanechám tě tvým myšlenkám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 5.3 6.0 6.1
  SAY #21889 /* ~"Vezmu tvoje slova v úvahu. Teď mě prosím nechej o samotě s mými myšlenkami. Sbohem."~ */
  IF ~~ THEN REPLY #21935 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #21890 /* ~Tento kostlivec vypadá utrápeně, kroutí hlavou a mumlá si pro sebe.~ */
  IF ~~ THEN REPLY #21936 /* ~"Zdravím tě..."~ */ GOTO 1
  IF ~~ THEN REPLY #21937 /* ~Nechej kostlivce být.~ */ EXIT
END
