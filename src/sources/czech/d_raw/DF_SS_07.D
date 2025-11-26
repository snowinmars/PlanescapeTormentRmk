// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_07~

IF ~  !Global("S_Stone","AR0603",7)
!Global("S_Stone","AR0603",14)
~ THEN BEGIN 0 // from:
  SAY #34218 /* ~Je to nezvyklý světlemodrý kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47475 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",7)
~ THEN BEGIN 1 // from:
  SAY #47476 /* ~Tenhle světle modrý kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'nadpřirozené touhy.'~ */
  IF ~~ THEN REPLY #47477 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47478 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47479 /* ~Souložíš se sukubou, bytostí tak žhavě smyslnou a nadpozemsky krásnou, že ti ani nevadí její ďábelské rohy a do stran se míhající ocas. Sténá pod tebou... a ty po ní tolik toužíš, tak moc, že celá tvá mysl se soustředí jen na ni a milování s ní. V okamžiku život v tobě explodoval v zářivém plameni hvězd a ty slyšíš rozkošnický smích sukuby, když tě vysává a opouští bezduchou schránku tvého těla...~ */
  IF ~  Global("Sensation07","AR0603",0)
~ THEN REPLY #47480 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation07","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation07","AR0603",1)
~ THEN REPLY #47481 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",14)
~ THEN BEGIN 3 // from:
  SAY #47482 /* ~Tenhle světle modrý kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'naprostého zmatku.'~ */
  IF ~~ THEN REPLY #47483 /* ~Začni vjem.~ */ GOTO 4
  IF ~~ THEN REPLY #47484 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47485 /* ~Probudil ses z těžkého snu do zatuchlé skutečnosti svého doupěte, zjišťuješ, že jsi nevelká masitá věc se čtveřicí kroutících se chapadel. Ležíš na svých nechráněných zádech bez krunýře a když zvedneš svou maličkou hlavu - jen se dvěma prostými smyslovými orgány, to málo, co vidíš, je tvé narůžovělé břicho, částečně pokryté měkkými zakroucenými chlupy, úplně odlišnými od zježených černých štětin, jaké jsi zvyklý tam vídat. Tvé dvě - jen dvě! - nohy ti nyní vyrůstají z konce těla, místo okolo celého břicha. Vůči tvému tělu vypadají tlustě a neohrabaně. Bezvládně leží, jakoby ani nebyly tvoje - jen s urputným soustředěním jsi schopen jimi pohnout. Co se ti to *stalo*?~ */
  IF ~  Global("Sensation14","AR0603",0)
~ THEN REPLY #47486 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation14","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation14","AR0603",1)
~ THEN REPLY #47487 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47488 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47489 /* ~Odejdi.~ */ EXIT
END
