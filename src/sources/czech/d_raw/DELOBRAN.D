// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELOBRAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DELOBRAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #46012 /* ~Stará žena tě prozkoumala ostrýma, šedýma očima... nejprve tvou tvář, poté paže a některá tetování. "Zdravím tě, zjizvený. Přišel sis promluvit s Elobrande? Možná si necháš předpovědět budoucnost, za ubohých pět měďáků?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #46013 /* ~"Ano... řekni mi mou budoucnost..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #46014 /* ~"Ne, ale mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #46015 /* ~"Ne, děkuju. Sbohem, Elobrande."~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #46016 /* ~Elobrande si vzala tvé mince a chytla tvou dlaň. Tiše studuje tvou ruku, hluboce se přitom mračí. Nakonec po dlouhé době promluvila: "Někteří vzácní lidé jsou to, čemu se říká bez osudu. Procházejí svým životem, dělajíce si co chtějí, vytvářejíce si své vlastní budoucnosti. Nemáš žádný osud, který bych ti mohla předpovědět. Žádný. Nemám ti co říct... takže tady jsou tvé peníze." Vrátila ti pět měďáků.~ */
  IF ~~ THEN REPLY #46017 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46018 /* ~"Sbohem tedy."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #51349 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 5.1
  SAY #46019 /* ~"O pozemských věcech já nerozprávím, o zjizvený."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46020 /* ~"Možná že si budeš chtít promluvit o tomhle. Přečetl jsem si ten svitek. Byla na něm past."~ */ GOTO 6
  IF ~  PartyGoldGT(4)
Global("CW_Fortune","AR0600",0)
~ THEN REPLY #46021 /* ~"Tak mi pověz mou budoucnost..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46022 /* ~"V tom případě, sbohem."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #46023 /* ~"V tom případě, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.2
  SAY #46024 /* ~"Vydrž na chvíli, zjizvený..." Elobrande se natáhla a dotkla se tvé paže. "Má matka mi před dávnou dobou dala toto... svitek, zapečetěný voskem. Dal jí to muž v kápi a řekl, že si pro něj jednou přijde muž jako jsi ty, i když o tom nebude vědět... Na, tady máš."~ */
  IF ~~ THEN REPLY #46025 /* ~"Co je to?"~ */ DO ~GiveItemCreate("ScTrap",Protagonist,1,0,0)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46026 /* ~Elobrande zavrtěla hlavou, mračíce se přitom. "Já nevím. Matka přísahala, že ho nikdy neotevře a já poslechla její instrukce. Muž jí dobře zaplatil, ale varoval ji před hrozivými následky, kdyby svitek otevřela."~ */
  IF ~~ THEN REPLY #46027 /* ~"Tak teda dík. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #46028 /* ~Vidíš Elobrande, předpovídačku budoucnosti ."Zdravím tě zase jednou a opět, ó zjizvený."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46029 /* ~"Přečetl jsem si ten svitek. Byla na něm past."~ */ GOTO 6
  IF ~~ THEN REPLY #46030 /* ~"Mám nějaké otázky, Elobrande..."~ */ GOTO 2
  IF ~~ THEN REPLY #46031 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0
  SAY #46032 /* ~Elobrande vypadá zmatená. "Já... já nevím, co říct, zjizvený..."~ */
  IF ~~ THEN REPLY #46033 /* ~"Mohla bys začít s tím, že mi řekneš, jak jsi k té věci přišla."~ */ GOTO 7
  IF ~~ THEN REPLY #46034 /* ~"Není co *říct*, vážně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46035 /* ~"Jak jsem ti řekla, zjizvený... dostala jsem to od své matky. Před nějakými padesáti lety jí to předal muž v kápi, dobře jí zaplatil, ale varoval ji, aby to nikdy neotevírala, ať nastanou jakékoli okolnosti." Elobrande si povzdychla, na chvíli se dívala bokem. "Byla uživatelkou magie, mocná v Umění, ale z toho muže měla velký strach. Řekla, že jeho oči - jediné, co z něj viděla - mluvily o šílenství, a že maso kolem nich bylo popraskané a šedé... jako tvé. Víc o něm nevím."~ */
  IF ~~ THEN REPLY #46036 /* ~"To bude muset stačit. Sbohem."~ */ EXIT
END
