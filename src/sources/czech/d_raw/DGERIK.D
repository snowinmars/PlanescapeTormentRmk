// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGERIK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGERIK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58157 /* ~Vidíš mladého muže s obličejem jako krysa. Pozorně tě sleduje, odhaduje každý tvůj pohyb zkušeným okem.~ */
  IF ~~ THEN REPLY #58158 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58159 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58160 /* ~Pohladil se po tváři. Máš pocit, že hledá tvé slabiny. "Ano, zdravím, tvrďáku... Vítej v našem domě. Co chceš od Gerika?"~ */
  IF ~~ THEN REPLY #58161 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58162 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 6.0 9.0 12.0
  SAY #58163 /* ~"Ptej se... Ptej se..." Usmál se na tebe.~ */
  IF ~~ THEN REPLY #58164 /* ~"Kdo jsi?~ */ GOTO 3
  IF ~~ THEN REPLY #58165 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~~ THEN REPLY #58166 /* ~"Hledám devu, nevíš, kde bych ho našel?"~ */ GOTO 10
  IF ~~ THEN REPLY #58167 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58168 /* ~"My jsme Gerik. Řekli jsme ti to... nebo ne?" Pozdvihl obočí.~ */
  IF ~~ THEN REPLY #58169 /* ~"Proč o sobě mluvíš jako o *nás*?"~ */ GOTO 4
  IF ~~ THEN REPLY #58170 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58171 /* ~"Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #58172 /* ~Zamračil se na tebe. "Protože je nás více než jeden..." Podíval se doleva a doprava, pak upřel pohled na tebe." Copak nás nevidíš?" Ukázal rukama na obě strany.~ */
  IF ~~ THEN REPLY #58173 /* ~"Ano, už vás vidím. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58174 /* ~"Uh... ne, jsme tady jenom ty a já."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58175 /* ~Zamračil se, pak se naklonil na obě strany a něco zašeptal neviditelným společníkům. Po chvíli vrátil pozornost k tobě. "Jsme z toho zmatení. Možná jsi nemocný. Možná ti můžeme pomoct." Usmál se na tebe.~ */
  IF ~~ THEN REPLY #58176 /* ~"Ah... tady jsou. Promiň, před tím jsem si tvých společníků nevšiml. Už je vidím."~ */ GOTO 6
  IF ~~ THEN REPLY #58177 /* ~"Myslím, že pomoc potřebuješ ty."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58178 /* ~Usmál se a přikývl. "Dobře... dobře. Všechno je fajn a my jsme šťastní. Máš ještě nějaké další otázky?"~ */
  IF ~~ THEN REPLY #58179 /* ~"Ano."~ */ GOTO 2
  IF ~~ THEN REPLY #58180 /* ~"Ne,budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #58181 /* ~Hluboce se zamračil. "To nás vyrušuje... měl bys odejít, musíme si to promyslet." Ignoruje tě.~ */
  IF ~~ THEN REPLY #58182 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #58183 /* ~Rozhlédl se kolem, pak se zadíval na něco v dálce. "Tohle místo je náš letní byt... máme to tu rádi. Zvuky vln nás velice uklidňují."~ */
  IF ~~ THEN REPLY #58184 /* ~"Proč o sobě mluvíš jako o *nás*?"~ */ GOTO 4
  IF ~~ THEN REPLY #58185 /* ~"Vlny? Jaké vlny?"~ */ GOTO 9
  IF ~~ THEN REPLY #58186 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #58187 /* ~"Jaké vlny?" Vypadá naštvaně, ukázal na vzdálený bod, někde za zdí. "Tyhle vlny! Milujeme oceán, mořský vánek... je to velice osvěžující."~ */
  IF ~~ THEN REPLY #58188 /* ~"Ah... tak. Ano, fakt hezký. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58189 /* ~"Uh huh... No, já nesnáším slanou vodu. Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #58190 /* ~Jeho oči se rozšířily, přikývl. Podíval se nalevo i napravo a začal si potichu povídat s neviditelnými společníky. Po chvíli se jeho pozornost obrátila k tobě. "Ano, viděli jsme devu. Překrásný byl..."~ */
  IF ~~ THEN REPLY #58191 /* ~"Kde ho můžu najít?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58192 /* ~Vypadá zmateně. "Nevíme... ztratil se nám." Upřel pohled do dálky. "Ztratili jsme ho... ztratili... ztratili..." Jeho hlas postupně utichnul, teď už jenom prázdně zírá do zdi. Ignoruje jakékoli další pokusy o komunikaci.~ */
  IF ~~ THEN REPLY #58193 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #58194 /* ~Vidíš Gerika. Je ztracený ve svém vlastním světě, dokud si nevšiml tvého příchodu. "Pamatujeme si tě... co chceš od Gerika?"~ */
  IF ~~ THEN REPLY #58195 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58196 /* ~"Nic, sbohem."~ */ EXIT
END
