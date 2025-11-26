// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1664.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1664~

IF ~  True()
~ THEN BEGIN 0 // from: 5.0
  SAY #47002 /* ~Obrovská mrtvola tiše stojí v rohu místnosti, tváří ke stěně. Vypadá, že v dřívějších časech to byl zavalitý muž. Podle stavu těla soudíš, že zemřel teprve nedávno. Čerstvě vyšité číslo na jeho čele hlásí "1664." Tahle mrtvola vypadá, že slouží jako knihovník, podle ohromné hromady knih, které drží v náručí.~ */
  IF ~  Global("Page_Taken","GLOBAL",0)
~ THEN REPLY #47003 /* ~Prohlédni knihy.~ */ GOTO 3
  IF ~  Global("Page_Taken","GLOBAL",1)
~ THEN REPLY #47004 /* ~Znovu prohlédni knihy.~ */ GOTO 6
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #47005 /* ~"Vím, že nejsi zombie, rozumíš. Nikoho neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #47006 /* ~Užij na mrtvolu svou schopnost Kosti-vyprávějte.~ */ GOTO 2
  IF ~~ THEN REPLY #47007 /* ~"Bylo skvělé si s tebou popovídat. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #47008 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 6.0
  SAY #47009 /* ~Mrtvola zírá prázdně do zdi.~ */
  IF ~~ THEN REPLY #47010 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #47011 /* ~Mrtvola se nehýbá. Navzdory skutečnosti, že je mrtvá teprve chvíli, nezdá se schopna odpovědět na některou z tvých otázek.~ */
  IF ~~ THEN REPLY #47012 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #47013 /* ~Knihy vypadají jako staré účetní knihy Márnice bez jakéhokoli zvláštního významu. Nicméně, jak sis prohlížel jednotlivé texty, objevil jsi volný list vložený mezi dvě knihy. Náhle tě přepadl pocit, že jej tam někdo dal jako do úkrytu.~ */
  IF ~~ THEN REPLY #47014 /* ~Vezmi stránku.~ */ DO ~GiveItemCreate("Logpage",Protagonist,1,0,0)
SetGlobal("Page_Taken","GLOBAL",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47015 /* ~Stránka nevypadá jako vytržená z účetních knih... spíš byla součástí nějakých záznamů. Odtržení je rovně oříznuté jakoby nožem, proto předpokládáš, že stránka byla odstraněna úmyslně.~ */
  IF ~~ THEN REPLY #47016 /* ~Přečti si to. ~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47017 /* ~Pročíst se celou stránkou ti zabralo trochu času... je to seznam mrtvých těl přinesených do Márnice a zaznamenaných v Přijímací místnosti. Všechna přihlášení vypadají jako z nedávné doby.

POZNÁMKA: Aby sis "přečetl" zprávy, knihy nebo svitky, ulož je do svého inventáře, klikni na ně pravým tlačítkem a zobrazí se ti panel s informacemi.~ */
  IF ~~ THEN REPLY #47018 /* ~Prozkoumej zombie znova.~ */ GOTO 0
  IF ~~ THEN REPLY #47019 /* ~Odejdi a vezmi si stránku s sebou.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #47021 /* ~Knihy vypadají jako staré účetní knihy Márnice bez jakéhokoli zvláštního významu. Ještě jednou je prohledáváš, ale už jsi nenašel nic dalšího.  ~ */
  IF ~~ THEN REPLY #47022 /* ~"Tak jak ses stal knihovníkem? Všechna ostatní místa byla obsazená?"~ */ GOTO 1
  IF ~~ THEN REPLY #47023 /* ~Opusť zombie v míru.~ */ EXIT
END
