// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSALABSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSALABSH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48444 /* ~Vysoký štíhlý muž navlečený do těžké rudé róby má ve tváři ostré rysy. Uklonil se ti. "Já jsem Salabesh, občas zvaný  Salabesh Onyxový, budoucí magický cvičitel Občanské Haly. Předpokládám, že za mnou přicházíš obchodně?"~ */
  IF ~~ THEN REPLY #48445 /* ~"Ne... mám jenom pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #48446 /* ~"Ne, nemám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #48447 /* ~"A jaké, hmmm? Doufám, že ne o Čtvrti a podobně... na takové otázky ti může odpovědět kdokoli."~ */
  IF ~~ THEN REPLY #48448 /* ~"Proč ti říkají Onyxový?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48449 /* ~"Co jsi myslel tím budoucí magický cvičitel Haly?"~ */ JOURNAL #66221 /* ~Před Městskou Halou jsem potkal muže jménem Salabesh. Tvrdí, že brzy bude držet prestižní pozici magického cvičitele Haly, ale nejdřív musí najít způsob, jak dokázat, že je lepší, než současný držitel toho místa.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67858 /* ~"Už jsi podal žádost, abys byl jmenován novým učitelem mágů  Haly?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67859 /* ~"Takže... co se stalo s tvým nástupem na místo učitele mágů v Hale?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48450 /* ~"Ty jsi Mistr Kleteb? Možná bys - *škyt!* - mi mohl pomoct..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66247 /* ~"Znáš  prokletého muže jménem Smradodech?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~Dozvěděl jsem se, že Jumble Vraždosmysl proklel Smradodecha - toho zapáchajícího muže, kterého jsem potkal v Úlu  - a že ho najdu v Městské hale.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48451 /* ~"Ty jsi mág, který proklel toho herce támhle na ulici?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 10
  IF ~~ THEN REPLY #48452 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.1 5.1 6.2 7.1 8.2 10.1 11.1 12.0 14.1 15.1 16.0 17.0 18.0
  SAY #48453 /* ~Salabesh se uculil. "Nejsem překvapený."~ */
  IF ~~ THEN REPLY #48454 /* ~"Proč ti říkají Onyxový?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48455 /* ~"Co jsi myslel tím budoucí magický cvičitel Haly?"~ */ JOURNAL #66221 /* ~Před Městskou Halou jsem potkal muže jménem Salabesh. Tvrdí, že brzy bude držet prestižní pozici magického cvičitele Haly, ale nejdřív musí najít způsob, jak dokázat, že je lepší, než současný držitel toho místa.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67860 /* ~"Už jsi podal žádost, abys byl jmenován novým učitelem mágů  Haly?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67861 /* ~"Takže... co se stalo s tvým nástupem na místo učitele mágů v Hale?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48456 /* ~"Ty jsi Mistr Kleteb? Možná bys - *škyt!* - mi mohl pomoct..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66249 /* ~"Znáš  prokletého muže jménem Smradodech?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~Dozvěděl jsem se, že Jumble Vraždosmysl proklel Smradodecha - toho zapáchajícího muže, kterého jsem potkal v Úlu  - a že ho najdu v Městské hale.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48457 /* ~"Ty jsi mág, který proklel toho herce támhle na ulici?"~ */ GOTO 10
  IF ~~ THEN REPLY #48458 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48459 /* ~"Dlouhý příběh, ale zkrátím ho, abych si ušetřil dech. V mládí mi říkali Salabesh Zlatý, protože jsem prý měl zlaté srdce - malé, tvrdé a žluté. No, tak jsem toho blba, který s *tím* začal, proklel tak, že mohl mluvit jenom řití a vylučovat pusou. Přízvisko Onyxový přišlo podobně jako Zlatý, ale bylo o něco chytřejší. V každém případě jsem teď mnohem milejší chlápek... už nemám tolik chuti proklínat. Nejsem si jistý, jestli si to jméno ještě zasloužím."~ */
  IF ~  GlobalLT("Know_Salabesh","AR0600",2)
~ THEN REPLY #66250 /* ~"*Jakže* jsi ho proklel?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 14
  IF ~~ THEN REPLY #48460 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48461 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4 2.4 10.0 14.0
  SAY #48462 /* ~"Pomoct ti?" Salabesh si odfrkl. "Pochybuju." Než jsi stačil odpovědět, povzdychl si a poškrábal se na hlavě. "No...*možná* bych mohl. Takže co máš za problém?"~ */
  IF ~~ THEN REPLY #48463 /* ~"Jumble Vraždosmysl mě proklel."~ */ GOTO 5
  IF ~~ THEN REPLY #48464 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48465 /* ~"Jumble Vraždosmysl? Ha! Ten prskající moula mě *nikdy* nemůže překonat. I když ty bitvy, které jsme bojovali..." Salabesh se zamračil. "Ale to už je za námi. Už to není moje věc, víš. Opravdu nevím, co bych pro tebe mohl udělat... nakonec, je to *jeho* kletba. To není něco, co se dá najít na předmětu nebo tak, co by se dalo odstranit jednoduchou magií. Bude to muset udělat *on* a dobrovolně."~ */
  IF ~~ THEN REPLY #48466 /* ~"No, tak mohl bys mě teda naučit nějakou kletbu, kterou bych mohl použít na něj?"~ */ GOTO 6
  IF ~~ THEN REPLY #48467 /* ~"Tak to mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48468 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48469 /* ~"Hmm. No... normálně to nedělám. Nechávám si své kletby pro sebe, víš. A kromě toho, i jednoduchá kletba, to by zabralo spoustu času, než bys to pochopil - víc, než jsem ochotný ztratit."~ */
  IF ~~ THEN REPLY #48470 /* ~"Mohl bych ti zaplatit..."~ */ GOTO 7
  IF ~~ THEN REPLY #48471 /* ~"Možná máš jenom strach, že tvoje kletby už nejsou dost dobré, aby ho překonaly..."~ */ GOTO 8
  IF ~~ THEN REPLY #48472 /* ~"Tak to mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48473 /* ~"V tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48474 /* ~"Ne, ne... Zkrátka si to nepřeju." Salabesh se ti podíval přímo do oči. "A teď pane raději změň předmět hovoru, protože mě začínáš rozčilovat."~ */
  IF ~~ THEN REPLY #48475 /* ~"Možná máš jenom strach, že tvoje kletby už nejsou dost dobré, aby ho překonaly..."~ */ GOTO 8
  IF ~~ THEN REPLY #48476 /* ~"Dobrá. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48477 /* ~"Změnil jsem ho, Salabeshi. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48478 /* ~"*COŽE?* Podívej se, ty odporná hromado jizev, Salabesh Onyxový je *MISTR* Kleteb a žádný další není! Stačila by mi jedna fráze, aby byl z toho nekňuby totální impotent!"~ */
  IF ~~ THEN REPLY #48479 /* ~"Tak mě ji nauč..."~ */ GOTO 7
  IF ~~ THEN REPLY #48480 /* ~Stiskni rty a tvař se skepticky.~ */ DO ~SetGlobal("Know_Salabesh_Curse","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #48481 /* ~"Jo, to určitě. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48484 /* ~"Dobrá, dobrá... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #48485 /* ~"A dost! *Donutil* jsi mě k tomu!" Salabesh zadrmolil několik nemožných slabik... slov moci, které sis zapamatoval, abys je pak mohl použít na Jumbla. "Tak! A teď zkus, co to s ním udělá a pak mi řekni, že Salabesh Onyxový *není* Mistr Kleteb!"~ */
  IF ~~ THEN REPLY #48486 /* ~"Díky, Salabeshi, udělám to. Sbohem."~ */ JOURNAL #48487 /* ~Od Salabeshe Onyxového jsem se naučil krátkou kletbu, kterou bych měl použít na Jumbla Vraždosmysla.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.6 2.6
  SAY #48488 /* ~"Oh..." Salabesh zamhouřil oči. "*On.* Ano, proklel jsem ho a zasloužil si to! Urážel procházejícího mága! Jaký to musí být idiot, aby něco takového spáchal? *Říkal* si o to! Vždyť já *jsem* Salabesh Onyxový, Mistr Kleteb. Ale nemusíš se bát, kletba je neškodná. Když už nic, tak ještě vylepšuje to jeho ubohé představení."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #48489 /* ~"Ty jsi Mistr Kleteb? Možná bys - *škyt!* - mi mohl pomoct..."~ */ GOTO 4
  IF ~~ THEN REPLY #48490 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48491 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1
  SAY #48492 /* ~"Je to prestižní pozice, být oficiálním cvičitelem v Hale. Chci se jednoho dne stát magickým cvičitelem, ale zatím ten titul patří Paní Trnočesé. Kdybych jenom mohl nějak dokázat, že jsem lepší učitel..."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",2)
~ THEN REPLY #48493 /* ~"Vždycky můžeš použít fakt, že je závislá na senzorické kameny. Už snad ani nechce dál učit..."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",3)
~ JOURNAL #48496 /* ~Řekl jsem Salabeshovi, že Paní Trnočesá tráví veškerý svůj čas v senzoriu a už nechce dál učit. Chce její pozici pro sebe, ale nejsem si jistý, jestli bude dobrý učitel. Možná bych to měl říct Paní Trnočesé. Zaslouží si ještě jednu šanci. Musí se rozhodnout, jaké jsou její priority.~ */ GOTO 12
  IF ~~ THEN REPLY #48494 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48495 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #48497 /* ~Salabesh se škaredě usmívá. "Ale? A už nechce učit? Skvělé..." Tře si ruce jako padouch ze špatné hry, který uspěl v nějakém ďábelském plánu. "Tak to už brzy zažádám, abych dostal její místo."~ */
  IF ~~ THEN REPLY #48498 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #48499 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #48500 /* ~Vidíš Salabeshe Onyxového. Zběžně se ti uklonil.  "Hmm. Znovu stojíš přede mnou..."~ */
  IF ~~ THEN REPLY #48501 /* ~"Ano. Mám nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #48502 /* ~"Jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0
  SAY #66236 /* ~"Oh, ano... slyšel jsi správně." Salabesh šťatně vzdychl a usmál se sám pro sebe. "Kvůli takovým věcem jsem znám jako Mistr Prokletí, víš."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66237 /* ~"Mistr Prokletí? Možná bys mi - *hic!* - mohl pomoct..."~ */ GOTO 4
  IF ~~ THEN REPLY #66238 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #66239 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.5
  SAY #66240 /* ~"Smrado...? Hmmm." Salabeshovy oči se zamhouřily. "Oh, ano... toho muže proklel Jumble Vraždosmysl, jestli si dobře vzpomínám. Proč? Chceš zrušit tu kletbu? Hodně štěstí... protože to může udělat jenom Jumble."~ */
  IF ~  Global("Jumble","GLOBAL",0)
~ THEN REPLY #66241 /* ~"Kde bych našel toho Jumbla Vraždosmysla?"~ */ GOTO 16
  IF ~~ THEN REPLY #66243 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #66244 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66242 /* ~"Někde v Hale, řekl bych. Nízký tělnatý chlápek. Nikdy nemluví, takže z něj jenom těžko něco vymáčkneš."~ */
  IF ~~ THEN REPLY #66245 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #66246 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.2 2.2
  SAY #67852 /* ~Salabesh se zamračil. "Ne... Nedávno jsem poněkud rozzlobil magické vedení Haly a myslím, že bude lepší, když se svou žádostí chvíli počkám. Kromě toho, jsem si jistý, že 'Paní' Trnočesá ze senzoria jen tak nevyleze." Zasmál se.~ */
  IF ~~ THEN REPLY #67853 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #67854 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.3 2.3
  SAY #67855 /* ~"Pche! Ta pitomá ženská s prázdnou hlavou... Trnočesá se konečně dokopala a vylezla ze senzoria. Zase učí, takže jsem o svou šanci přišel. A už o tom nechci promluvit ani jediné slovo!" Salabesh si pod nosem mumlá temné kletby.~ */
  IF ~~ THEN REPLY #67856 /* ~"Tak to mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #67857 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
