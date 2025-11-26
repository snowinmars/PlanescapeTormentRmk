// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DADABUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50108 /* ~Vidíš vysokou bytost s chomáčem bílých vlasů. Její kůže má zelený nádech a z čela jí vystupuje dvojice rohů. Je oblečena do dlouhého volného roucha a vypadá to, jako by se vznášela kousek nad zemí.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50109 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #50303 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50318 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #50330 /* ~Nechej tvora být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50110 /* ~Tvor se otočil tváří k tobě a nad hlavou se mu objevila řada symbolů. Symboly mezi sebou mají lehkou záři a jen se tam... vznáší.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 235
END

IF ~~ THEN BEGIN 2 // from:
  SAY #50119 /* ~Dabus trpělivě čeká s rukama zastrčenýma do rukávů. Nad jeho hlavou se zhmotnila skupina symbolů, pak opět zmizela a objevil se otazník.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50120 /* ~Pokus se navázat konverzaci, abys zjistil, zda dokážeš přeložit, co říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50259 /* ~Pokus se navázat konverzaci, abys zjistil, zda dokážeš přeložit, co říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50260 /* ~Zkus mluvit s dabusem, abys zjistil, zda mu dokážeš porozumět.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50290 /* ~"Měl bych pro tebe pár otázek..."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50291 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50292 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50293 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50294 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50295 /* ~"Annah, můžeš překládat, co mi říká?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50296 /* ~"Dak'kone, můžeš překládat, co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50297 /* ~"Fall-from-Grace, můžeš překládat, co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50298 /* ~"Je mi líto, nerozumím ti."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~~ THEN REPLY #50299 /* ~"Uch... sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1 20.0 20.1
  SAY #50121 /* ~Položil jsi dabusovi několik otázek, ve snaze přijít na kloub rébusům, které se objevují nad jeho hlavou. Během vašeho 'rozhovoru' je neobyčejně trpělivý a dává ti k překladu jednoduché věty. Po několika minutách jsi je začal chápat... máš dojem, jako bys to už kdysi dělal.~ */
  IF ~~ THEN REPLY #50122 /* ~"Možná bys mi mohl pomoci..."~ */ GOTO 4
  IF ~~ THEN REPLY #50258 /* ~"Jen jsem se chtěl pocvičit v rébusech. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.3 3.0 5.0 7.0 8.0 9.0 10.2 20.3
  SAY #50123 /* ~Dabus čeká.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50124 /* ~"Kdo jsi?"~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50130 /* ~"Co děláš?"~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50135 /* ~"Kdo jsi?"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50139 /* ~"Co děláš?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #50144 /* ~"Můžeš mi povědět o Paní Bolesti?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #50256 /* ~"Můžeš mi povědět o Fellovi?"~ */ DO ~FloatRebus(Myself)
~ GOTO 17
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #50257 /* ~"Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #50125 /* ~Dabus trochu sehnul hlavu a nad ní se objevila záplava symbolů. Domníváš se, že řekl, že je dabus.~ */
  IF ~~ THEN REPLY #50126 /* ~"Měl bych pro tebe jinou otázku."~ */ GOTO 4
  IF ~~ THEN REPLY #50127 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.12 3.1 4.8 5.1 7.1 7.2 8.1 9.1 9.2 10.3 18.10 20.16
  SAY #50128 /* ~Dabus se nepatrně uklonil. Nad jeho hlavou zavířily symboly a pak se otočil.~ */
  IF ~~ THEN REPLY #50129 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #50131 /* ~Nad dabusovou hlavou se objevil houf symbolů. Myslíš, že říká, že se věnuje své povinnosti... nebo povinnostem. ~ */
  IF ~~ THEN REPLY #50132 /* ~"Měl bych pro tebe jinou otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #50133 /* ~"Velmi vysvětlující. Díky. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50134 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #50136 /* ~Dabus trochu sehnul hlavu a nad ní se objevila záplava symbolů. (Jsem dabus.)~ */
  IF ~~ THEN REPLY #50137 /* ~"Měl bych pro tebe jinou otázku."~ */ GOTO 4
  IF ~~ THEN REPLY #50138 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #50140 /* ~Nad dabusovou hlavou se objevil houf symbolů. (Věnuji se svým povinnostem.)~ */
  IF ~~ THEN REPLY #50141 /* ~"Měl bych pro tebe jinou otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #50142 /* ~"Velmi vysvětlující. Díky. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50143 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY #50145 /* ~Nad dabusovou hlavou se objevil jediný symbol. Ten symbol ukazuje kovovou ženskou masku s čepelemi kolem jejích okrajů. Už jen pohled na ten přízračný obraz tě znepokojuje.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50146 /* ~"Uch... to není zrovna odpověď, jakou jsem čekal."~ */ EXTERN ~DGRACE~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50253 /* ~"Uch... aha. Dak'kone, můžeš mu dát jinou otázku?"~ */ EXTERN ~DDAKKON~ 165
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50254 /* ~"Uch... měl bych pro tebe jinou otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #50255 /* ~"Uch... to je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from:
  SAY #50151 /* ~Dabus trochu sehnul hlavu a nad ní se objevila záplava symbolů.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50152 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50236 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50237 /* ~"Dak'kone, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50238 /* ~"Grace, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50158 /* ~Dabus trochu sehnul hlavu a nad ní se objevila záplava symbolů. Domníváš se, že řekl, že je dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50159 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50160 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50167 /* ~"Dak'kone, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50212 /* ~"Grace, co říkal?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50174 /* ~Dabus trochu sehnul hlavu a nad ní se objevila záplava symbolů. (Jsem dabus.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50175 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50176 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50177 /* ~"Dak'kone, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50178 /* ~"Grace, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50183 /* ~Nad dabusovou hlavou se objevil shluk symbolů.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50184 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50188 /* ~"Dak'kone, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50192 /* ~"Grace, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50197 /* ~Nad dabusovou hlavou se objevil houf symbolů. Myslíš, že říká, že se věnuje své povinnosti... nebo povinnostem.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50198 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50199 /* ~"Dak'kone, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50200 /* ~"Grace, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 16 // from:
  SAY #50202 /* ~Nad dabusovou hlavou se objevil houf symbolů. (Věnuji se svým povinnostem.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50203 /* ~"Annah, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50204 /* ~"Dak'kone, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50205 /* ~"Grace, co řekl?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 17 // from: 4.5
  SAY #50208 /* ~Nad dabusovou hlavou se objevil jediný symbol. Je to bílý ovál rozdělený klínem černého blesku. Dabus nechal symbol chvilku plout, pak se otočil a ignoruje tě.~ */
  IF ~~ THEN REPLY #50209 /* ~"Uch... tak sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2 20.2
  SAY #50261 /* ~Položil jsi dabusovi několik otázek, ve snaze přijít na kloub rébusům, které se objevují nad jeho hlavou. Ačkoliv byl během vašeho 'rozhovoru' neobyčejně trpělivý, nezdá se, že bys ses chytil. Nakonec dabus přestal vysílat symboly a prostě čeká.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50262 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50265 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50268 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50271 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50274 /* ~"Annah, můžeš překládat, co mi říká?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50284 /* ~"Dak'kone, můžeš překládat, co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50285 /* ~"Fall-from-Grace, můžeš překládat, co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50286 /* ~"Je mi líto, nerozumím ti."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #50289 /* ~"Uch... sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 2.11 18.7 20.6
  SAY #50287 /* ~Nad dabusovou hlavou se objevila řada symbolů. Pak se uklonil a otočil.~ */
  IF ~~ THEN REPLY #50288 /* ~"Uch... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.1 22.0
  SAY #50304 /* ~Otočil se tváří k tobě a nad hlavou se mu objevila řada symbolů. Symboly mezi sebou lehce září a jen se tam... vznáší.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50305 /* ~Pokus se navázat konverzaci, abys zjistil, zda dokážeš přeložit, co ten tvor říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50306 /* ~Pokus se navázat konverzaci, abys zjistil, zda dokážeš přeložit, co ten tvor říká.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50307 /* ~Zkus s ním promluvit, abys zjistil, zda mu dokážeš porozumět.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50308 /* ~"Měl bych pro tebe pár otázek..."~ */ GOTO 4
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50309 /* ~"Je mi líto... Nerozumím ti."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50310 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50311 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50312 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50313 /* ~"Morte, můžeš překládat, co mi říká?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50314 /* ~"Annah, můžeš překládat, co mi říká?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50315 /* ~"Dak'noe, můžeš překládat, co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50316 /* ~"Fall-from-Grace, můžeš překládat, co mi říká?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50317 /* ~"Ne, nic. Promiň, že jsem vyrušoval. Sbohem."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY #50319 /* ~Tvor se otočil tváří k tobě a nad hlavou se mu objevila řada symbolů. Symboly mezi sebou lehce září a jen se tam... vznáší.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 496
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 22 // from:
  SAY #50331 /* ~Vidíš dabuse. Je oblečen do dlouhého volného roucha a vznáší se mírně nad zemí.~ */
  IF ~~ THEN REPLY #50332 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #50333 /* ~Nechej dabuse být.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Pregnant_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #50334 /* ~Vidíš dabuse. Je oblečen do dlouhého volného roucha a vznáší se mírně nad zemí.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50340 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50341 /* ~"Zdravím."~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~~ THEN REPLY #50342 /* ~Nechej dabuse být.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #50335 /* ~Otočil se k tobě a nad hlavou se mu objevila řada symbolů. (Musím se věnovat svým povinnostem. Nemám čas mluvit.)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50343 /* ~"Rozumím. Jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61176 /* ~"Rozumím. Možná bys měl vědět, že jsem v Uličce objevil tělo Dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #61177 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.6 4.7 20.4 20.5 24.0 24.1
  SAY #50336 /* ~Dabus trochu naklonil hlavu na jednu stranu. Nad jeho hlavou se objevil příval symbolů, většina z nich spíše než slova označovala údiv a tíseň. (Mrtvý? Kde?)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50345 /* ~Pravda: "Leží v té opuštěné budově nedaleko odsud. Zdá se, že tam byl nějak uvězněn."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50346 /* ~Lež: "Leží v té opuštěné budově nedaleko odsud. Nevím, jak zemřel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61178 /* ~"Leží v opuštěné budově nedaleko odsud. Nevím jak zemřel."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2 28.0 28.1 28.2
  SAY #50337 /* ~Dabus na tebe krátce zíral, pak se nepatrně naklonil a odplul směrem k opuštěné budově.~ */
  IF ~~ THEN REPLY #50347 /* ~"Sbohem."~ */ DO ~SetGlobal("Dabus_Trap","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #50338 /* ~Otočil se tváří k tobě a nad hlavou se mu objevila řada symbolů. Symboly mezi sebou lehce září a jen se tam... vznáší.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uch... jen jsem myslel, že bys měl vědět, že jsem tady v Uličce objevil tělo nějakého dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61165 /* ~"Uh... jen jsem myslel že bys měl vědět o tom, že jsem v Uličce objevil tělo Dabuse."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #61169 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.8 18.9 20.7 20.8 27.0 27.1
  SAY #50339 /* ~Dabus trochu naklonil hlavu na jednu stranu. Nad jeho hlavou se objevilo množství symbolů. Ačkoliv nedokážeš rozluštit, co říká, přece sis všiml, že je zpráva přerušována jasně probleskujícím otazníkem.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50350 /* ~Pravda: "Leží v té opuštěné budově nedaleko odsud. Zdá se, že tam byl nějak uvězněn."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50351 /* ~Lež: "Leží v té opuštěné budově nedaleko odsud. Nevím, jak zemřel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61172 /* ~"Leží v opuštěné budově nedaleko odsud. Nevím jak zemřel."~ */ GOTO 26
END
