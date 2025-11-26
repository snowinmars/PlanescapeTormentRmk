// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCELEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCELEST~

IF ~  Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 0 // from:
  SAY #59104 /* ~Držíš v ruce Nebeský Oheň, čepel žhne bílým plamenem, zpívaje do tvé mysli. Myšlenka, že můžeš tuhle zbraň upotřebit k vlastním účelům, se ti nyní úplně sama zhmotnila v tvé mysli s lehkostí vánku.~ */
  IF ~~ THEN REPLY #64490 /* ~Chtít, aby se to stalo kladivem.~ */ DO ~TransformPartyItem("Celesti2","CFHammer",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #64491 /* ~Chtít, aby se to stalo sekerou.~ */ DO ~TransformPartyItem("Celesti2","CFAxe",1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #64492 /* ~Chtít, aby se to stalo kyjem.~ */ DO ~TransformPartyItem("Celesti2","CFClub",1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #64493 /* ~Chtít, aby se to stalo hřeby pobitými rukavicemi.~ */ DO ~TransformPartyItem("Celesti2","CFFist",1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #64494 /* ~Chtít, aby se to stalo ušlechtilou dýkou.~ */ DO ~TransformPartyItem("Celesti2","CFDagger",1,0,0)
~ GOTO 6
  IF ~~ THEN REPLY #64495 /* ~Nech pro teď čepel tak jak je.~ */ EXIT
END

IF ~  !Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 1 // from:
  SAY #64496 /* ~Těžké ostří setrvává nehnutě v tvých rukách, masa stříbřitého kovu vybrané krásy. Nic nedělá, bez ohledu na to, jakou vůlí na ni působíš.~ */
  IF ~~ THEN REPLY #64497 /* ~Nech to být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64498 /* ~Čepel zbraně se roztáhne, ostří se na moment zakalí a kov se užasnou rychlostí roztaví až k rukojeti meče. V krátké chvíli je transformace čepele v dobře vyvážené kladivo kompletní. Je to oslnivý kus práce.~ */
  IF ~~ THEN REPLY #64507 /* ~"Znamenitě."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64499 /* ~Čepel zbraně se roztáhne, ostří mízí jako by se čepel válcovitě propadala sama do sebe. Kov se užasnou rychlostí roztaví až k rukojeti meče. V krátké chvíli je transformace čepele v dobře vyváženou sekeru kompletní. Je to oslnivý kus práce.~ */
  IF ~~ THEN REPLY #64505 /* ~"Znamenitě."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64500 /* ~Kříž meče se smísí s čepelí v jeden hrot a zároveň se ostří zbraně otáčí kolem v nádhernou rukojeť, pokrytou kresbami identickými na čepeli zbraně. V krátké chvíli je transformace čepele v dobře vyvážený a statný kyj kompletní.~ */
  IF ~~ THEN REPLY #64506 /* ~"Znamenitě."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #64501 /* ~Tvé oči nejsou tak docela schopné zaregistrovat transformaci ostří v rukavice, ale můžeš cítit, jak v tvých rukách víří kov. Když dáš ruce od sebe, držíž v nich pár stříbrných rukavic vypadajících neskutečně nádherně - a smrtíce.~ */
  IF ~~ THEN REPLY #64504 /* ~"Znamenitě."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY #64502 /* ~Čepel meče zkapalní, jako by přecházela sama v sebe, a ve chvilce v rukách třímáš miniaturní verzi Triasova meče s plnou, mohutnou rukojetí. Zdá se velice užitečný.~ */
  IF ~~ THEN REPLY #64503 /* ~"Znamenitě."~ */ EXIT
END
