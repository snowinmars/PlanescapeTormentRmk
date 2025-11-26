// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37792 /* ~Vidíš mírně obézního, staršího muže v ošuntělých šatech. Vypadá ustaraně a stále očima těká kolem. Všiml sis, že ztěžka dýchá a hodně se potí.~ */
  IF ~~ THEN REPLY #37804 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~~ THEN REPLY #37805 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37793 /* ~Lekl se tě a vystrašeně si tě prohlíží. "Ano, kámo?" Trochu se přikrčil, jako kdybys jej chtěl udeřit. "Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #37806 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37807 /* ~"No nic. Sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37794 /* ~"Otázky?" Potřásá hlavou. "Ty nejsi od obchodní inspekce?" Tečou z něj čůrky potu. ~ */
  IF ~~ THEN REPLY #37809 /* ~"Jaký obchod?"~ */ GOTO 3
  IF ~~ THEN REPLY #37810 /* ~"Chci jen odpovědi na pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #37812 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37795 /* ~Vypadá vyděšeně. Já... ty tu nejsi, abys koupil služebníka?" Dýchá čím dál tím hůře.~ */
  IF ~~ THEN REPLY #37813 /* ~"Ano, jsem."~ */ GOTO 4
  IF ~~ THEN REPLY #37815 /* ~"Ne, nejsem."~ */ GOTO 6
  IF ~~ THEN REPLY #37816 /* ~"Chceš někoho koupit?"~ */ GOTO 8
  IF ~~ THEN REPLY #37817 /* ~"Tak nic."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #37796 /* ~S vyděšeným výrazem si tě opatrně prohlíží. Jeho oči sledují hustou síť tvých jizev a potoky potu se mění v regulérní řeky. "Já... Myslím, že pro tebe nejsem tím správným sluhou, kámo." Setkal se s tvým pohledem.~ */
  IF ~~ THEN REPLY #37818 /* ~"No, a proč?"~ */ GOTO 5
  IF ~~ THEN REPLY #37819 /* ~"Jo, asi máš pravdu."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37797 /* ~Ztěžka polkl a začínají se mu třást ruce. "Žil jsem usedlým životem, kámo. Ty ale vypadáš jako pěknej drsňák. Pochybuju, že bych ti mohl být nějak užitečný..." Vypadá VELMI vyděšeně dýchá stále hůř. ~ */
  IF ~~ THEN REPLY #37820 /* ~"Jo, asi máš pravdu."~ */ GOTO 6
  IF ~~ THEN REPLY #37821 /* ~"Ne, myslím, že ty budeš stačit."~ */ DO ~Kill(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1 5.0 8.1
  SAY #37798 /* ~S ohlušující ranou mu spadl kámen ze srdce. Usmál se na tebe. "Pak ti přeji dobrý den, kámo." ~ */
  IF ~~ THEN REPLY #37822 /* ~"Mám nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #37823 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37800 /* ~Chvíli na tebe zíral a pak se mu začaly hrozně třást ruce. Otevřel pusu, aby něco řekl, ale už neřekl nic. Oči se mu rozšířily překvapením, chytil se za hrudník a tiše se sesunul k zemi.~ */
  IF ~~ THEN REPLY #37824 /* ~Pěkně po anglicku se vytrať.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #37801 /* ~Přikývl. "Jo, kámo. Ti z nás, které tu vidíš, jsou vinni menšími zločiny. Náš trest je otroctví podle smlouvy na několik let. Počet let závisí na spáchaném zločinu. Chceš někoho koupit?~ */
  IF ~~ THEN REPLY #37825 /* ~"Ano, jsem."~ */ GOTO 4
  IF ~~ THEN REPLY #37826 /* ~ "Ne, nejsem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 6.0 10.0
  SAY #37802 /* ~Se smutkem v očích zavrtěl hlavou. "Nemám ti co říct, kámo. Prosím tě, odejdi." Otočil se jinam.~ */
  IF ~~ THEN REPLY #37827 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37803 /* ~Vidíš stejného, mírně obézního, staršího muže. Ustaraně se rozhlíží a těká pohledem kolem. Vidíš, že dýchá ztěžka a hrozně se potí. Unaveně se usmívá. "Tak jsi tu zas, kámo. S čím ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #37828 /* ~"Mám nějaké otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #37829 /* ~"No nic. Sbohem."~ */ EXIT
END
