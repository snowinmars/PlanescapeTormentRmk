// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3204 /* ~Gentleman je zvláštní pouze tím, že má monokl, jako by mu někdo vrazil pěstí. Lehce se ti uklonil. "Zdravím, pane."~ */
  IF ~~ THEN REPLY #3205 /* ~"Zdravím. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #40154 /* ~"Zdravím, a sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40155 /* ~"Buď pozdraven ještě jednou, pane."~ */
  IF ~~ THEN REPLY #40156 /* ~"Zdravím. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #40157 /* ~"Zdravím, a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.2 4.2 5.1 6.0 7.1 8.1 9.0 10.1 11.0 12.0 13.1 14.0 15.0 16.0 17.0
  SAY #40158 /* ~Přikyvuje. "Ano, pojďme na to..."~ */
  IF ~~ THEN REPLY #40159 /* ~"Jak to, že máš monokl?"~ */ GOTO 3
  IF ~~ THEN REPLY #40160 /* ~"Co tu děláš?"~ */ GOTO 7
  IF ~~ THEN REPLY #40161 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40162 /* ~"Co mi můžeš říct o tiché prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 11
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68125 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ GOTO 11
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40163 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ GOTO 12
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40164 /* ~"Pokouším se najít Vivianinu voňavku... nevíš náhodou, kde by mohla být?"~ */ GOTO 13
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40165 /* ~"Hledám Marissin Karmínový závoj... nevíš, kde může být?"~ */ GOTO 15
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40166 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 16
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40167 /* ~"Mluvil jsem již s devíti prostitutkami... Nevíš náhodou, kdo, nebo kde je desátá?"~ */ GOTO 17
  IF ~~ THEN REPLY #40168 /* ~"Vážně mi to nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40169 /* ~Zašklebil se. "Ale ne, je to dlouhý příběh, pane. Myslí, že by vás nezaujal."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 426
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40170 /* ~"Ale já chci... prosím, řekni."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40171 /* ~"Dobře. Mám další otázku..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40172 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #40173 /* ~Muž si povzdechl a převrátil oči. "Dobře tedy... ale nebudu zacházet do přílišných detailů. Navzdory mým dřívějším poznámkám o délce příběhu, ho mohu zkrátit do dvou slov: Kimasxi Zmijíjazyk."~ */
  IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN REPLY #40174 /* ~"Kdo?"~ */ GOTO 5
  IF ~  GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40175 /* ~"Oh... ano, znám ji."~ */ GOTO 6
  IF ~~ THEN REPLY #40176 /* ~"Vím. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40177 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40178 /* ~"Ah, vidím, že jsi s ní ještě nehovořil. Povím vám jen jedno, že Kimasxi patří mezi ty velmi rozkošné, dobrý pane... bylo by na místě, kdyby jste si s ní pohovořil sám. Je to jedna ze zdejších prostitutek a kouzelná studentka Lady Grace." Zasmál se na tebe.~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40179 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40180 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40181 /* ~"Tak ji tedy jdu najít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #40182 /* ~Muž si zasněně povzdechne. "Nádherná, co říkáš?" Náhle však zpozorní. "Ale počkej! Neber můj projev jako zalíbení, dobrý pane... jsem již ženat s ženou, kterou opravdu miluji. Ale Kimasxi... ona je tak... je to tak *jiné* s ní hovořit." zasmál se.~ */
  IF ~~ THEN REPLY #40183 /* ~"Jiné... ano. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40184 /* ~"Prozatím tě opustím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #40185 /* ~"Proč, užívám si rozkoše Nevěstince! Ty ne?"~ */
  IF ~~ THEN REPLY #40186 /* ~"Rozkoše?"~ */ GOTO 8
  IF ~~ THEN REPLY #40187 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40188 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40189 /* ~"Ano, asi tak nějak... nejsi tu na to, abys tu hovořil s dámami, pane? To je, konec konců, účel této organizace, pokud jde o zákazníky. Rozprávění s milými studentkami Lady Grace!"~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40190 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40191 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40192 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 8.0 10.0
  SAY #40193 /* ~Muž přikývl. "Ano, jak je jen báječná. Proč bych jinak chtěl poslouchat její hlas celé hodiny! Myslím, že jen Kimasxi je víc zábavná..." Jeho mysl na chvíli někam zabloudila. "Oh! Ale jak jsem řekl, Lady Grace je majitelka Nevěstince. Nepochybně tu někde je... běž si s ní promluvit sám. Ujišťuji tě, že nebudeš zklamaný."~ */
  IF ~~ THEN REPLY #40194 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40195 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #40196 /* ~"Cože, obyvatel Sigilu neví o Nevěstinci Duševních Rozkoší? Ty tu musíš být jistě nový, pane." Povzdechl si. "Jde tu o... konverzaci s dámami. Když se zajímáš o historii toho všeho, odporoučím ti pohovořit si s Lady Grace."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40197 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40198 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40199 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #40200 /* ~Muž zmlkne a přemýšlí. "Nikdy jsem s ní neprohodil ani slovo, ale myslím, že její jméno je 'Ecco.'"~ */
  IF ~~ THEN REPLY #40201 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40202 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY #40203 /* ~"Ravel... Ravel... myslíš tu legendární čarodějnici? Je těžké uvěřit, že tato nestvůrná bytost byla *něčí* matka, natož laskavé Kesai."~ */
  IF ~~ THEN REPLY #40204 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40205 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #40206 /* ~"Ztratila svůj parfém? Jak zvláštní... potkal jsem se s ní před hodinou, a voněla celkem pěkně. Jako obvykle, samozřejmě. Popravdě, nejsem si jistý, jestli existuje žena s více svůdnou vůní."~ */
  IF ~~ THEN REPLY #40207 /* ~

"Vlastně je to její *vlastní* vůně, která se ztratila."~ */ GOTO 14
  IF ~~ THEN REPLY #40208 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40209 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40210 /* ~"Je to možné? Nemám tušení, jak se takové něco mohlo stát. Doufám, že ji dostane zpět!"~ */
  IF ~~ THEN REPLY #40211 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40212 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #40213 /* ~"Ne, nevím. Musím přiznat, že Marissa mě trochu děsí. Domnívám se, že něco strašného čeká uvnitř její komůrky a je tak humorná, až mě rozpláče. Byl bych rád, kdyby měla svůj závoj a střetávala by se se zákazníky mimo její temné komůrky."~ */
  IF ~~ THEN REPLY #40214 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40215 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.8
  SAY #40216 /* ~"Všechno, co vím o Ravel, jsou jen takové dětské historky... že je neuvěřitelně ošklivá a že přenesla hněv Paní Bolesti na sebe a byla navždy vypuzena."~ */
  IF ~~ THEN REPLY #40217 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40218 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.9
  SAY #40219 /* ~"Deset? Deset studentek... deset prostitutek... hmmm. Ne, nemůžu říct, že o nějaké vím, natož kdo by to mohl být."~ */
  IF ~~ THEN REPLY #40220 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40221 /* ~"Už půjdu. Sbohem."~ */ EXIT
END
