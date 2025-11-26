// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVES~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 67 71 even though they appear after this state */
~  Global("Yves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3005 /* ~Okouzlující mladá žena má ve svých hebkých očích, barvy mořské zeleně, vzdálený výraz.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3006 /* ~"Zdravím..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39201 /* ~"Zdravím..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #39202 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39203 /* ~"Zdravím. Jsem Yves, Hledačka Příběhů."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 407
END

IF ~~ THEN BEGIN 2 // from:
  SAY #39204 /* ~Yves nevzrušeně pokračuje. "Přišel jsi za mnou vyměnit si příběhy?"~ */
  IF ~~ THEN REPLY #39205 /* ~"Rád bych si vyměnil pár příběhů."~ */ GOTO 19
  IF ~~ THEN REPLY #39206 /* ~"Mám pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #39207 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #39208 /* ~"Zdravím. Jsem Yves, Hledačka Příběhů. Přišel jsi za mnou vyměnit si příběhy?"~ */
  IF ~~ THEN REPLY #39209 /* ~"Rád bych si vyměnil pár příběhů."~ */ GOTO 19
  IF ~~ THEN REPLY #39210 /* ~"Mám pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #39211 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.0 7.1 8.0 9.1 10.0 11.0 12.1 14.1 15.1 16.1 17.1 19.11 20.5 21.1 22.1 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 62.1 63.5 64.1 65.1 66.12 67.1 68.0 69.0 70.0 71.1 72.1 73.1 74.1 75.0 76.1 77.1 78.1 79.1 80.0 81.1
  SAY #39212 /* ~Yves tiše přikývla.~ */
  IF ~~ THEN REPLY #39213 /* ~"Proč ti říkají 'Hledačka Příběhů?'"~ */ DO ~SetGlobal("Yves","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #39214 /* ~"Co tady děláš?"~ */ GOTO 12
  IF ~~ THEN REPLY #39215 /* ~"Můžeš mi říct o tomhle místě?"~ */ DO ~SetGlobal("Know_Yves_Grace","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Yvana","GLOBAL",1)
~ THEN REPLY #39216 /* ~"Yves... jsi mi povědomá. Nejmenuje se tvá matka Yvana?"~ */ GOTO 68
  IF ~  GlobalGT("Yvana","GLOBAL",1)
~ THEN REPLY #39217 /* ~"Mluvila jsi v poslední době s matkou, Yves?"~ */ DO ~SetGlobal("Yvana","GLOBAL",3)
~ GOTO 69
  IF ~~ THEN REPLY #39218 /* ~"Můžeme si vyměnit příběhy?"~ */ GOTO 19
  IF ~  GlobalGT("Yves_Shared","AR0605",0)
~ THEN REPLY #39219 /* ~"Můžeš mi znovu vyprávět jeden z příběhů, které jsi mi řekla už dřív?"~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39220 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 70
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67851 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 70
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39221 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ JOURNAL #66754 /* ~Zeptal jsem se Yves, jestli neví, zda je Kesai-Serris Ravelina dcera. Yves mi jako odpověď vyprávěla příběh o tom, že musím kopat hluboko, abych odhalil pravdu. Takže se asi budu muset vyptávat dál...~ */ GOTO 8
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39222 /* ~"Hledám Vivianinu vůni... nevíš, kde by mohla být?"~ */ JOURNAL #66727 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neví něco o tom, kdo vzal Vivian její osobní voňavku. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 6
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39223 /* ~"Hledám Marissin závoj... nevíš, kde by mohl být?"~ */ GOTO 5
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39224 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 7
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39225 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš, kde je desátá studentka?"~ */ GOTO 6
  IF ~~ THEN REPLY #39226 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.11
  SAY #39227 /* ~Yves zavrtěla hlavou. "Ale Marissa, to je zajímavý příběh. Chtěl bys ho slyšet?"~ */
  IF ~~ THEN REPLY #39228 /* ~"Ano, pokračuj."~ */ GOTO 11
  IF ~~ THEN REPLY #39229 /* ~"Teď zrovna ne. Mám jinou otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39230 /* ~"Teď ne. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.10 4.13
  SAY #39231 /* ~Yves zavrtěla hlavou. "Promluv si s Nenny... Ta pořád chodí kolem a vše pozorně sleduje."~ */
  IF ~~ THEN REPLY #39232 /* ~"Mám jinou otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39233 /* ~"Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.12
  SAY #39234 /* ~"Příběh o Ravel Puzzlewell, kterou se straší děti, začíná a končí otázkou: 'Co může změnit charakter člověka?'"~ */
  IF ~~ THEN REPLY #39235 /* ~"Pokračuj..."~ */ GOTO 15
  IF ~~ THEN REPLY #39236 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39241 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.9
  SAY #39242 /* ~"Bylo nebylo, starší muž z Úřednické Čtvrti zmizel a jeho tělo nemohli nikde najít. Aby ho skryl, pohřbil ho vrah na hřbitově pod jiné tělo. Věštec určil, kde se tělo nachází a tak kopali a odkryli tělo, ale nebyl to ten starší muž. Cítili se oklamáni. Museli vraha pustit. Pak ale znovu hrabali, aby mohli tu druhou mrtvolu znovu pohřbít a tam nalezli zmizelého muže."

"Někdy musíš kopat hluboko, abys nalezl pravdu."
~ */
  IF ~~ THEN REPLY #39243 /* ~"Ach... tak. Mám jinou otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39244 /* ~"Rozumím... Budu se dál vyptávat. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 14.0
  SAY #39245 /* ~"Bylo nebylo a mladá dívka přišla k orákulu, které prý znalo mnoho věcí a požádala ho o pomoc. Její život potřeboval usměrnění, tak požádala orákulum, aby jí dalo smysl života..."~ */
  IF ~~ THEN REPLY #39246 /* ~"Pokračuj..."~ */ GOTO 10
  IF ~~ THEN REPLY #39247 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39248 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39249 /* ~"Orákulum nebylo zlé, ale bylo celkem povrchní a věnovalo se spíše pití, což způsobilo, že se jeho soustředění a rozum dost zastřely. Jeho jediná odpověď na dívčinu otázku byla ta, že v jednom příběhu, který kdy za život zaslechne, bude pravda, po níž touží. A tak dívka odešla a začala sbírat příběhy. A hledá dosud, nevědouc, která z těch tisíců příhod v sobě drží pravdu."

"Takové je nebezpečí hloupé otázky a moudrost nevyslovené otázky."~ */
  IF ~~ THEN REPLY #39250 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39251 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #39252 /* ~"Bylo nebylo, ve světě hrdinů a zlomyslných dětinských bohů žily byly tři sestry. Proklety hrozivým zjevem, byly ostatními lidmi země považovány za démony a žily osamoceny. Jedné z nich sice sestry chyběly, ale přesto opustila svět a zanechala jeho hanbu za sebou... ale pouze vyměnila malichernost bohů za vlastní."~ */
  IF ~~ THEN REPLY #39253 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39254 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #39255 /* ~"Sbírám příběhy a měním je s těmi, kteří mají vlastní příběhy."~ */
  IF ~~ THEN REPLY #39256 /* ~"Vyměníme si příběhy?"~ */ GOTO 19
  IF ~~ THEN REPLY #39257 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39258 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #39259 /* ~"To je částí příběhu Paní Grace, který není můj, abych ho mohla vyprávět. Řekla, že až se přiblíží konci svých let, poví mi ho.. a pouze když slíbím, že se o tento příběh s nikým nepodělím."~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39260 /* ~"Doufám, že nikdy nebude třeba, aby mi ten příběh vyprávěla, jelikož věřím, že dávno před tím naleznu svůj příběh a opustím toto místo. Myslím si, že má strach, abych nepromrhala celý život hledáním toho příběhu." Yves si tichounce povzdychla. "Ale nemohu si pomoci."~ */
  IF ~~ THEN REPLY #39261 /* ~"Tvůj příběh?"~ */ GOTO 9
  IF ~~ THEN REPLY #39262 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39263 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #39264 /* ~"Mnohokrát předložila tuto hádanku těm, jež jí navštívili, kdož toužili využít její podivnou magii, kterou vlastnila zřejmě jenom ona sama. Všichni se pokoušeli zodpovědět její dotaz, ale nikdo neuspěl... a zjistili, že cena za špatnou odpověď je děsivý osud, pokaždé mnohem horší, než jaký měla poslední oběť. Vyprávět o různých mukách, která podstoupili by znamenalo mluvit o věcech, z nichž jsou utkávány ty nejhrozivější noční můry."~ */
  IF ~~ THEN REPLY #39265 /* ~"Pokračuj..."~ */ GOTO 16
  IF ~~ THEN REPLY #39266 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39267 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39268 /* ~"Příběh mě zaujal tímto: Ravel samotná odpověď na svou otázku nezná, ale touží po odpovědi. *Proč* po ní touží, to je otázka. Proč by povaha člověka měla takovou cenu pro jednu z Šedých Sester, obzvláště s takovou mocí, jakou má Ravel?"~ */
  IF ~~ THEN REPLY #39269 /* ~"Pokračuj..."~ */ GOTO 17
  IF ~~ THEN REPLY #39270 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39271 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39272 /* ~"Říká se, že dala tu otázku i Paní Bolesti; ne přímo, ale vykřikovala ji na Sigil a chtěla po Paní odpověď. Když žádná odpověď nepřišla, začala utkávat hrozivou magickou síť, která by otevřela Klec a umožnila by zuřivosti Sfér vniknout do Sigilu jako záplavová vlna."~ */
  IF ~~ THEN REPLY #39273 /* ~"Pokračuj..."~ */ GOTO 18
  IF ~~ THEN REPLY #39274 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39275 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39276 /* ~"Jedinou odpověď, kterou dostala, bylo zavržení. Dodnes nikdo nezná odpověď na Ravelinu otázku... a teď už není nikdo, kdo by se jí pokoušel zodpovědět, protože Ravel je pryč, ztracena ve Sférách."~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39277 /* ~"Mám další otázku..."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Poté, co mi vyprávěla příběh o Ravel, mi Yves doporučila, abych si promluvil s mlčící prostitutkou Ecco - prý by měla vědět ještě něco víc. Ale nejdřív musím nějak zařídit, aby se mnou Ecco mohla mluvit.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39278 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~Poté, co mi vyprávěla příběh o Ravel, mi Yves doporučila, abych si promluvil s mlčící prostitutkou Ecco - prý by měla vědět ještě něco víc. Ale nejdřív musím nějak zařídit, aby se mnou Ecco mohla mluvit.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66786 /* ~"Mám další otázku..."~ */ JOURNAL #66790 /* ~Poté, co mi vyprávěla příběh o Ravel, mi Yves doporučila, abych si promluvil s mlčící prostitutkou Ecco - prý by měla vědět ještě něco víc. Ale nejdřív musím nějak zařídit, aby se mnou Ecco mohla mluvit.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66787 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ JOURNAL #66790 /* ~Poté, co mi vyprávěla příběh o Ravel, mi Yves doporučila, abych si promluvil s mlčící prostitutkou Ecco - prý by měla vědět ještě něco víc. Ale nejdřív musím nějak zařídit, aby se mnou Ecco mohla mluvit.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66788 /* ~"Mám další otázku..."~ */ JOURNAL #66791 /* ~Poté, co mi vyprávěla příběh o Ravel, mi Yves řekla, že Ecco by mohla vědět víc.~ */ GOTO 80
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66789 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ JOURNAL #66791 /* ~Poté, co mi vyprávěla příběh o Ravel, mi Yves řekla, že Ecco by mohla vědět víc.~ */ GOTO 80
END

IF ~~ THEN BEGIN 19 // from: 2.0 3.0 4.5 12.0 22.0 29.0 39.0 42.0 44.0 47.0 50.0 58.0 60.0 62.0 63.4 65.0 67.0 78.0
  SAY #39279 /* ~Yves kývla. "To bych ráda, ano."~ */
  IF ~  Global("Yves_Story_01","GLOBAL",0)
~ THEN REPLY #39280 /* ~Řekni jí příběh tvého probuzení v Márnici.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 21
  IF ~  Global("Yves_Story_02","GLOBAL",0)
!NearbyDialog("Dnordom")
~ THEN REPLY #39281 /* ~Řekni jí příběh Uličky neustálých vzdechů.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 23
  IF ~  Global("Yves_Story_02","GLOBAL",0)
NearbyDialog("Dnordom")
~ THEN REPLY #67899 /* ~Řekni jí příběh Uličky Neustálých Vzdechů~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 81
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39282 /* ~Řekni jí příběh Tichého Krále.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39283 /* ~Řekni jí příběh Tichého Krále.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  GlobalGT("Dream","GLOBAL",0)
Global("Yves_Story_13","GLOBAL",0)
~ THEN REPLY #39284 /* ~Řekni jí příběh Budovače Snů.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 40
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Yves_Story_04","GLOBAL",0)
~ THEN REPLY #39285 /* ~Řekni jí příběh Smradodechovy kletby.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 43
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
Global("Yves_Story_05","GLOBAL",0)
~ THEN REPLY #39286 /* ~Řekni jí příběh Uličky nebezpečných zákoutí.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 45
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
Global("Yves_Story_06","GLOBAL",0)
~ THEN REPLY #39287 /* ~Řekni jí Pharodův příběh.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 48
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
Global("Yves_Story_07","GLOBAL",0)
~ THEN REPLY #39288 /* ~Řekni jí Ignusův příběh.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 51
  IF ~  NumInPartyGT(0)
~ THEN REPLY #39289 /* ~Zeptej se společníků, jestli nemají nějakou příhodu.~ */ GOTO 20
  IF ~~ THEN REPLY #39290 /* ~"Vlastně jsem se tě chtěl na něco zeptat..."~ */ GOTO 4
  IF ~~ THEN REPLY #39291 /* ~"Příště. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.10
  SAY #39292 /* ~Yves trpělivě čeká na tvůj příběh.~ */
  IF ~  NearbyDialog("DMorte")
Global("Yves_Story_08","GLOBAL",0)
~ THEN REPLY #39293 /* ~"Morte... nemáš nějaký příběh?"~ */ EXTERN ~DMORTE~ 408
  IF ~  NearbyDialog("DAnnah")
Global("Yves_Story_09","GLOBAL",0)
~ THEN REPLY #39294 /* ~"Annah... nemáš nějaký příběh?"~ */ EXTERN ~DANNAH~ 195
  IF ~  NearbyDialog("DDakkon")
Global("Yves_Story_10","GLOBAL",0)
~ THEN REPLY #39295 /* ~"Dak'kone... nemáš nějaký příběh?"~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DDAKKON~ 122
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
Global("Yves_Story_11","GLOBAL",0)
~ THEN REPLY #39296 /* ~"Fall-From-Grace... nemáš nějaký příběh?"~ */ DO ~SetGlobal("Yves_Story_11","GLOBAL",1)
~ EXTERN ~DGRACE~ 140
  IF ~  NearbyDialog("DNordom")
Global("Yves_Story_12","GLOBAL",0)
~ THEN REPLY #39297 /* ~"Nordom: jestli máš nějaký příběh, řekni ho prosím Yves."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DNORDOM~ 10
  IF ~~ THEN REPLY #39298 /* ~"Vlastně, Yves, chtěl jsem se tě nějdřív na něco zeptat..."~ */ GOTO 4
  IF ~~ THEN REPLY #39299 /* ~"Příště. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #39300 /* ~Yves se naklonila dopředu a dychtivě poslouchá příběh tvého probuzení ve spalovačské Márnici... hltá každé tvé slovo. Když jsi skončil, usmála se na tebe. "Zapamatuju si ten příběh. Já ti také povyprávím o Spalovačích - 'Kapitoly Prachu.'"~ */
  IF ~~ THEN REPLY #39301 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_01","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #39302 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39303 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 66.0
  SAY #39304 /* ~"Jsou to kapitoly v Knize Mrtvých, obrovském svazku, ve kterém Spalovači zapisují odchod všeho živého za Věčnou Hranici. V této Knize jsou kapitoly, které nejsou nic než prach, a věří se, že jsou to jména ztracených duší, které nemohou zemřít, ale musí trpět životem donekonečna, dokud samotná historie nezemře a neumožní jim únik."~ */
  IF ~~ THEN REPLY #39305 /* ~"Mám pro tebe další příběh."~ */ GOTO 19
  IF ~~ THEN REPLY #39306 /* ~"Mám pro tebe otázku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39307 /* ~"Teď už musím jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.1
  SAY #39308 /* ~Yves se naklonila vpřed, jak jí vyprávíš příběh o rodící Uličce... hltá každé tvé slovo. Když jsi skončil, usmála se na tebe. "Zapamatuju si tento příběh. A teď mám jeden pro tebe. Než začnu, musím se tě zeptat: víš, co je to Modron?"~ */
  IF ~~ THEN REPLY #39309 /* ~"Ano."~ */ GOTO 24
  IF ~~ THEN REPLY #39310 /* ~"Ne..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 23.0 30.0
  SAY #39311 /* ~"Tak ti povyprávím příběh 'Hodiny a Quadrone.'"~ */
  IF ~~ THEN REPLY #39312 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #39313 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39314 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 66.1 81.0
  SAY #39315 /* ~"Bylo nebylo, existoval jeden Modron. Byl nově stvořen, jeho logika byla čerstvá a nezkušená. Přišel do Sigilu, podle rozkazu svých modronských nadřízených."~ */
  IF ~~ THEN REPLY #39316 /* ~"Pokračuj..."~ */ GOTO 26
  IF ~~ THEN REPLY #39317 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39318 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #39319 /* ~"Neznal nic než příkazy a direktiva, o poslušnosti a plnění rozkazů nadřízených. Protože Modroni si uvědomují pouze příkazy svých přímých nadřízených - nemají ponětí o nějaké vyšší autoritě. Až na tohoto."~ */
  IF ~~ THEN REPLY #39320 /* ~"Pokračuj..."~ */ GOTO 27
  IF ~~ THEN REPLY #39321 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39322 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #39328 /* ~"Jednoho dne přišel obchůdku, ve kterém byly malé hodiny, které už nedokázaly ukazovat čas. Byly rozbité, kolečka měly polámané. Modron se okamžitě pustil do práce a začal hodiny spravovat."~ */
  IF ~~ THEN REPLY #39329 /* ~"Pokračuj..."~ */ GOTO 28
  IF ~~ THEN REPLY #39330 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39331 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #39332 /* ~"Udělal novou dřevěnou skřínku pro součásti, vyměnil prasklá pera, pečlivě opravil a naolejoval strojek a vyřezal z kusu kovu nové ručičky. Přesné tikání opravených hodin mu připomínalo obrovské stroje Mechanu a utěšovalo ho to tak moc, jak jen je možné utěšit Modrona."~ */
  IF ~~ THEN REPLY #39333 /* ~"Pokračuj..."~ */ GOTO 29
  IF ~~ THEN REPLY #39334 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39335 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #39336 /* ~"Co Modron nikdy nepochopil bylo, že doopravdy *miloval* hodiny, na kterých pracoval. Z důvodů, které nedokázal vysvětlit, se rozhodl zůstat v Sigilu s hodinami až do konce svých dnů."~ */
  IF ~~ THEN REPLY #39337 /* ~"Mám pro tebe další příběh."~ */ GOTO 19
  IF ~~ THEN REPLY #39338 /* ~"Mám pro tebe otázku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39339 /* ~"Teď už musím jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1
  SAY #39340 /* ~"Modronové jsou stvoření dokonalého řádu, více stroje než živé organismy. Existuje mnoho druhů Modronů, ale všichni mají své místo v pevné dokonale organizované hierarchii. Jsou tak oddáni svému systému, že nedokáží komunikovat nebo dokonce chápat existenci Modronů, kteří nejsou jejich přímí nadřízení nebo podřízení."~ */
  IF ~~ THEN REPLY #39341 /* ~"Teď už rozumím."~ */ GOTO 24
  IF ~~ THEN REPLY #39342 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39343 /* ~"Povím ti ten příběh jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 19.3 19.4
  SAY #39344 /* ~Yves se naklonila dopředu a dychtivě poslouchá příběh o skrytém národě nemrtvých, kterému vládne mrtvola, jež po tisíciletí nepromluvila ani hlásku... hltá každé tvé slovo. Když jsi skončil, usmála se na tebe. "Zapamatuju si ten příběh. A teď ti povyprávím já - zde je příběh 'Prosebnice u Brány'."~ */
  IF ~~ THEN REPLY #39345 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_03","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 32
  IF ~~ THEN REPLY #39346 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39347 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 66.2
  SAY #39348 /* ~"Bylo dávno po vrcholu, když na vrata Vězení začal někdo tlouci."~ */
  IF ~~ THEN REPLY #39349 /* ~"Pokračuj..."~ */ GOTO 33
  IF ~~ THEN REPLY #39350 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39351 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #39352 /* ~"Carus - nejstarší známý ze společenstva Nemilosrdných - se odšoural ze svého místa a došel halou k velkým branám, které oddělovaly trest od okolního světa. Bušení neustávalo, dokud nedošel k bráně a nepromluvil."~ */
  IF ~~ THEN REPLY #39353 /* ~"Pokračuj..."~ */ GOTO 34
  IF ~~ THEN REPLY #39354 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39355 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #39356 /* ~"Zavolal a nedostal odpověď. Otevřel bránu, protože cítil podivný, přesvědčivý pocit, že by měl otevřít."~ */
  IF ~~ THEN REPLY #39357 /* ~"Pokračuj..."~ */ GOTO 35
  IF ~~ THEN REPLY #39358 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39359 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #39360 /* ~"Za dveřmi klečela postava divokého vzhledu. Její ruce byly krvavé od toho, jak bušila na bránu, sotva popadala dech. Když na kameny dlažby dopadl paprsek světla z vnitřku vězení, vzhlédla a spatřila Nemilosrdného stojícího ve dveřích. Začala vzlykat radostí, neboť se jí ulevilo."~ */
  IF ~~ THEN REPLY #39361 /* ~"Pokračuj..."~ */ GOTO 36
  IF ~~ THEN REPLY #39362 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39363 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39364 /* ~"Když se Carus podíval na ženu, měl pocit, jakoby se díval na svého dvojníka, až na pohlaví, její přítomnost ho zneklidnila. Nebyl si jistý, co má říct, takže čekal, až mu žena sama dá vysvětlení."~ */
  IF ~~ THEN REPLY #39365 /* ~"Pokračuj..."~ */ GOTO 37
  IF ~~ THEN REPLY #39366 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39367 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #39368 /* ~"Což udělala. Bylo to jednoduché prohlášení, ale velice důležité a jenom díky němu se Corus... jehož kolena ječela bolestí s každým pohybem... sehnul a pomohl ženě na nohy. Zavedl jí dovnitř."~ */
  IF ~~ THEN REPLY #39369 /* ~"Pokračuj..."~ */ GOTO 38
  IF ~~ THEN REPLY #39370 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39371 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #39372 /* ~"Řekla, že došlo k nespravedlnosti. A to bylo vše, co Carus potřeboval slyšet."~ */
  IF ~~ THEN REPLY #39373 /* ~"Pokračuj..."~ */ GOTO 39
  IF ~~ THEN REPLY #39374 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39375 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #39376 /* ~"Nakonec zjistil, že nemohla splnit svou povinnost coby rozlícené ženy, jelikož muž vinný zločinem krve, zemřel nepotrestán. Prosila Caruse a Nemilosrdné o pomoc... a tak jí popravili. Zklamala a nesplnila úkol."~ */
  IF ~~ THEN REPLY #39377 /* ~"Mám pro tebe další příběh."~ */ GOTO 19
  IF ~~ THEN REPLY #39378 /* ~"Mám pro tebe otázku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39379 /* ~"Teď už musím jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 19.5
  SAY #39380 /* ~Yves se naklonila dopředu a dychtivě poslouchá příběh o muži, jež ztratil schopnost snít a objednal si stavbu stroje, který by mu umožnil znovu snít... hltá každé tvé slovo. Když jsi skončil, usmála se na tebe. "Zapamatuju si ten příběh. A pro tebe mám tuto -  'Barmanův příběh.'"~ */
  IF ~~ THEN REPLY #39597 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_13","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 41
  IF ~~ THEN REPLY #39598 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39599 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0 66.3
  SAY #39529 /* ~"Před dávnými časy přišel muž na pole poseté včelími úly. Nad tímto polem bzučelo tisíce včel, avšak ani jedna nebyla vidět. Mezi těmi zdánlivě prázdnými úly kráčel včelař, jenž z nich vybíral plástve medu. A navzdory akutnímu nedostatku hmyzu bzukot stále pokračoval; a muž byl zmaten."~ */
  IF ~~ THEN REPLY #39600 /* ~"Pokračuj..."~ */ GOTO 42
  IF ~~ THEN REPLY #39601 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39602 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #39530 /* ~"Pokusil se promluvit se včelařem, ten zvedl kápi a odhalil tak tělo tvořené výhradně včelami. Mezi neskutečným množstvím včel, které tvořily obličej této bytosti, zela malá puklina v podobě úst - ta se začala pohybovat, jako by stvoření mluvilo, nicméně řeči bzukotu se nedalo rozumět. V tu chvíli onen muž zemřel, zatímco se pokoušel zjistit, co včelař povídal."~ */
  IF ~~ THEN REPLY #39603 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39604 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39605 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.6
  SAY #39531 /* ~Yves se naklonila dopředu, když jsi dopověděl příběh o Smradodechově nemilé kletbě... zdá se, že pohltila každé tvé slůvko. Po skončeném vyprávění se na tebe usmála. "Tento příběh bych si měla zapamatovat. Teď mám já jeden pro tebe - 'Zlatavou pověst.'"~ */
  IF ~~ THEN REPLY #39606 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_04","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 44
  IF ~~ THEN REPLY #39607 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39608 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 66.4
  SAY #39532 /* ~"Na sféře Ysghardu leží Zlatavá síň, ve které můžeš najít Vnímavé, kteří hledají potěšení pro žaludek a játra. Plným douškem si užívají těchto pochoutek a přitom si neuvědomují, že dveře Síně se nikdy neotevřou, a že už není žádné cesty zpět k Městské hale. Tito Vnímaví jsou nepotřební, vždyť oni skutečně neuctívají svou frakci a místo toho hledají pouze potěšení pro vlastní hrdlo. Jsou to vězni, kteří si ani neuvědomují, že jsou vězněni?"~ */
  IF ~~ THEN REPLY #39609 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39610 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39611 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.7
  SAY #39533 /* ~Když vyprávíš příběh o Uličce nebezpečných zákoutí, naklání se Yves dopředu a vypadá, jako by do sebe vstřebávala každé tvé slovo. "Tento příběh bych si měla zapamatovat. Teď mám já jeden pro tebe - 'Nápadník Paní.'"~ */
  IF ~~ THEN REPLY #39612 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_05","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #39613 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39614 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 66.5
  SAY #39534 /* ~"Tento příběh vypráví o nápadníku Paní Bolesti, o jednom z mnoha. Byl to mladý muž, kterého posedla touha po Paní Sigilu. Viděl ji všude, na každém městském rohu. Slyšel šustění jejích závojů, škrábaní jejích čepelí a všechny tyto skutečnosti ho zaslepily. Doufal, že když jí bude sloužit, mohl by ji alespoň spatřit... a tak jí tedy sloužil."~ */
  IF ~~ THEN REPLY #39615 /* ~"Pokračuj..."~ */ GOTO 47
  IF ~~ THEN REPLY #39616 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39617 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #39535 /* ~"Později ho našli zborceného krví na schodech jeho vlastního domu, celé tělo měl pokryto krvácejícími bodnými ranami... avšak jeho oči byly stále otevřeny a na tváři mu zel vítězoslavný úsměv."~ */
  IF ~~ THEN REPLY #39618 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39619 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39620 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 19.8
  SAY #39536 /* ~Když vyprávíš příběh o Pharodovi, naklání se Yves dopředu... zdá se, že do sebe vpravuje všechna tvá slova. Jak jsi příběh dopověděl, usmála se na tebe. "Tento příběh si musím zapamatovat. Teď mám jeden já pro tebe..."~ */
  IF ~~ THEN REPLY #39621 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_06","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 49
  IF ~~ THEN REPLY #39622 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39623 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 66.6
  SAY #39537 /* ~"Jednou sem přišel muž, jenž poznal tu nejbáječnější věc celého mnohovesmíru. Chtěl tuto svou zkušenost vtisknout do jednoho senzorického kamene Městské haly - do kouzelného zařízení, které udržuje pocity a vzpomínky na věčnost a zanechává je tak, aby je mohli vychutnávat i ostatní."~ */
  IF ~~ THEN REPLY #39624 /* ~"Pokračuj..."~ */ GOTO 50
  IF ~~ THEN REPLY #39625 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39626 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #39538 /* ~"Ale pak o tom popřemýšlel: nezničilo by to tak nádhernou vzpomínku, nevybledla by tak? A tak si onu skvostnou vzpomínku nechal pro sebe, a zestárnul v myšlenkách na ni. Ale postupem času se jeho paměť zúžila a vybledla a teď už si nemůže patřičně vychutnat nádheru svého prožitku."~ */
  IF ~~ THEN REPLY #39627 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39628 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39629 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 19.9
  SAY #39539 /* ~Když vyprávíš příběh o Ignusovi a Umění, naklání se Yves dopředu... zdá se, že hltá každé tvé slovo. Jak jsi skončil, usmála se na tebe. "Tento příběh si musím zapamatovat. Teď mám jeden já pro tebe - 'příběh o popravě.'"~ */
  IF ~~ THEN REPLY #39630 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_07","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 52
  IF ~~ THEN REPLY #39631 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39632 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 66.7
  SAY #39540 /* ~"Jeden čas pobíhal sigilskými ulicemi vrah, muž jménem Kossacs, muž s černým srdcem. Kdysi byl požehnán svou matkou z Abyssu a nikdo ho pak nemohl zasáhnout s úmyslem zranit, sic by sám zemřel. Když toto své požehnání objevil, začal zabíjet a vraždit každého, kdo mu jen zkřížil cestu."~ */
  IF ~~ THEN REPLY #39633 /* ~"Pokračuj..."~ */ GOTO 53
  IF ~~ THEN REPLY #39634 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39635 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #39541 /* ~Během jedné ze svých vražedných výprav byl za pomoci sítí zadržen Harmonickými a posléze přiveden před Guvnery. Soud netrval dlouze a v celém jeho průběhu se Kossacs chechtal na celé kolo, poněvadž věděl, že mu nikdo neublíží aniž by sám zemřel. V posledním soudním přelíčení byl prohlášen vinným a odsouzen k smrti.~ */
  IF ~~ THEN REPLY #39636 /* ~"Pokračuj..."~ */ GOTO 76
  IF ~~ THEN REPLY #39637 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39638 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 77.0
  SAY #39542 /* ~"V tom případě plivu na vaši zbabělost!" Kossacs se začal řehtat, uchopil pohár a mrštil s ním proti zdi a tak ho roztříštil na stovky kousků. Jed začal stékat po zdech a vysychal až nakonec vůbec nebyl. "Tak pojď - budeš muset jít a zabít mě sám."~ */
  IF ~~ THEN REPLY #39639 /* ~"Pokračuj..."~ */ GOTO 78
  IF ~~ THEN REPLY #39640 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39641 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #39543 /* ~Yves se usmála. "Zajímavý příběh, Morte. Teď bych pro tebe a tvého přítele měla za odměnu také jeden...'Fiendova hra.'"~ */
  IF ~~ THEN REPLY #39642 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_08","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 56
  IF ~~ THEN REPLY #39643 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39644 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #39544 /* ~"Jeden fiend kdysi putovával po jistém světě Základní sféry v podobě starého muže. Jednoho dne narazil v lese na skupinku lovců."

"'Copak to děláte?' Zeptal se fiend. Lovci mu odpověděli a fiend pokýval hlavou. 'Ještě nikdy jsem nebyl na lovu.' "~ */
  IF ~~ THEN REPLY #39645 /* ~"Pokračuj..."~ */ GOTO 57
  IF ~~ THEN REPLY #39646 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39647 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #39545 /* ~"Lovci tedy vyzvali staříka, aby šel s nimi, až konečně společně došli na paseku, na které se páslo několik jelenů. Lovci sice u sebe nesli kuše, nicméně nevystřelili a fiend se jich tedy zeptal proč nestřílejí."~ */
  IF ~~ THEN REPLY #39648 /* ~"Pokračuj..."~ */ GOTO 58
  IF ~~ THEN REPLY #39649 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39650 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #39546 /* ~"'Jsou bezbranní,' usmáli se lovci a poklepali na své kuše. 'Nelovíme nic, co se nedokáže samo bránit. Vždyť copak by to byl nějaký sport?'"

"Fiend tedy opět kývl, a neprodleně se pustil do tří svých společníků. Lovci ho zprvu vedli na bezpečný lov, avšak nakonec byli sami chyceni a snědeni."~ */
  IF ~~ THEN REPLY #39651 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39652 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39653 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #39547 /* ~Yves se usmála. "Opravdu moc pěkný příběh, Nordome. Za odměnu mám také jeden pro tebe... jmenuje se 'Květiny a Vnímaví.'"~ */
  IF ~~ THEN REPLY #39654 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_12","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 60
  IF ~~ THEN REPLY #39655 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39656 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 66.10
  SAY #39548 /* ~"Byl jednou jeden muž a ten četl spoustu textů o knihách - eseje, hry, básně i naučné články - a cítil se tedy velice zběhlým v 'květinové problematice'. Jednoho dne procházel okolo poloslepého zahradníka, který se staral o zahrady Vnímavých. Kdo tedy nakonec byl ke květinám slepý?"~ */
  IF ~~ THEN REPLY #39657 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39658 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39659 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #39549 /* ~Yves se usmála. "Úchvatné, Dak'kone. Dovol abych ti pověděla jinou verzi tvého příběhu, kterou jsem kdysi slyšela..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 123
END

IF ~~ THEN BEGIN 62 // from: 66.9
  SAY #39550 /* ~Yves začala vyprávět rozličnou verzi Dak'konovy povídky, ve které byla Ach'ali vyhnána z githzeraiského města Shrak'at'lor pro své ustavičné bezvýznamné žvatlání...

"Jednoho dne potkala slaada, jak jde ke kameni páření. Kvapem před ním vztyčila zeď chaotické hmoty, kterou ani žravý slaad nedokázal překonat. Hladově tedy čekal a rozprávěl s ní skrze zeď. Ach'ali začala pokládat své nesmyslné otázky až se nakonec tak zabrala do svého bezúčelného povídání, že zapomněla na svou zeď a ta se jí před očima zhroutila... a tak se utopila ve hmotě sféry Limbo."
~ */
  IF ~~ THEN REPLY #39660 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39661 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39662 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #39551 /* ~Yves se usmála na Annah. "Ale já bych si opravdu moc ráda poslechla tvé vyprávění..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39663 /* ~"Prostě už ten příběh řekni, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39664 /* ~"Prosím, poděl se s námi o svůj příběh, Annah..."~ */ EXTERN ~DANNAH~ 196
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39665 /* ~"Prostě už ten příběh řekni, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DMORTE~ 420
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39666 /* ~"Prosím, poděl se s námi o svůj příběh, Annah..."~ */ EXTERN ~DMORTE~ 420
  IF ~~ THEN REPLY #39667 /* ~"Mám ještě další příběh na výměnu, Yves."~ */ GOTO 19
  IF ~~ THEN REPLY #39668 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39669 /* ~"Možná příště, zatím se měj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #39552 /* ~Yves se opět usmála. "To bylo opravdu úžasné Annah; neměla by ses stydět to někomu vyprávět. Teď ti povím zase jeden příběh já - jmenuje se 'Vyprahlá země.'"~ */
  IF ~~ THEN REPLY #39670 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_09","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 65
  IF ~~ THEN REPLY #39671 /* ~"Počkej... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39672 /* ~"Zbytek si poslechnu příště, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0 66.8
  SAY #39553 /* ~"Jednou byla jistá veliká vesnice zasažena úmornými vedry. Jeden farmář se vypravil ke kameni uctívání a opětovně ho vzýval o ukončení veder. Ptal se kamene, proč nic nedělá, když pole prahnou a umírají, proč musí lidé a zvířata trpět, zatímco je kámen jen pozoruje. 'Copak jsme neodevzdali dostatečnou oběť?' zeptal se farmář s rukama vztyčenýma v prosebném gestu. Avšak kámen neodpověděl; jen nečinně seděl a vrhal stín."~ */
  IF ~~ THEN REPLY #39673 /* ~"Mám ještě další příběh na výměnu."~ */ GOTO 19
  IF ~~ THEN REPLY #39674 /* ~"Mám pro tebe otázečku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39675 /* ~"Už asi budu muset jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 4.6
  SAY #39554 /* ~Yves kývla. "Kterou?"~ */
  IF ~  Global("Yves_Story_01","GLOBAL",1)
~ THEN REPLY #39676 /* ~"Příběhy popela."~ */ GOTO 22
  IF ~  Global("Yves_Story_02","GLOBAL",1)
~ THEN REPLY #39677 /* ~"Hodiny a kvadron."~ */ GOTO 25
  IF ~  Global("Yves_Story_03","GLOBAL",1)
~ THEN REPLY #39678 /* ~"Žadatel a brána."~ */ GOTO 32
  IF ~  Global("Yves_Story_13","GLOBAL",1)
~ THEN REPLY #39679 /* ~"Příběh o včelaři."~ */ GOTO 41
  IF ~  Global("Yves_Story_04","GLOBAL",1)
~ THEN REPLY #39680 /* ~"Zlatavá pověst."~ */ GOTO 44
  IF ~  Global("Yves_Story_05","GLOBAL",1)
~ THEN REPLY #39681 /* ~"Nápadník Paní."~ */ GOTO 46
  IF ~  Global("Yves_Story_06","GLOBAL",1)
~ THEN REPLY #39682 /* ~"Příběh o muži, který se nechtěl podělit o svůj zážitek."~ */ GOTO 49
  IF ~  Global("Yves_Story_07","GLOBAL",1)
~ THEN REPLY #39683 /* ~"Poprava."~ */ GOTO 52
  IF ~  Global("Yves_Story_09","GLOBAL",1)
~ THEN REPLY #39684 /* ~"Vyprahlá země."~ */ GOTO 65
  IF ~  Global("Yves_Story_10","GLOBAL",1)
~ THEN REPLY #39685 /* ~"Tvá verze příběhu o Ach'ali Utopené."~ */ GOTO 62
  IF ~  Global("Yves_Story_12","GLOBAL",1)
~ THEN REPLY #39686 /* ~"Květiny a Vnímaví."~ */ GOTO 60
  IF ~  Global("Iannis_Confessed","GLOBAL",2)
~ THEN REPLY #39687 /* ~"Příběh o otci, dceři a jejím milenci."~ */ GOTO 72
  IF ~~ THEN REPLY #39688 /* ~"Vlastně, měl bych otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39689 /* ~"Ale nic, Yves. Měj se."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 71 even though they appear after this state */
~  GlobalGT("Yves","GLOBAL",0)
~ THEN BEGIN 67 // from:
  SAY #39555 /* ~Yves se na tebe mile usmála. "Znovu tě vítám. Přišel jsi vyprávět příběhy?"~ */
  IF ~~ THEN REPLY #39690 /* ~"Ano, přišel."~ */ GOTO 19
  IF ~~ THEN REPLY #39691 /* ~"Ne, ale měl bych pár dotazů..."~ */ GOTO 4
  IF ~~ THEN REPLY #39692 /* ~"Vlastně jen tak procházím. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 4.3
  SAY #39556 /* ~Yves kývla. "Ano, ale už spolu nemluvíme a já bych o ní také neměla mluvit."~ */
  IF ~~ THEN REPLY #39693 /* ~"Měl bych ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39694 /* ~"Tak tedy sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.4
  SAY #39557 /* ~Yves usmívajíc se kývla hlavou. "Mluvila, děkuji ti."~ */
  IF ~~ THEN REPLY #39695 /* ~"Potěšení na mé straně. Měl bych ještě dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39696 /* ~"Zajisté. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 4.7 4.8 79.0
  SAY #39558 /* ~"O Ecco?" Yves se v zamyšlení zamračila. "Jednou jsem slyšela příběh o dívce, která znala slovo, jež by při vyřčení zničilo celý mnohovesmír. Možná že to je právě Ecco. Zeptej se Dolory, totiž... doneslo se ke mně, že se stýká s někým, kdo znal Ecco ještě před tím, než přestala mluvit."~ */
  IF ~~ THEN REPLY #39697 /* ~"Měl bych ještě další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #39698 /* ~"To by prozatím bylo vše, Yves. Měj se."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Yves","GLOBAL",0)
GlobalGT("Yvana","GLOBAL",1)
Global("Yves_Shared","AR0605",1)
Global("Iannis_Confessed","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #39559 /* ~Yves se na tebe mile usmála. "Znovu tě vítám. Narazila jsem na příběh, který bys možná rád slyšel. Mám ti ho povědět?"~ */
  IF ~~ THEN REPLY #39699 /* ~"Ano, prosím."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",2)
AddexperienceParty(3000)
~ GOTO 72
  IF ~~ THEN REPLY #39700 /* ~"Teď ne, měl bych pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #39701 /* ~"Jenom jsem tak šel kolem, Yves; Poslechnu si to později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 66.11 71.0
  SAY #39560 /* ~"Byl jednou jeden muž, velice slavný, jenž byl velice nešťastný pro své bohatství a postavení. Zemřela mu dcera, a to málo radosti ze života, co mu ještě zbývalo, bylo zastíněno jejím odchodem."~ */
  IF ~~ THEN REPLY #39702 /* ~"Pokračuj..."~ */ GOTO 73
  IF ~~ THEN REPLY #39703 /* ~"Vydrž... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39704 /* ~"Doposlechnu si to někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #39561 /* ~"A tak se stalo, že za ním jednoho dne přišel bývalý milenec jeho dcery a spolu si o ní poté povídali, což vrátilo otci světlo do jeho srdce. A jak tak čas letěl, objevili oba zcela odlišné věci, které by se mohly každá svým způsobem ukázat jako drahocenné."~ */
  IF ~~ THEN REPLY #39705 /* ~"Pokračuj..."~ */ GOTO 74
  IF ~~ THEN REPLY #39706 /* ~"Vydrž... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39707 /* ~"Doposlechnu si to někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #39562 /* ~"Ten první objevil, že se mu vrátila jiskra do života, a temnota zmizela z jeho očí i koutů jeho mysli."

"Ten druhý muž, milenec, objevil něco zcela nového, co mu mohlo posloužit na jeho cestách: lítost."
~ */
  IF ~~ THEN REPLY #39708 /* ~"Pokračuj..."~ */ GOTO 75
  IF ~~ THEN REPLY #39709 /* ~"Vydrž... Měl bych dotaz..."~ */ GOTO 4
  IF ~~ THEN REPLY #39710 /* ~"Doposlechnu si to někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #50722 /* ~"A je to lítost, která může změnit povahu člověka, říká se, i když asi jen Šedé sestry to ví určitě."

Yves na tebe kývla a usmála se. "Neznám význam tohoto příběhu, ale snad ti bude někdy v budoucnu k něčemu užitečný."~ */
  IF ~~ THEN REPLY #39711 /* ~"Děkuji. Teď bych se tě ještě rád na něco zeptal, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39712 /* ~"Díky, Yves. Teď už ale půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 53.0
  SAY #50723 /* ~"Rozsudek pro Kossacse pronesený Guvnery zněl: 'Uvěznění na třikrát třicet dní, během nichž vzdáš svůj život, budeš prohlášen za mrtvého a tvé tělo bude odstraněno, jakmile z něj vymizí všechny známky života.' Kossac se smál a vyzval kohokoliv z nich, aby mu zkusil ublížit, ale soud mlčel."~ */
  IF ~~ THEN REPLY #50724 /* ~"Pokračuj..."~ */ GOTO 77
  IF ~~ THEN REPLY #50725 /* ~"Počkej... měl bych otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #50726 /* ~"Zbytek si poslechnu někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #50727 /* ~"Nemilosrdní vedli Kossacse do jeho vězení a zamkli jej v tmavé, prázdné cele. Nebyla tam žádná palanda, žádné lampy a jediným vchodem byla ocelová mříž ve stropě.

Jakmile jej spustili do cely, Nemilosrdní mu řekli - v rohu své cely najdeš pohár. Je v něm jed. Tvá smrt bude rychlá."

"'Nechystáte se mě popravit?' Zavrčel Kossac na stráže."

"'Nikdo v Sigilu nevztáhne ruku s úmyslem ti ublížit,' zněla odpověď Nemilosrdných."~ */
  IF ~~ THEN REPLY #50729 /* ~"Pokračuj..."~ */ GOTO 54
  IF ~~ THEN REPLY #50728 /* ~"Počkej... měl bych otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #50730 /* ~"Zbytek si poslechnu někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 54.0
  SAY #50731 /* ~"Od mříže ve stropě se však neozývala žádná odpověď. Právě tehdy si Kossacs všiml, že v cele není žádné lehátko. Žádné lampy. A ani jídlo nebo voda. Vše, co nakonec zbylo, byl rozbitý pohár, jed byl pryč. A poprvé Kossacs poznal ledový dotek přicházející smrti.

"Po dvakrát třiceti dnech byla mříž otevřena a Kossacsovo tělo bylo, nyní studené, vyzvednuto z cely. Vzdal svůj život a poprava byla vykonána."~ */
  IF ~~ THEN REPLY #50732 /* ~"Mám další příběh, co s tebou budu sdílet."~ */ GOTO 19
  IF ~~ THEN REPLY #50733 /* ~"Měl bych pro tebe otázku, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #50734 /* ~"Teď už musím jít. Sbohem, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 18.0 18.1 18.2 18.3
  SAY #66763 /* ~"Počkej... je toho víc. I když můj příběh končí Ravelinou smrtí, někteří tvrdí, že čarodějnice stále žije. Mlčenlivá prostitutka o tom dřívě mluvila, ale teď už jenom mlčí. Kdyby mohla mluvit, možná by ti o Ravel řekla víc."~ */
  IF ~~ THEN REPLY #66764 /* ~"Co ještě mi můžeš říct o té mlčící prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 70
  IF ~~ THEN REPLY #66765 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #66766 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 18.4 18.5
  SAY #66767 /* ~"Počkej... je toho víc. I když můj příběh končí Ravelinou smrtí, někteří tvrdí, že čarodějnice stále žije. Třeba Ecco. Zeptej se jí na Ravel a možná ti toho prozradí víc."~ */
  IF ~~ THEN REPLY #66768 /* ~"Mám další otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #66770 /* ~"To je vše, co jsem chtěl vědět, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 19.2
  SAY #67895 /* ~Yves se k tobě naklonila a pozorně poslouchá příběh rodící Uličky... hltá každé slovo. Když jsi skončil, usmála se na tebe, pak na Nordoma. "Zapamatuju si ten příběh. A teď mám jeden pro tebe: Hodiny a Quadrone."~ */
  IF ~~ THEN REPLY #67897 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #67896 /* ~"Počkej... Mám otázku..."~ */ GOTO 4
  IF ~~ THEN REPLY #67898 /* ~"Poslechnu si zbytek někdy jindy, Yves. Sbohem."~ */ EXIT
END
