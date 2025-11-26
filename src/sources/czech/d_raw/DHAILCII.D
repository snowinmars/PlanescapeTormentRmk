// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAILCII.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAILCII~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2919 /* ~Schopný válečník githzerai tě pozorně sleduje. Když ses přiblížil, náhle vytasil meč a zaútočil!~ */
  IF ~~ THEN REPLY #45139 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45140 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45141 /* ~Muž má nažloutlou kůži a vyzáblý obličej. Tělo mu pokrývají tetování a jizvy, na hrudníku má zavěšenou dlouhou zbraň. Jeho oči jsou jako dva malé černé kameny. Když ses přiblížil, uklonil se ti. "Vítám tě, šermíři. *Vím* o tvé znalosti. Promluv, co ode mě žádá tvá vůle."~ */
  IF ~~ THEN REPLY #45142 /* ~"Kdo jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #45143 /* ~"Nechceš se přidat k mé partě?"~ */ GOTO 2
  IF ~~ THEN REPLY #45144 /* ~"Kde jsi přišel k těm jizvám?"~ */ GOTO 4
  IF ~~ THEN REPLY #45145 /* ~"Odkud máš ta tetování?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45148 /* ~"Můžeš mě naučit svůj jazyk?"~ */ GOTO 7
  IF ~~ THEN REPLY #45149 /* ~"Nic nechci. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.1 9.0 21.1 22.1
  SAY #45150 /* ~"Nemohu. Mám povinnost ke svému lidu."~ */
  IF ~~ THEN REPLY #45151 /* ~"Jakou povinnost?"~ */ GOTO 47
  IF ~~ THEN REPLY #45152 /* ~"Tak to bych ti rád položil pár otázek."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 6.1 7.0 8.0 12.0 13.1 14.0 14.1 15.2 16.1 17.1 18.3 19.0 19.1 20.0 23.0 24.0 26.0 40.2 47.0
  SAY #45153 /* ~"Ptej se, ale nebuď jako utopená Ach'ali - ať jsou otázky přímé a k věci."~ */
  IF ~~ THEN REPLY #45154 /* ~"Kdo jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #45155 /* ~"Nechceš se přidat k mé partě?"~ */ GOTO 2
  IF ~~ THEN REPLY #45156 /* ~"Kde jsi přišel k těm jizvám?"~ */ GOTO 4
  IF ~~ THEN REPLY #45157 /* ~"Odkud máš ta tetování?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45158 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45159 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45160 /* ~"Můžeš mě naučit svůj jazyk?"~ */ GOTO 7
  IF ~~ THEN REPLY #45161 /* ~"Nic nechci. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.2 9.1 21.2 22.2 25.1
  SAY #45162 /* ~Pozvedl ruce a přidržel si je před obličejem a pak před hrudníkem v podivném gestu. "Tyto jizvy zdobící mou tvář pocházejí ze setkání v halách Ilsensine. Má skupina rrakma byla téměř pohlcena zbabělými *illithidy.* Jizvy na mém torzu pocházejí ze slabého ostří vraha githyanki." Kývnutím ukázal na tvé jizvy. "Promluv ke mně o historii tvých jizev."~ */
  IF ~~ THEN REPLY #45163 /* ~"Nepamatuju si, jak jsem k většině z nich přišel."~ */ GOTO 11
  IF ~~ THEN REPLY #45164 /* ~"Pocházejí z tolika bitev, že by byl jejich příběh příliš dlouhý."~ */ GOTO 19
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45165 /* ~"Jsou to jenom jizvy. Mám ještě pár dalších otázek."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45166 /* ~"Jsou to jenom jizvy. Mám ještě pár dalších otázek."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3 3.3 9.2 21.3 22.3 25.2
  SAY #45167 /* ~"Mluví o historii mých příbuzných a dávají mi jejich sílu a jejich moudrost. Jedna, vyrytá Arja'rokem z Ostrova Pečetě, vypráví o mém příbuzném Ji'li'kai, který pohřbil své nepřátele pod zdmi Shrak'at'lour. Tady toto bylo vykresleno Fellem, dabusem-který-chodí a vypráví o bitvě, kterou jsem bojoval s Ro'jhi proti sedm slaadi ve sféře Limbo, dokud osmá neumlčela Ro'jhiho mysl." Ukázal na tvá tetování. "Promluv ke mně o historii svých tetování."~ */
  IF ~~ THEN REPLY #45168 /* ~"Mluví o tom, čeho bych chtěl dosáhnout."~ */ GOTO 13
  IF ~~ THEN REPLY #45169 /* ~"Vypráví o překážkách, které jsem překonal a o příhodách z mé minulosti, které nechci zapomenout."~ */ GOTO 14
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45170 /* ~"Je to jenom tetování. Řekni mi o Fellovi."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 15
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45171 /* ~"Je to jenom tetování. Řekni mi o Fellovi."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45172 /* ~"Je to jenom tetování. Mám ještě pár dalších otázek."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45173 /* ~"Je to jenom tetování. Mám ještě pár dalších otázek."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4 1.5 3.4 3.5 9.3 9.4 18.0 18.1 21.4 21.5 22.4 22.5 25.3 25.4
  SAY #45174 /* ~Oči se mu zúžily. Odplivl si. "Je to smečka prolhaných zlodějských zrádných psů, kterým se nedá v ničem věřit. Pokud bys na nějakého narazil, zapamatuj si lekci o Selqantově srdci a Vilquarově oku - a zapamatuj si, že githyanki jsou třikráte horší."~ */
  IF ~~ THEN REPLY #45175 /* ~"Jaké jsou to lekce."~ */ GOTO 8
  IF ~~ THEN REPLY #45176 /* ~"Díky. Mám ještě pár dalších otázek."~ */ GOTO 3
  IF ~~ THEN REPLY #45177 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 3.6 9.5 18.2 21.6 22.6 25.5
  SAY #45178 /* ~Uklonil se ti. "Kdybych neměl povinnosti ke svému lidu, cítil bych se poctěn. Ale jakožto host u Torygovy tabule mám mísu plnou. Nemohu. Možná je ale někdo jiný, koho bys mohl požádat..."~ */
  IF ~~ THEN REPLY #45179 /* ~"Stejně díky. Mám ještě pár dalších otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #45180 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45181 /* ~Selqant a Vilquar byli známí pro svou krutost a zrádnost - a byli to jedni z lidu githzerai. Jejich činy ale blednou, pokud jsou porovnávány s githyanki, škůdci s nejkamennějšími srdci, kteří se kdy plavili po Stříbrném moři."~ */
  IF ~~ THEN REPLY #45182 /* ~"Mám ještě pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #45183 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.4 11.0
  SAY #45184 /* ~Na chvíli se odmlčel. Máš pocit, že se mu odpověď nelíbí. "Ach'ali se potápí. Vyslov tedy svou otázku."~ */
  IF ~~ THEN REPLY #45185 /* ~"Nechceš se přidat k mé partě?"~ */ GOTO 2
  IF ~~ THEN REPLY #45186 /* ~"Kde jsi přišel k těm jizvám?"~ */ GOTO 4
  IF ~~ THEN REPLY #45187 /* ~"Odkud máš ta tetování?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45188 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45191 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45192 /* ~"Můžeš mě naučit svůj jazyk?"~ */ GOTO 7
  IF ~~ THEN REPLY #45194 /* ~"Nic nechci. Díky a sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Hail_Mad","GLOBAL",4)
~ THEN BEGIN 10 // from: 4.3 5.3 5.5 11.1
  SAY #45197 /* ~Uklonil se ti a se zlostí v očích říká: "Těmito slovy si nečiníš žádnou čest. Já také nezískám žádnou čest, pokud tě budu poslouchat. Už s tebou nebudu dále mluvit." Na chvíli zavřel oči a když je otevřel, dívá se někam za tebe.~ */
  IF ~~ THEN REPLY #45198 /* ~"Jenom jsem se chtěl zeptat na pár věcí..."~ */ EXIT
  IF ~~ THEN REPLY #45199 /* ~"Tak tedy sbohem."~ */ EXIT
  IF ~~ THEN REPLY #45200 /* ~Zasáhni ho.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY #45201 /* ~Jeho výraz se lehce změní -  jestli ve zmatek či opovržení, to nemůžeš říci.
"Jak mohou jizvy neříkat příběhy o tom, jak vznikly ?"~ */
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45202 /* ~"To jsou jen jizvy. Každý je nějak získá."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45203 /* ~"To jsou jen jizvy. Každý je nějak získá."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #45204 /* ~"Ztratil jsem paměť jejich minulosti a taktéž mé minulosti."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #45205 /* ~Na chvíli přestává, aby to vstřebal a pak: "Teda, Tchaovo Naříkání. Je mi líto tvé ztráty mysli a minulosti."~ */
  IF ~~ THEN REPLY #45206 /* ~"Díky. Měl bych ještě pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #45207 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0
  SAY #45208 /* ~Chvíli čeká, pak zavírá oči a znovu se uklání. "Tvá tetování přináší budoucnost do přítomnosti a dávají jí zaměření. V takových tetováních je Anarchova moudrost. Tvé příběhy jsou zaznamenány."~ */
  IF ~~ THEN REPLY #45209 /* ~"Díky. Mluvil jsi o Fellovi?"~ */ GOTO 15
  IF ~~ THEN REPLY #45210 /* ~"Díky. Měl bych ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45211 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY #45212 /* ~Zavírá oči a uklání se. "Tvé příběhy jsou zaznamenány, ozbrojenče."~ */
  IF ~~ THEN REPLY #45213 /* ~"Stejně jako tvé. Měl bych ještě nějaké otázky..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45214 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45215 /* ~"Stejně jako tvé. Sbohem."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45216 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.2 13.0
  SAY #45217 /* ~"Kde mohu najít Fella?"~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45218 /* ~"Kde mohu najít Fella?"~ */ GOTO 16
  IF ~~ THEN REPLY #45219 /* ~"Jaký druh síly?"~ */ GOTO 17
  IF ~~ THEN REPLY #45220 /* ~"Díky. Měl bych ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45221 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0 40.0
  SAY #45222 /* ~"Můžeš ho najít v Úlu, na severu severovýchodní části. Směry v tomto městě jsou udávány velmi špatně - jsou jako následování blouznění Anarcha, který *nezná* sám sebe." ~ */
  IF ~~ THEN REPLY #45223 /* ~"Jaký druh síly mu mohou dát jeho tetování ?"~ */ GOTO 17
  IF ~~ THEN REPLY #45224 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45225 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0 40.1
  SAY #45226 /* ~"Tetování Ro'jhiho; ten, kdo rozlil život sedmi slaadi, mi dává sílu od základů, když mě potkají nejrůznějsí podivnosti. Půjčená síla bude záviset na zkušenosti: řekni Fellovi své příběhy a tetování poskytnou jejich sílu, až bude příběh umístěn na 'tělo'."~ */
  IF ~~ THEN REPLY #45227 /* ~"Kde ho mohu najít?"~ */ GOTO 16
  IF ~~ THEN REPLY #45228 /* ~"Díky. Měl bych ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45229 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0 3.0 21.0 22.0 25.0
  SAY #45230 /* ~Skloní před tebou svou hlavu. "Jsem Hailcii´n, voják githtzeraie. Přišel jsem získat zásoby. Objevil jsem, že tohle město je jako Try´ig´orův Drahokam - často chválené,  ovšem uvnitř je jen málo, co má nějakou cenu."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45231 /* ~"Jaký je rozdíl mezi githtzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45232 /* ~"Jaký je rozdíl mezi githtzerai a githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45233 /* ~"Můžeš mě naučit mluvit tvým jazykem?"~ */ GOTO 7
  IF ~~ THEN REPLY #45234 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45235 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.1
  SAY #45236 /* ~Skloní před tebou hlavu. "Tvá zdatnost je věhlasná, ozbrojenče."~ */
  IF ~~ THEN REPLY #45237 /* ~"Stejně jako tvůj. Měl bych ještě nějaké otázky..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45238 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45239 /* ~"Stejně jako tvůj. Sbohem."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45240 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #3 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #45241 /* ~Hailcii´n se klaní. "Buď pozdraven, ozbrojenče."~ */
  IF ~~ THEN REPLY #45242 /* ~"Buď pozdraven. Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45247 /* ~"Buď zdráv a sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #45248 /* ~

Muž má kůži se žlutým nádechem a vyzáblé rysy. Tetování a jizvy mu pokrývají tělo a na svých prsou nosí dlouhou čepel. Jeho oči jsou jak dva malé černé kameny. Uklání se ti, když  přicházíš. "Buď pozdraven, ozbrojenče. Já *vím* o tvé pomoci lidem. Řekni, co ode mne chceš."~ */
  IF ~~ THEN REPLY #45249 /* ~"Kdo jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #45250 /* ~"Můžeš se přidat do naší skupiny?"~ */ GOTO 2
  IF ~~ THEN REPLY #45251 /* ~"Kde jsi získal tvé jizvy?"~ */ GOTO 4
  IF ~~ THEN REPLY #45252 /* ~"Kde jsi získal tvá tetování?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Můžeš mě naučit mluvit tvým jazykem?"~ */ GOTO 7
  IF ~~ THEN REPLY #45253 /* ~"Nepožaduji nic. Díky a sbohem."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #45254 /* ~Muž má kůži se žlutým nádechem a vyzáblé rysy. Tetování a jizvy mu pokrývají tělo a na svých prsou nosí dlouhou čepel. Jeho oči jsou jak dva malé černé kameny. Ukloní se ti, jak přicházíš. "Buď zdráv, ozbrojenče. Já *vím* o tvé pomoci lidem. Řekni, co ode mne chceš."~ */
  IF ~~ THEN REPLY #45255 /* ~"Kdo jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #45256 /* ~"Můžeš se přidat do naší skupiny?"~ */ GOTO 2
  IF ~~ THEN REPLY #45257 /* ~"Kde jsi získal tvé jizvy?"~ */ GOTO 4
  IF ~~ THEN REPLY #45258 /* ~"Kde jsi získal tvá tetování?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45259 /* ~"Jaký je rozdíl mezi githtzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45260 /* ~"Jaký je rozdíl mezi githtzerai a githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Můžeš mě naučit mluvit tvým jazykem?"~ */ GOTO 7
  IF ~~ THEN REPLY #45262 /* ~"Nepožaduji nic. Díky a sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #45263 /* ~Hailcii´n se klaní. "Buď pozdraven, ozbrojenče."~ */
  IF ~~ THEN REPLY #45264 /* ~"Buď pozdraven. Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45265 /* ~"Buď zdráv a sbohem."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #45266 /* ~Hailcii´n se klaní. "Buď pozdraven, ozbrojenče."~ */
  IF ~~ THEN REPLY #45267 /* ~"Buď pozdraven. Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45268 /* ~"Buď zdráv a sbohem."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #45269 /* ~Muž má kůži se žlutým nádechem a vyzáblé rysy. Tetování a jizvy mu pokrývají tělo a na prsou nosí dlouhou čepel. Jeho oči jsou jako dva malé černé kameny. Dívá se na tebe, jak přicházíš, a čeká, dokud nezačneš mluvit. "Sice tě *neznám*... ale mluvit s tebou budu."~ */
  IF ~~ THEN REPLY #45270 /* ~"Kdo jsi?"~ */ GOTO 18
  IF ~~ THEN REPLY #45271 /* ~"Kde jsi získal tvé jizvy?"~ */ GOTO 4
  IF ~~ THEN REPLY #45272 /* ~"Kde jsi získal tvá tetování?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45273 /* ~"Jaký je rozdíl mezi githtzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45274 /* ~"Jaký je rozdíl mezi githtzerai a githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45275 /* ~"Můžeš mě naučit mluvit tvým jazykem?"~ */ GOTO 7
  IF ~~ THEN REPLY #45276 /* ~"Nepožaduji nic. Díky a sbohem."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #45277 /* ~Hailcii'n se tiše dívá, jak přicházíš a říká lakonicky: "Buď zdráv cestovateli."~ */
  IF ~~ THEN REPLY #45278 /* ~"Buď pozdraven. Měl bych nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45279 /* ~"Buď zdráv a sbohem."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 27 // from:
  SAY #45280 /* ~Muž má kůži se žlutým nádechem a vyzáblé rysy. Tetování a jizvy mu pokrývají tělo a na svých prsou nosí dlouhou čepel. Jeho oči jsou jak dva malé černé kameny. Jak přicházíš, uklání se Dak'konovi. "All beholden, *zerth.*"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 160
END

IF ~~ THEN BEGIN 28 // from:
  SAY #45281 /* ~Jeho slova *znám*, *zerth.* Jeho činy ne. Jeho stín mluví o tom, kdo viděl boj a porazil všechny, kteří stáli proti němu. Copak mé oči nevidí, co je za tím klidným kruhem ?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 161
END

IF ~~ THEN BEGIN 29 // from:
  SAY #45282 /* ~"Uslyším ho, *zerth.*" Otočí se tváří k tobě a očekává tvé otázky. "Ptej se. Veď své otázky tak, jak bys vedl svou mysl."~ */
  IF ~~ THEN REPLY #45283 /* ~"Kdo jsi?"~ */ GOTO 31
  IF ~~ THEN REPLY #45284 /* ~"Kde jsi získal tvé jizvy?"~ */ GOTO 32
  IF ~~ THEN REPLY #45285 /* ~"Kde jsi získal tvá tetování?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45286 /* ~"Můžeš mě naučit mluvit tvým jazykem?"~ */ GOTO 43
  IF ~~ THEN REPLY #45287 /* ~"Nepožaduji nic. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 31.0 34.0 35.0 36.0 38.1 39.1 41.1 42.1 43.0 45.0 46.0 48.1 49.0
  SAY #45288 /* ~"Ptej se tedy."~ */
  IF ~~ THEN REPLY #45289 /* ~"Kdo jsi?"~ */ GOTO 31
  IF ~~ THEN REPLY #45290 /* ~"Kde jsi získal tvé jizvy?"~ */ GOTO 32
  IF ~~ THEN REPLY #45291 /* ~"Kde jsi získal tvá tetování?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45292 /* ~"Můžeš mě naučit mluvit tvým jazykem?"~ */ GOTO 43
  IF ~~ THEN REPLY #45293 /* ~"Nepožaduji nic. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 44.0
  SAY #45294 /* ~Skloní před tebou svou hlavu. "Jsem Hailcii´n, voják githtzeraie. Přišel jsem získat zásoby. Objevil jsem, že tohle město je jako Try´ig´orův Drahokam - často chválené, ovšem uvnitř je jen málo, co má nějakou cenu. Vzduch je nečistý a lidé v něm *neznají* sami sebe. Jsou jak prázdné ulity."~ */
  IF ~~ THEN REPLY #45295 /* ~"Aha. Měl bych ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #45296 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 30.1 44.1
  SAY #45297 /* ~Zdvihá ruce k jeho obličeji a pak jeho hrudi v uctivém gestu. "Jizvy, které se usadily v mém obličeji, jsou ze střetů v Ilsenininských halách. Moje tlupa rrakmů byla téměř zničena zbabělými *illithidy.* Jizva na mém horním torsu je od čepele githyanského zloděje příbuzenstva." Pokývá hlavou nad tvými jizvami. "Povídej o minulosti tvých jizev."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 162
END

IF ~~ THEN BEGIN 33 // from:
  SAY #45298 /* ~Jeho výraz se lehce změní -  jestli ve zmatek či opovržení, to nemůžeš říci. "Jak mohou jizvy neříkat příběhy o tom, jak vznikly ?"~ */
  IF ~~ THEN REPLY #45299 /* ~"To jsou jen jizvy. Každý je nějak získá."~ */ GOTO 34
  IF ~~ THEN REPLY #45300 /* ~"Ztratil jsem paměť jejich minulosti a mé minulosti taktéž."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0 37.2
  SAY #45301 /* ~Hodí po Dak'konovi nečitelný pohled. Máš pocit, že jsi neobstál v nějaké zkoušce. "Je ještě něco, co bys *věděl?*"~ */
  IF ~~ THEN REPLY #45302 /* ~"Ano."~ */ GOTO 30
  IF ~~ THEN REPLY #45309 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #45311 /* ~Na chvíli přestává, aby to vstřebal a pak: "Teda, Tchaovo Naříkání. Je mi líto tvé ztráty mysli a minulosti."~ */
  IF ~~ THEN REPLY #45312 /* ~"Díky. Měl bych ještě pár dalších otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #45314 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #45315 /* ~Skloní před tebou svou hlavu. "Tvá zdatnost je věhlasná, ozbrojenče."~ */
  IF ~~ THEN REPLY #45317 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #45318 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 29.2 30.2 44.2
  SAY #45319 /* ~"Mluví o minulosti mého příbuzenstva a zaručují mi jejich sílu a mysli. Jeden, vyrytý Arja'rokem z Ostrova Tuleně, vypráví o mém příbuzném Ji'li'kaiovi, který pohřbil své nepřátele ve zdech Shrak'at'loru. Jiný, tady, byl zapsán Fellem, dabus,který chodí a vypráví o bittvě Ro'jhi a o  mě, jak jsme bojovali se sedmi slaadii na Limbských Sférách předtím, než osmý umlčel Ro'jhi'ovu mysl." Pokývá hlavou nad tvými jizvami. "Povídej o minulosti tvých jizev."~ */
  IF ~~ THEN REPLY #45320 /* ~"Mluví o tom, k čemu se, doufám, připojím."~ */ GOTO 38
  IF ~~ THEN REPLY #45321 /* ~"Mluví o překážkách, které jsem překonal a o příbězích z mé minulosti, dříve, než je zapomenu."~ */ GOTO 39
  IF ~~ THEN REPLY #45322 /* ~"Jsou to jen jizvy. Měl bych ještě nějaké otázky..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #45323 /* ~Chvíli čeká, pak zavírá oči a znovu se uklání. "Tvá tetování přináší budoucnost do přítomnosti a dávají jí zaměření. V takových tetováních je Anarchova moudrost. Tvé příběhy jsou věhlasné."~ */
  IF ~~ THEN REPLY #45324 /* ~"Díky. Mluvil jsi o Fellovi?"~ */ GOTO 40
  IF ~~ THEN REPLY #45325 /* ~"Díky. Měl bych ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #45326 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #45327 /* ~Zavírá oči a uklání se. "Tvé příběhy jsou věhlasné, ozbrojenče."~ */
  IF ~~ THEN REPLY #45328 /* ~"Díky. Mluvil jsi o Fellovi?"~ */ GOTO 40
  IF ~~ THEN REPLY #45329 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #45330 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #45331 /* ~"Ten kráčející dabus je mistrem umu. Nějaká tetování vypráví příběhy. Jiná vypráví o duchu. Tetování, která Fell vyrývá do kůže, půjčují sílu tělu a sílu mysli založenou na tom příběhu."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45332 /* ~"Kde mohu najít Fella?"~ */ GOTO 16
  IF ~~ THEN REPLY #45333 /* ~"Jaký druh síly?"~ */ GOTO 17
  IF ~~ THEN REPLY #45334 /* ~"Díky. Měl bych nějaké další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #45335 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.0
  SAY #45336 /* ~"Můžeš ho najít v Úlu, na severu severovýchodní části. Směry v tomto městě jsou udávány velmi špatně - jsou jako následování blouznění Anarcha, který *nezná* sám sebe." ~ */
  IF ~~ THEN REPLY #45337 /* ~"Jaký druh síly mu mohou dát jeho tetování?"~ */ GOTO 42
  IF ~~ THEN REPLY #45338 /* ~"Měl bych ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #45339 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #45340 /* ~"Tetování Ro'jhiho; ten, kdo rozlil život sedmi slaadiů, mi dává sílu od základů, když mě potkají nejrůznějsí podivnosti. Půjčená síla bude záviset na zkušenosti: řekni Fellovi své příběhy a tetování poskytnou jejich sílu, až bude příběh umístěn na 'tělo'."~ */
  IF ~~ THEN REPLY #45341 /* ~"Kde ho mohu najít?"~ */ GOTO 41
  IF ~~ THEN REPLY #45342 /* ~"Díky. Měl bych ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #45343 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.5 30.5 44.5
  SAY #45344 /* ~Lehce se uklání. "Máš s sebou neporovnatelného mistra jazyku. Zeptej se ho a  snad by tě měl učit."~ */
  IF ~~ THEN REPLY #45345 /* ~"Každopádně díky. Měl bych ještě pár dalších otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #45346 /* ~"Každopádně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #45347 /* ~Jeho slova *znám*, *zerth,* stejně jako jeho načasované činy týkající se naší pevnosti. Poslechnu si ho."~ */
  IF ~~ THEN REPLY #45348 /* ~"Kdo jsi ?"~ */ GOTO 31
  IF ~~ THEN REPLY #45349 /* ~"Kde jsi získal své jizvy?"~ */ GOTO 32
  IF ~~ THEN REPLY #45350 /* ~"Kde jsi získal svá tetování?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"Jaký je rozdíl mezi githzerai a githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45351 /* ~"Můžeš mě naučit mluvit tvým jazykem?"~ */ GOTO 43
  IF ~~ THEN REPLY #45352 /* ~"Nepožaduji nic. Thanks a sbohem."~ */ EXIT
END

IF WEIGHT #4 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 45 // from:
  SAY #45353 /* ~Hailcii'n se uklání jak se přibližuješ. "Jsem poctěn návratem tvé přítomnosti."~ */
  IF ~~ THEN REPLY #45354 /* ~"Díky. Měl bych pár otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #45355 /* ~"Díky, ale musím pokračovat. Sbohem."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #45356 /* ~"Vracíš se, *zerth,* se svým člověkem. Je toho víc, co bys *věděl?*"~ */
  IF ~~ THEN REPLY #45357 /* ~"Ano."~ */ GOTO 30
  IF ~~ THEN REPLY #45358 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.0
  SAY #45359 /* ~"Jsem tu, abych získal zásoby a nabral posily. Githyankiové se stávají čím dál drzejší. Připravujeme se na krvavou válku."~ */
  IF ~~ THEN REPLY #45360 /* ~"To zní napínavě. Rád bych se tě zeptal ještě na několik otázek."~ */ GOTO 3
  IF ~~ THEN REPLY #45361 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 29.4 30.3 30.4 44.3 44.4
  SAY #45174 /* ~Oči se mu zúžily. Odplivl si. "Je to smečka prolhaných zlodějských zrádných psů, kterým se nedá v ničem věřit. Pokud bys na nějakého narazil, zapamatuj si lekci o Selqantově srdci a Vilquarově oku - a zapamatuj si, že githyanki jsou třikráte horší."~ */
  IF ~~ THEN REPLY #45175 /* ~"Jaké jsou to lekce."~ */ GOTO 49
  IF ~~ THEN REPLY #45176 /* ~"Díky. Mám ještě pár dalších otázek."~ */ GOTO 30
  IF ~~ THEN REPLY #45177 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #45181 /* ~Selqant a Vilquar byli známí pro svou krutost a zrádnost - a byli to jedni z lidu githzerai. Jejich činy ale blednou, pokud jsou porovnávány s githyanki, škůdci s nejkamennějšími srdci, kteří se kdy plavili po Stříbrném moři."~ */
  IF ~~ THEN REPLY #45182 /* ~"Mám ještě pár otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #45183 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END
