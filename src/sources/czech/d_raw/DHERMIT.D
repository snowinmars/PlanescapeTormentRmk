// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHERMIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHERMIT~

IF ~  Global("Know_Hermit","GLOBAL",0)
CreatureInArea("AR0708")
~ THEN BEGIN 0 // from:
  SAY #57262 /* ~Vidíš špinavého muže, shrbeného věkem. Jeho dlouhé špinavé vlasy mu splývají až na ramena. Když tě uviděl, oči se mu rozšířily hrůzou. Jeho prsty začaly vytvářet arkánní vzorec...~ */
  IF ~~ THEN REPLY #57263 /* ~"To je v pořádku... nechci ti ublížit."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #57264 /* ~Zaútoč na něj, než stihne dokončit kouzlo.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57265 /* ~Počkej, co se stane.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
END

IF ~  Global("Know_Hermit","GLOBAL",1)
CreatureInArea("AR0708")
~ THEN BEGIN 1 // from:
  SAY #57266 /* ~Poustevník uskočil, rukou mává v arkánním vzorci. "Odstup, hnusné stvoř... ó, to jsi ty. Co chceš od starého poustevníka tentokrát?"~ */
  IF ~~ THEN REPLY #57267 /* ~"Pověz mi o sobě."~ */ GOTO 3
  IF ~~ THEN REPLY #57268 /* ~"Pověz mi o tomhle místě."~ */ GOTO 4
  IF ~~ THEN REPLY #57269 /* ~"Hledám devu."~ */ GOTO 5
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.2
  SAY #57271 /* ~"Ach, další návštěva, eh? Všichni chcete vystrašit starýho poustevníka k smrti, eh? Tyhle tunely nejsou zrovna vhodný místo na procházku. Co ode mě chceš?"~ */
  IF ~~ THEN REPLY #57272 /* ~"Hledám devu."~ */ GOTO 5
  IF ~~ THEN REPLY #57273 /* ~"Co je tady dole?"~ */ GOTO 4
  IF ~~ THEN REPLY #57274 /* ~"Po tom ti nic není."~ */ GOTO 6
  IF ~~ THEN REPLY #57275 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.3 4.0 5.1
  SAY #57277 /* ~Hlasitě si povzdechl, pak divoce zakroutil hlavu a rozhlédl se. "Přišel jsem do Curstu, protože můj bůh byl zavržen do Carceri. Blížím se k němu celou dobu, ale do vězeňský sféry za ním nepudu. Snažím se najít způsob, jak ho dostat ven. A jelikož je to bůh dobra, neměl by tam být, ale takhle zavržení funguje."~ */
  IF ~~ THEN REPLY #57278 /* ~"Jak dlouho jsi tady?"~ */ GOTO 7
  IF ~~ THEN REPLY #57279 /* ~"Neviděl jsi tady náhodou někde kolem devu?"~ */ GOTO 5
  IF ~~ THEN REPLY #57280 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 4
  IF ~~ THEN REPLY #57281 /* ~"Jsi kněz? Mohl bych dostat nějaké léčení?"~ */ DO ~StartStore("Hermit",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57282 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.2 5.0
  SAY #57283 /* ~"Tohle místo? Je plný monster a kriminálníků a dalších lidí, co by jenom ubližovali. Ale furt je to bezpečnější, než město nahoře. Tady dole aspoň víš, na čem jseš. Tam nahoře? Ani náhodou."~ */
  IF ~~ THEN REPLY #57284 /* ~"Co tady dole vůbec děláš?"~ */ GOTO 3
  IF ~~ THEN REPLY #57285 /* ~"Neviděl jsi tady někde devu?"~ */ GOTO 5
  IF ~~ THEN REPLY #57286 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.0 3.1 4.1
  SAY #57287 /* ~"Slyšel jsem o tom drby, ale na vlastní voči sem nic neviděl. Myslim, že bude někde v podzemí, páč todle místo drží za mřížema spoustu dobrej věcí, ale nemůžu ho najít. Kdybych ho našel, zeptal bych se ho na svýho boha." Vydal ze sebe další rachotivý povzdech a podíval se chodbou do dálky. "Mám nějak pocit, že je na západ odsud. Ale eště sem ho nenašel. Musí tam mít hlídače." Mrknul na tebe.~ */
  IF ~~ THEN REPLY #57288 /* ~"Co mi můžeš říct o tomhle místě?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #57289 /* ~"Co tady dole vůbec děláš?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #57290 /* ~"Díky. Sbohem."~ */ DO ~GiveItem("SPWI704",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #57291 /* ~"Hmff! Vylekáš starýho muže jen tak pro nic za nic. Běž, padej!" Mávl rukou a pajdá někam do podzemí.~ */
  IF ~~ THEN REPLY #57292 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #57293 /* ~"Až moc dlouho, ve službách boha, kterej je už zapomenutej. Ale já si ho pamatuju... najdu ho, i kdybych se tady s těma bestiema měl nahánět pořád. Najdu ho." Dál si mumlá pod vousy, pohled má upřený do dálky.~ */
  IF ~~ THEN REPLY #57294 /* ~"Děkuju ti za tvůj čas. Sbohem."~ */ EXIT
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY #57295 /* ~Vidíš špinavého muže, shrbeného věkem. Jeho dlouhé špinavé vlasy mu splývají až na ramena. Když tě uviděl, zavolal: "Kyse mi řekl, že tu někde budeš. Deva je silnej, poutníku, silnej. Jestli půjdeš přímo před něj, podepisuješ si rozsudek smrti. Můžeš ho oslabit, když oslabíš chaos tady ve městě... on se jím živí."~ */
  IF ~~ THEN REPLY #57296 /* ~"Jak to víš?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57297 /* ~"Stejně jdu nahoru."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57298 /* ~"Uhni mi z cesty, dědku."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #57299 /* ~Vidíš špinavého muže, shrbeného věkem. Jeho dlouhé špinavé vlasy mu splývají až na ramena. Když tě uviděl, zavolal: "Kyse mi řekl, že tu někde budeš. Deva je silnej, poutníku, pořád silnej. Trochu jsi ho oslabil, ale to nestačí. Můžeš ho oslabit, když oslabíš chaos tady ve městě... on se jím živí."~ */
  IF ~~ THEN REPLY #57300 /* ~"Jak to víš?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57301 /* ~"Jsem na něj připravený."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57302 /* ~"Uhni mi z cesty, dědku."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY #57303 /* ~Vidíš špinavého muže, shrbeného věkem. Jeho dlouhé špinavé vlasy mu splývají až na ramena. Když tě uviděl, zavolal: "Kyse mi řekl, že tu někde budeš. Děláš dobrou práci, hodně jsi toho andělskýho lumpa oslabil. Chaos se uklidňuje a jeho plán moc nevychází. Jdi tam a dodělej ho."~ */
  IF ~~ THEN REPLY #57304 /* ~"Jak to víš?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57305 /* ~"Ano. Sbohem."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #57306 /* ~Vidíš starého poustevníka z podzemí. Když tě uviděl, zavolal: "Kyse mi řekl, že tu někde budeš. Deva je silnej, poutníku, silnej. Jestli půjdeš přímo před něj, podepisuješ si rozsudek smrti. Můžeš ho oslabit, když oslabíš chaos tady ve městě... on se jím živí."
~ */
  IF ~~ THEN REPLY #57307 /* ~"Jak to víš?"~ */ GOTO 14
  IF ~~ THEN REPLY #57308 /* ~"Stejně jdu nahoru."~ */ GOTO 15
  IF ~~ THEN REPLY #57309 /* ~"Uhni mi z cesty, dědku."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #57310 /* ~Vidíš starého poustevníka z podzemí. Když tě uviděl, zavolal:  "Kyse mi řekl, že tu někde budeš. Deva je silnej, poutníku, pořád silnej. Trochu jsi ho oslabil, ale to nestačí. Můžeš ho oslabit, když oslabíš chaos tady ve městě... on se jím živí."~ */
  IF ~~ THEN REPLY #57311 /* ~"Jak to víš?"~ */ GOTO 14
  IF ~~ THEN REPLY #57312 /* ~"Jsem na něj připravený."~ */ GOTO 15
  IF ~~ THEN REPLY #57313 /* ~"Uhni mi z cesty, dědku."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #57317 /* ~Vidíš špinavého muže, shrbeného věkem. Jeho dlouhé špinavé vlasy mu splývají až na ramena. Když tě uviděl, zavolal: "Kyse mi řekl, že tu někde budeš. Děláš dobrou práci, hodně jsi toho andělskýho lumpa oslabil. Chaos se uklidňuje a jeho plán moc nevychází. Jdi tam a dodělej ho."~ */
  IF ~~ THEN REPLY #57315 /* ~"Jak to víš?"~ */ GOTO 14
  IF ~~ THEN REPLY #57316 /* ~"Ano. Sbohem."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.0 9.0 10.0 11.0 12.0 13.0
  SAY #57318 /* ~"*Cítím* ho tam nahoře, jak tam nasává moc z chaosu. *Slyším* ho, jak uvažuje, jestli přijdeš. Touží po střetnutí."~ */
  IF ~~ THEN REPLY #57319 /* ~"Tak to ho brzy bude mít, ale teď ještě ne. Sbohem."~ */ GOTO 15
  IF ~~ THEN REPLY #57320 /* ~"Bude ho mít."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 8.1 9.1 10.1 11.1 12.1 13.1 14.0 14.1
  SAY #57321 /* ~"Než půjdeš... přijmeš požehnání starého muže? Může ti pomoci proti devovi a dalším potvorám, které potkáš. Chceš, abych tě vyléčil?"~ */
  IF ~~ THEN REPLY #57322 /* ~"Ne, dík."~ */ GOTO 18
  IF ~~ THEN REPLY #57323 /* ~"Ne. A teď mi uhni z cesty."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57324 /* ~"Ano."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57325 /* ~"Ano."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 8.2 9.2 11.2 12.2
  SAY #57326 /* ~Uchopil tě překvapivě silnou rukou. "Než půjdeš, přijmeš ode mně požehnání? I když se mi nelíbí ten tvůj zjizvenej ksicht, je mou povinností pomoci ti... tady nejde jenom o tebe. Nech mě, ať vyléčím tvé rány."~ */
  IF ~~ THEN REPLY #57327 /* ~"Nechci tvé požehnání. Jdi mi z cesty."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57328 /* ~"Dobrá."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57329 /* ~"Dobrá."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57331 /* ~"Tak si to zapamatuj, až budeš ležet před ním a krvácet." Zašklebil se." I když bych to radši neřekl, přeju ti hodně štěstí."~ */
  IF ~~ THEN REPLY #57332 /* ~"Jo, díky. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.0
  SAY #57334 /* ~"No, je to tvoje hlava. Nezklamej, zjizvenče." Uklonil se ti.~ */
  IF ~~ THEN REPLY #57335 /* ~"Díky. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 16.1
  SAY #57338 /* ~Zavřel oči a soustředil se. Řekl: "Dovol mi vyléčit tvá zranění." Otevřel oči. "Teď jdi."~ */
  IF ~~ THEN REPLY #57340 /* ~"Díky."~ */ DO ~FullHeal(Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 16.2 21.0 21.1 21.2 21.3 21.4 21.5 21.6 21.7
  SAY #57342 /* ~"Kdo potřebuje mou pomoc?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57344 /* ~"Já."~ */ DO ~FullHeal(Protagonist)
~ GOTO 21
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57349 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57351 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 21
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57355 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 21
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57356 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 21
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57358 /* ~"Fall-from-Grace."~ */ DO ~FullHeal("Grace")
~ GOTO 21
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57360 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 21
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57362 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 21
  IF ~~ THEN REPLY #57366 /* ~"Žádný z nás. Ale díky za požehnání. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6 20.7
  SAY #57367 /* ~"Tak. Někdo další má pro mě nějaká zranění?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57368 /* ~"Já."~ */ DO ~FullHeal(Protagonist)
~ GOTO 20
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57369 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57370 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 20
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57372 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 20
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57373 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 20
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57374 /* ~"Fall-from-Grace."~ */ DO ~FullHeal("Grace")
~ GOTO 20
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57375 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 20
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57376 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 20
  IF ~~ THEN REPLY #57377 /* ~"Žádný z nás. Ale díky za požehnání. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3 2.4
  SAY #68484 /* ~"Jo? Tak fajn. Mám támhle místo, kde si můžeš lehnout... Dám ti vědět, kdyby tady přilezly nějaké potvory..."~ */
  IF ~~ THEN REPLY #32017 /* ~"Díky."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END
