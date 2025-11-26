// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIRST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIRST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #58302 /* ~Vidíš vysoké štíhlé stvoření s dlouhými pažemi a špičatou hlavou. Z přerostlé tlamy vyčnívá několik tesáků, jeho prsty končí dlouhými drápy. Upřeně tě sleduje.~ */
  IF ~~ THEN REPLY #58304 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58305 /* ~Ignoruj stvoření.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58308 /* ~To stvoření se naklonilo dopředu a očichalo tě, pak do tebe píchlo prstem. Olízlo si rty. "Seš kapánek tvrdej, ale možná budeš docela chutnej."~ */
  IF ~~ THEN REPLY #58312 /* ~"Mám nějaké otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #58313 /* ~"Už budu muset jít, sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 6.0 7.0 8.2 9.1 10.1 11.0 12.0 13.1 14.0 16.1 17.0 18.0
  SAY #58314 /* ~Zubatě se na tebe usmál. "Konverzace před večeří je fajn. Co chceš vědět?"~ */
  IF ~~ THEN REPLY #58315 /* ~"Ty mě chceš sníst?"~ */ GOTO 3
  IF ~~ THEN REPLY #58316 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #58317 /* ~"Co jsi zač?"~ */ GOTO 8
  IF ~~ THEN REPLY #58318 /* ~"Co tady děláš?"~ */ GOTO 9
  IF ~~ THEN REPLY #58319 /* ~"Co mi můžeš říct o Carceri?"~ */ GOTO 12
  IF ~~ THEN REPLY #58320 /* ~"Co mi můžeš říct o těchhle katakombách?"~ */ GOTO 18
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #58321 /* ~"Je tady jeden podloudník, který chce, abys umřel."~ */ GOTO 13
  IF ~~ THEN REPLY #58322 /* ~"Už budu muset jít, sbohem."~ */ GOTO 15
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58323 /* ~Úsměv se ještě více rozšířil. "Jistě, jakmile skončím s tvými pitomými otázkami."~ */
  IF ~~ THEN REPLY #58324 /* ~"Můžeš to zkusit, ale umřeš na bolení břicha, protože ti ho rozpářu."~ */ GOTO 4
  IF ~~ THEN REPLY #58325 /* ~"Nechci ti ublížit."~ */ GOTO 5
  IF ~~ THEN REPLY #58326 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.1
  SAY #58327 /* ~Pokrčil rameny a odevzdaně mávl tlapou. "Risknu to."~ */
  IF ~~ THEN REPLY #58328 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58329 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58330 /* ~Pokrčil rameny a odevzdaně mávl tlapou. "To je škoda. Já chci zabít tebe."~ */
  IF ~~ THEN REPLY #58331 /* ~"Proč?"~ */ GOTO 6
  IF ~~ THEN REPLY #58332 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58333 /* ~Znovu pokrčil rameny. "Žádnej důvod... seš zkrátka na špatným místě ve špatný čas." Odmlčel se. "Nebo na správným místě ve správnou dobou." Zašklebil se. "To záleží na tom, jak to vezmeš."~ */
  IF ~~ THEN REPLY #58334 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58335 /* ~"Mě jde zabít jenom těžko, ale můžeš to zkusit, jestli chceš."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #58336 /* ~Zašťoural se v nose a podíval se na tebe. "Ghrist..." Dál tě pozoruje a prozkoumává svou nosní dutinu.~ */
  IF ~~ THEN REPLY #58337 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58338 /* ~"Už budu muset jít, sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58339 /* ~Zvedl tlapu a poškrábal se znuděně v podpaždí. "Gehreleth... Farastu."~ */
  IF ~~ THEN REPLY #58340 /* ~"Co je to gehreleth?"~ */ GOTO 16
  IF ~~ THEN REPLY #58341 /* ~"Co je to farastu?"~ */ GOTO 16
  IF ~~ THEN REPLY #58342 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58343 /* ~"Už budu muset jít, sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58344 /* ~Zívl, vlna odporného pachu otrávila tvé čichové buňky. "Hledám devu. Dobrý žrádlo. Vysaju mu morek z kostí."~ */
  IF ~~ THEN REPLY #58345 /* ~"Chceš sežrat Triase?"~ */ GOTO 10
  IF ~~ THEN REPLY #58346 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58347 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58348 /* ~Znuděně se podíval. "Ne, devu. Kašlu na nějakého triase."~ */
  IF ~~ THEN REPLY #58349 /* ~"Trias je jméno devy."~ */ GOTO 11
  IF ~~ THEN REPLY #58350 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58351 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58352 /* ~Pokrčil rameny a podrápal se na zadku. "Trias, šmias. Říkej mu jak chceš, pro mě je to svačinka. No, možná i večeře."~ */
  IF ~~ THEN REPLY #58353 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58354 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #58355 /* ~Otevřel tlamu a začal se drápem šťourat mezi zuby. "Domov. Můj domov, né tvůj. Nejseš v Carceri vítanej."~ */
  IF ~~ THEN REPLY #58356 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58357 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #58358 /* ~Prázdně se na tebe dívá, ale nakonec přikývne. "Vím... zkoušel jsem ho nedávno sežrat. Utekl. Zkoušel jsem ho nahánět, ale má to svý místo obrněný." Pokrčil rameny. "Jsem trpělivéj. Jednou udělá chybu."~ */
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",3)
~ THEN REPLY #58359 /* ~"Poslal mě, ať tě zabiju."~ */ GOTO 14
  IF ~~ THEN REPLY #58360 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58361 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58362 /* ~Vysmrkal se do dlaně a výsledek setřepal na zem. Utřel si ruku, než ti odpověděl. "Oh... další důvod zabít ho... a tebe."~ */
  IF ~~ THEN REPLY #58363 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58364 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #58365 /* ~Široce se zašklebil. "Dobře. Otázky mě nebaví, je čas jíst." Vrhl se do útoku.~ */
  IF ~~ THEN REPLY #58366 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0 8.1
  SAY #58367 /* ~Říhnul, příšerný pach zaplnil vzduch. Líně na sebe ukázal. "Jsem gehreleth. Moje stanice je farastu." ~ */
  IF ~~ THEN REPLY #58368 /* ~"Jaké další stanice jsou?"~ */ GOTO 17
  IF ~~ THEN REPLY #58369 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58370 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58371 /* ~Lenivě si prohlíží dráp. "Nemusíš to vědět, jelikož jsem poslední gehreleth, kterýho uvidíš."~ */
  IF ~~ THEN REPLY #58372 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58373 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #58374 /* ~Rozhlédl se kolem, pak pokrčil rameny. "Nic. Vlezl jsem sem, protože hledám devu."~ */
  IF ~~ THEN REPLY #58375 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58376 /* ~"Sbohem."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
