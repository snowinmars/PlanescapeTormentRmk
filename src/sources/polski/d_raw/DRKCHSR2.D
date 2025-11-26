// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR2~

IF ~  Global("RChaser","AR0400",0)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15606 /* ~Ten odrażający Zbieracz spogląda daleko przed siebie, widocznie nieświadomy tego, co się dzieje wokół.~ */
  IF ~~ THEN REPLY #15721 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #15722 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15723 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 65.0
  SAY #15607 /* ~Mężczyzna wzdraga się, wyrwany ze swoich rozmyślań. Twój widok sprawia, że na jego twarzy pojawia się panika.~ */
  IF ~~ THEN REPLY #15724 /* ~"Musimy porozmawiać..."~ */ GOTO 2
  IF ~~ THEN REPLY #15725 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15726 /* ~"Jestem tu przypadkiem. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #15608 /* ~"Ach... ech... o czymże pragniesz mówić, mój panie?"~ */
  IF ~~ THEN REPLY #15727 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 3
  IF ~~ THEN REPLY #15728 /* ~"Może o wisiorze, który nosisz?"~ */ GOTO 53
  IF ~~ THEN REPLY #15729 /* ~"Twoja śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15730 /* ~"Nieważne. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 53.0
  SAY #15617 /* ~"Co? Nie, mój panie! Nie wiem, o czym prawisz..." Milknie, czując na sobie twoje surowe spojrzenie, a następnie wzdycha. Gdy powtórnie przemawia, jego głos jest spokojny i bardziej zrównoważony: "Zgoda. Lecz jakimżeś to sposobem sekreta moje przeniknął?"~ */
  IF ~~ THEN REPLY #15731 /* ~"Opowiedział mi o tobie szczurołap."~ */ GOTO 4
  IF ~~ THEN REPLY #15732 /* ~"Powiedziała mi o tym para biesów."~ */ GOTO 8
  IF ~~ THEN REPLY #15733 /* ~"To nie twoja sprawa. Mam pytania..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #15619 /* ~"Szczurołap? Jakie to dziwne." Przez chwilę drapie się w brodę. "Hmm. Zali znasz ty imię tego człeka?"~ */
  IF ~~ THEN REPLY #15734 /* ~"Tak. Zwał się Kościszczurem."~ */ GOTO 5
  IF ~~ THEN REPLY #15736 /* ~Kłamstwo: "Nie."~ */ GOTO 6
  IF ~~ THEN REPLY #15738 /* ~"Nie mogę powiedzieć."~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #15621 /* ~"Rozumiem. Dziękuję ci." Robi przerwę, prawdopodobnie, aby zapisać imię w pamięci. "W jakimże przybywasz do mnie celu?"~ */
  IF ~~ THEN REPLY #15742 /* ~"Po twój wisior."~ */ GOTO 12
  IF ~~ THEN REPLY #15743 /* ~"Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15745 /* ~"Po twoją śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15748 /* ~"Po nic, naprawdę. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #15623 /* ~Potrząsa ze smutkiem głową. "Szkoda. W jakimże przybywasz do mnie celu?"~ */
  IF ~~ THEN REPLY #15787 /* ~"Po twój wisior."~ */ GOTO 12
  IF ~~ THEN REPLY #15788 /* ~"Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15789 /* ~"Po twoją śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15793 /* ~"Po nic, naprawdę. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.2
  SAY #15624 /* ~Mężczyzna potrząsa ze smutkiem głową. "Zrozumiałe. Cóż więc chcesz ode mnie w zamian za takie informacyje? Niemądrze byłoby tego zdradzać w zamian za nic... chyba że źle życzysz tej osobie. W jakimże przybywasz do mnie celu?"~ */
  IF ~~ THEN REPLY #15796 /* ~"Po twój wisior."~ */ GOTO 12
  IF ~~ THEN REPLY #15799 /* ~"Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15801 /* ~"Po twoją śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15803 /* ~"Po nic, naprawdę. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #15625 /* ~Patrzy z niedowierzaniem. "Co?! Coś takiego jest niemożliwe! Jak mogli... jak śmieli!" Jego oczy stają się ciemne, a usta rozwierają się przy warknięciu, odsłaniając poplamione i krzywe zęby. "Kto? Jakie nosili imiona? Wiesz?"~ */
  IF ~~ THEN REPLY #15804 /* ~"Tak. Etelgrin i Tegar'in Po Trzykroć Przeklęty."~ */ GOTO 9
  IF ~~ THEN REPLY #15805 /* ~Kłamstwo: "Nie."~ */ GOTO 10
  IF ~~ THEN REPLY #15806 /* ~"Nie mogę powiedzieć."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #15627 /* ~Szydzi. "W rzeczy samej, po trzykroć przeklęci! Och, jak zapłacą, powinni cierpieć bodaj przez tysiąc lat!" Uspokaja się. "W jakimże przybywasz do mnie celu?"~ */
  IF ~~ THEN REPLY #15807 /* ~"Po twój wisior."~ */ GOTO 12
  IF ~~ THEN REPLY #15808 /* ~"Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15809 /* ~"Po twoją śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15810 /* ~"Po nic, naprawdę. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #15629 /* ~Syczy, zaciskając z frustracji pięści. "Aach! Znajdę ich... och, jak zapłacą, powinni cierpieć bodaj przez tysiąc lat!" Uspokaja się. "W jakimże przybywasz do mnie celu?"~ */
  IF ~~ THEN REPLY #15811 /* ~"Po twój wisior."~ */ GOTO 12
  IF ~~ THEN REPLY #15812 /* ~"Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15813 /* ~"Po twoją śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15814 /* ~"Po nic, naprawdę. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY #15631 /* ~"Rozumiem. W jakimże więc przybywasz do mnie celu?"~ */
  IF ~~ THEN REPLY #15815 /* ~"Po twój wisior."~ */ GOTO 12
  IF ~~ THEN REPLY #15816 /* ~"Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15817 /* ~"Po twoją śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15818 /* ~"Po nic, naprawdę. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 6.0 7.0 9.0 10.0 11.0 54.5
  SAY #15632 /* ~"Hmm?" Zdaje się być zmieszany. "Cóż za wisior miałby to być?"~ */
  IF ~~ THEN REPLY #15819 /* ~"Nie marnuj mojego czasu. Wiesz o czym mówię."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15820 /* ~"Nie masz przypadkiem wisiora? W kształcie czaszki?"~ */ GOTO 13
  IF ~~ THEN REPLY #15821 /* ~"Mniejsza o to. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15822 /* ~"Zapomnij, że padło takie pytanie. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #15633 /* ~"Dlaczego, nie... nic podobnego, w żadnym wypadku. Skądże przyszedł ci do głowy taki pomysł?"~ */
  IF ~~ THEN REPLY #15823 /* ~"Nie marnuj mojego czasu. Wiesz o czym mówię."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15824 /* ~"Nie masz zatem nic przeciwko, abym cię przeszukał..."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15825 /* ~"Mniejsza o twój wisior. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15826 /* ~"Zapomnij, że padło takie pytanie. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 13.1
  SAY #15635 /* ~Wzdycha. "Po raz kolejny, zgoda. Czegoż pragniesz się dowiedzieć o moim wisiorku?"~ */
  IF ~~ THEN REPLY #15827 /* ~"Chce go tylko mieć."~ */ GOTO 15
  IF ~~ THEN REPLY #15828 /* ~"Co to właściwie jest?"~ */ GOTO 16
  IF ~~ THEN REPLY #15829 /* ~"Mniejsza o twój wisior. Mam kilka pytań..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 15 // from: 14.0 54.6
  SAY #15637 /* ~"Ale..." cofa się o kilka kroków. "Nie mogę go stracić! Nie rozumiesz... mogę równie dobrze przepaść!"~ */
  IF ~~ THEN REPLY #15830 /* ~"Zatem zginiesz..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15831 /* ~"Ale dlaczego? Co to właściwie jest?"~ */ GOTO 16
  IF ~~ THEN REPLY #15832 /* ~"Mniejsza o twój wisior. Mam kilka pytań..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1 54.2
  SAY #15639 /* ~"To jest naczynie, nic więcej. Ten wisior może usidlić duszę, która opuszcza swoją umierającą powłokę, więżąc ją dopóki nie dostanie się ona na właściwą sobie Sferę egzystencji."~ */
  IF ~~ THEN REPLY #15833 /* ~"Po cóż, ktoś miałby robić taką rzecz?"~ */ GOTO 17
  IF ~~ THEN REPLY #15834 /* ~"Do czego ci on potrzebny?"~ */ GOTO 22
  IF ~~ THEN REPLY #15835 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15836 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15837 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15838 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #15641 /* ~"Został on wykonany na zamówienie śmiertelnego czarodzieja o niemałej mocy, Yemeta. Poszukiwał on nieśmiertelności, ale ogarnęło go zniechęcenie na myśl o staniu się liszem. Według jego dzienników, konstrukcyja tego przedmiotu została zainspirowana studiami nad najmroczniejszą częścią wiedzy o nekromancji. Dzięki niemu mógł chwytać dusze i używać ich esencji do przedłużenia swojej własnej egzystencji, regenerując swoją siłę życiową, nawet jeśli zanikła."~ */
  IF ~~ THEN REPLY #15839 /* ~"Staniu się liszem?"~ */ GOTO 21
  IF ~~ THEN REPLY #15840 /* ~"Kto właściwie wykonał ten wisior?"~ */ GOTO 18
  IF ~~ THEN REPLY #15841 /* ~"W jaki więc sposób stracił wisior?"~ */ GOTO 19
  IF ~~ THEN REPLY #15842 /* ~"Można za jego pomocą zwiększyć czyjąś moc?"~ */ GOTO 20
  IF ~~ THEN REPLY #15847 /* ~"Do czego ci on potrzebny?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #15852 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15859 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15864 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0 20.0 21.0
  SAY #15643 /* ~"Ta tożsamość została zatarta przez czas. Od czasu do czasu jakiś rzemieślnik twierdził, że to jemu należy się uznanie za wykonanie tego przedmiotu. Krążą nawet pogłoski, że zrodził się on z umysłu biesa."~ */
  IF ~~ THEN REPLY #15865 /* ~"W jaki sposób Yemet stracił wisior?"~ */ GOTO 19
  IF ~~ THEN REPLY #15866 /* ~"Można za jego pomocą zwiększyć czyjąś moc?"~ */ GOTO 20
  IF ~~ THEN REPLY #15868 /* ~"Do czego ci on potrzebny?"~ */ GOTO 22
  IF ~~ THEN REPLY #15870 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15871 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15872 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #15874 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.0 20.1 21.1
  SAY #15650 /* ~"Został całkowicie zniszczony w wyniku katastroficznej walki, najprawdopodobniej z wrogim magiem o wielkiej mocy... przypuszczalnie nie zostało z niego nic, co przedmiot mógłby wzmocnić swoją energią. Na przestrzeni wieków wisior zmieniał nieustannie właścicieli, aż trafił w moje ręce."~ */
  IF ~~ THEN REPLY #16006 /* ~"Kto właściwie wykonał ten wisior?"~ */ GOTO 18
  IF ~~ THEN REPLY #16007 /* ~"Można za jego pomocą zwiększyć czyjąś moc?"~ */ GOTO 20
  IF ~~ THEN REPLY #16008 /* ~"Do czego ci on potrzebny?"~ */ GOTO 22
  IF ~~ THEN REPLY #16009 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16010 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16011 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16012 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.2
  SAY #15654 /* ~"Prawdopodobnie tak, ale nie wiedziałabym jak. Mówiłam już, że wisior to proste naczynie - jego różne zastosowania wymagają rytuałów i zaklęć, które być może zginęły na zawsze, wraz z samym Yemetem."~ */
  IF ~~ THEN REPLY #16013 /* ~"Kto właściwie wykonał ten wisior?"~ */ GOTO 18
  IF ~~ THEN REPLY #16014 /* ~"W jaki więc sposób stracił wisior?"~ */ GOTO 19
  IF ~~ THEN REPLY #16015 /* ~"Do czego ci on potrzebny?"~ */ GOTO 22
  IF ~~ THEN REPLY #16016 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16017 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16018 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16019 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0
  SAY #15657 /* ~Lekko wzdycha. "To proces, w wyniku którego śmiertelny czarodziej lub kleryk staje się Nieumarłą Istotą o wielkiej mocy. Proces ten jest długi i skomplikowany - lata prób wymagających wielkiej ilości tajemnych składników i tym podobnych - i często kończy się niepowodzeniem. Lisz jest więc pewnego rodzaju nieumarłym o wolnej woli, podobnym do wampira, który zachowuje umysł i zdolności, które śmiertelnik posiadał za życia."~ */
  IF ~~ THEN REPLY #16020 /* ~"Kto właściwie wykonał ten wisior?"~ */ GOTO 18
  IF ~~ THEN REPLY #16021 /* ~"W jaki sposób Yemet stracił swój wisior?"~ */ GOTO 19
  IF ~~ THEN REPLY #16022 /* ~"Można za jego pomocą zwiększyć czyjąś moc?"~ */ GOTO 20
  IF ~~ THEN REPLY #16023 /* ~"Do czego potrzebny ci jest wisior?"~ */ GOTO 22
  IF ~~ THEN REPLY #16024 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16025 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16026 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16027 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1 17.4 18.2 19.2 20.2 21.3 54.0
  SAY #15659 /* ~"Długa to historia. Jeśli zaiste pragniesz poznać me powody, to muszę zacząć od samego początku."~ */
  IF ~~ THEN REPLY #16028 /* ~"Zgoda. Mów dalej..."~ */ DO ~SetGlobal("RC_Tale","AR0400",1)
~ GOTO 23
  IF ~~ THEN REPLY #16029 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16030 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16031 /* ~"Być może innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16032 /* ~"Być może innym razem. żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 54.1
  SAY #15661 /* ~"Jak zapewne zauważyłeś, jestem baatezu - biesem. Należę do rodzaju zwanego 'Eryniami', diabelskimi kusicielkami. Moja prawdziwa postać odznacza się niewyobrażalnym pięknem, które powoduje, że słabym mężczyznom krew gotuje się z pożądania, a małostkowe kobiety zgrzytają z zazdrości zębami."~ */
  IF ~~ THEN REPLY #16033 /* ~"Jak mam w to uwierzyć?"~ */ GOTO 24
  IF ~~ THEN REPLY #16034 /* ~"Rozumiem. Mów dalej..."~ */ GOTO 25
  IF ~~ THEN REPLY #16035 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16036 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16037 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16038 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #15662 /* ~"Wszystko wyjaśnię w swoim czasie. Będziesz li słuchać, czy nie?"~ */
  IF ~~ THEN REPLY #16039 /* ~"Tak. Mów dalej..."~ */ GOTO 25
  IF ~~ THEN REPLY #16040 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16041 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16042 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16043 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #15663 /* ~"We wszystkich Sferach jest nas pięćset - wiadome ci to było? Jesteśmy niespotykanym i wyniosłym gatunkiem, zawistnym wobec tych, którzy stoją ponad nami i pogardliwym wobec tych, których mamy pod sobą. Nie licząc piękna, ja i wszystkie moje Siostry jesteśmy tak ambitne jak każdy bies, współzawodnicząc o awans w naszych własnych ekskluzywnych szeregach, poprzez wciąganie śmiertelnych dusz w pułapki w Baator."~ */
  IF ~~ THEN REPLY #16044 /* ~"Mów dalej..."~ */ GOTO 26
  IF ~~ THEN REPLY #16045 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16046 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16047 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16048 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #15664 /* ~"'Najwspanialsze' są dusze tych śmiertelników, którzy uważali się za najbardziej pobożnych i czystych... na przykład duchownych. To właśnie mając na uwadze, tak bezmyślnie rywalizowałam, ulegając jak inni pokusie uznania jakie zdobyłabym, gdybym odniosła sukces w tak zniechęcającym zadaniu..."~ */
  IF ~~ THEN REPLY #16049 /* ~Słuchaj dalej.~ */ GOTO 27
  IF ~~ THEN REPLY #16050 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16051 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16052 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16053 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #15665 /* ~"Próbowałam uwieść świętego człowieka o niezwykłej wierze, wysoko postawionego kleryka, który dzierżył znaczną moc. Byłam już tak blisko mego celu - lub tak mi się zdawało - aż nadszedł dzień, w którym mnie nagle zaatakował."~ */
  IF ~~ THEN REPLY #16054 /* ~"Kontynuuj..."~ */ GOTO 28
  IF ~~ THEN REPLY #16055 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16056 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16057 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16058 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #15667 /* ~"Przeklął mnie, bękart, zamieniając w to nieszczęsne stworzenie, które widzisz przed sobą. Z reguły takie rzeczy to dla diabłów błahostka, ale taka była siła tego śmiertelnika... Z pewnością oczy jego Mocy musiały wtedy na mnie spocząć!"~ */
  IF ~~ THEN REPLY #16059 /* ~"Rzucił na ciebie klątwę, zamieniając cię w ohydnego samca? Ironiczne. Mów dalej..."~ */ GOTO 29
  IF ~~ THEN REPLY #16060 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16061 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15669 /* ~"Jak nie trudnoż się domyślić, nie mogłam liczyć na pomoc moich Sióstr, które niecierpliwie czekały na mój upadek i powstanie nowej, niższej rangą Erynii, należącej do grupy pięciuset sobie podobnych - co umocniłoby ich własną pozycję."~ */
  IF ~~ THEN REPLY #16062 /* ~"Mów dalej..."~ */ GOTO 30
  IF ~~ THEN REPLY #16063 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16064 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16065 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16066 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #15672 /* ~"Mroczna Ósemka, potężne diabły, przed którymi odpowiadają wszystkie Erynie, uznały całą sprawę za zabawną, choć wykazały współczucie - a raczej wiedziały, że nie opłaci się im tracić uwodzicielki o tak znacznym doświadczeniu. Otrzymałam ultimatum..."~ */
  IF ~~ THEN REPLY #16067 /* ~"Kontynuuj..."~ */ GOTO 31
  IF ~~ THEN REPLY #16068 /* ~Prawda: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16069 /* ~Blef: "Dosyć tego. Dawaj wisior lub giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16070 /* ~"Wysłucham reszty innym razem. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16071 /* ~"To wszystko co chcę na razie usłyszeć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #15675 /* ~"Darowano mi jeden rok... ni mniej ni więcej, podczas którego muszę sprowadzić do Baator dziesięć dusz. Jeśli mi się uda, przywrócona mi zostanie miniona chwała. Jeśli mi się nie powiedzie, zdegradują mnie do poziomu nędznego kokrachona - lub czegoś gorszego, barbazu lub..." wzrusza ramionami, "...spinagona."~ */
  IF ~~ THEN REPLY #16072 /* ~"Tak więc, ten wisior jest..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15676 /* ~"Tak, jest li to ma jedyna nadzieja. Zebrałam w nim kilka dusz i wypuszczę je w Baator, gdzie pozostaną uwięzione na wieczność. Jakżesz niewiele czasu mi zostało na schwytanie jeszcze tylko jednej duszy... jeszcze jednej duszy, dzięki której mogę odkupić moje winy i ponownie wstąpić w szeregi moich uroczych, strasznych Sióstr."~ */
  IF ~~ THEN REPLY #16073 /* ~Prawda: "Ciekawa historyjka. Oddaj teraz tę błyskotkę albo giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16074 /* ~Blef: "Ciekawa historyjka. Oddaj teraz tę błyskotkę albo giń."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16075 /* ~"Rozumiem. Jednak i ja muszę zdobyć ten wisior."~ */ GOTO 55
  IF ~~ THEN REPLY #16076 /* ~"Mniejsza w tej chwili o wisior. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16077 /* ~"Pozwolę ci więc zatrzymać ten wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.2 16.3 17.5 18.3 18.4 19.3 19.4 20.3 20.4 21.4 21.5 22.1 22.2 23.2 23.3 24.1 24.2 25.1 25.2 26.1 26.2 27.1 27.2 29.1 29.2 30.1 30.2 32.0 32.1
  SAY #15677 /* ~Zbieracz cofa się o jeszcze jeden krok: "Stój! Zaiste nie pojmujesz! Śmierć jest jedynie niedogodnością; z czasem, po prostu odnowię się w Baator. Jednakże zajmie to dłużej niż rok, który mi dano... będę zdegradowana, wygnana z szeregów Erynii na wieki - być może na zawsze. Czyż tego nie dostrzegasz? Śmierć nie jest gorsza od utraty wisiora!"~ */
  IF ~~ THEN REPLY #16078 /* ~"Dlaczego miałoby mnie to obchodzić?"~ */ GOTO 34
  IF ~~ THEN REPLY #16079 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16080 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 57.0
  SAY #15679 /* ~"Z dwóch powodów... po pierwsze, nie jestem całkowicie bezsilna. Pomyśl przez chwilę... ten młody wojownik, który ochraniał mnie za dnia, jest moim niewolnikiem - na wieki uwięziony przez moje diabelskie moce. Chcesz znaleźć się na jego miejscu?"~ */
  IF ~~ THEN REPLY #16081 /* ~"Grozisz mi?"~ */ GOTO 35
  IF ~~ THEN REPLY #16082 /* ~"Nie, ale jaki jest drugi powód?"~ */ GOTO 36
  IF ~~ THEN REPLY #16083 /* ~"Blefujesz. Wiem, że klątwa cię osłabiła."~ */ GOTO 36
  IF ~~ THEN REPLY #16084 /* ~Zaatakuj go zanim jeszcze cokolwiek powie.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16085 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #15682 /* ~"Nie, ale wysłuchaj mnie!"~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2 35.0
  SAY #15684 /* ~Zbieracz ciągnie dalej: "Po drugie, nie wydaje się, aby kto mógł korzyści wielkie z wisiora czerpać, podczas gdy ja tak. Cóż z nim uczynisz? Czyż przysporzy ci on więcej korzyści niźli życzliwość Erynii? Pomyśl o tym..."~ */
  IF ~~ THEN REPLY #16086 /* ~"Mógłby. Obiecano mi za niego moc."~ */ GOTO 37
  IF ~~ THEN REPLY #16087 /* ~"Możesz mi więc coś zaoferować?"~ */ GOTO 42
  IF ~~ THEN REPLY #16088 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16089 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 55.0 56.1 58.0
  SAY #15686 /* ~"Moc?" Wyśmiewa się. "Kto? Jakiż rodzaj mocy ci przyrzeczono? Z pewnością nic, czemu bym nie mogła dorównać."~ */
  IF ~~ THEN REPLY #16090 /* ~"Para biesów, przy czym brak mi pewności do tego, co to za moc."~ */ GOTO 38
  IF ~~ THEN REPLY #16091 /* ~"To nie twoja sprawa."~ */ GOTO 59
  IF ~~ THEN REPLY #16092 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16093 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 59.0
  SAY #15687 /* ~Przygląda cię się przez chwilę w milczeniu. "Nie jesteś pewien co do zasięgu lub działania mocy? Podpisałeś pakt?"~ */
  IF ~~ THEN REPLY #16094 /* ~"Nie."~ */ GOTO 40
  IF ~~ THEN REPLY #16095 /* ~"Co to za różnica?"~ */ GOTO 39
  IF ~~ THEN REPLY #16096 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16097 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #15688 /* ~"Och, toż to jest najważniejsze, wierz mi!"~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #15689 /* ~"Bez podpisanego paktu biesy nie są zobowiązane do dostarczenia wspomnianej mocy, niezależnie od tego, co to za moc. A co jeśli ta moc nie przypadnie ci do gustu?"~ */
  IF ~~ THEN REPLY #16098 /* ~"Co masz na myśli?"~ */ GOTO 41
  IF ~~ THEN REPLY #16099 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16100 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #15690 /* ~"Co na przykład, gdyby narzucono ci umiejętność przyprawiania jelenich rogów, obdarzając cię w ten sposób 'niesamowitą mocą jelenich rogów'? Lub być może moc zamieniania się w fiołka co dwie niedziele? Na co według ciebie taka moc mogłaby ci się przydać? Jeśli te biesy warte są swej siarki, to nie mają dla ciebie nic oprócz sztuczek i pustych obietnic."~ */
  IF ~~ THEN REPLY #16101 /* ~"Możesz mi więc coś zaoferować?"~ */ GOTO 42
  IF ~~ THEN REPLY #16102 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16103 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.1 41.0 59.1
  SAY #15691 /* ~"Tak. Pozwól mi zachować wisior. Przy jego pomocy odzyskam mój miniony splendor. Mam wiele zobowiązań do wypełnienia, a także krwawą zemstę do spełnienia... ale za trzy lata, obiecuję ci służyć przez nie mniej niż cztery pełne miesiące. Podpiszę to - pakt będzie ważny - jeśli się zgodzisz. Wybieraj: służalczy bies, czy prawdopodobnie bezużyteczna błyskotka?"~ */
  IF ~~ THEN REPLY #16104 /* ~"Zgadzam się. Pokaż pakt."~ */ GOTO 45
  IF ~~ THEN REPLY #16105 /* ~"Trzy lata to za dużo czekania."~ */ GOTO 43
  IF ~~ THEN REPLY #16106 /* ~"Chcę ośmiu miesięcy. Będziesz służyć tak długo?"~ */ GOTO 44
  IF ~~ THEN REPLY #16107 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16108 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1 44.1
  SAY #15694 /* ~Zbieracz śmieje się cicho, potrząsając głową. "Cóż byś dał, aby mieć niezwykle piękną i całkowicie bezwstydną diablicę na każde swoje skinienie? Wydaje mi się, że jesteś w podeszłym wieku - w jakim, nie wiem, ale na pewno w dość podeszłym. Musisz zatem wiedzieć lepiej i myśleć o przyszłości. Jeśli nie chcesz czekać, mogę ci służyć za dwa lata przez dwa miesiące."~ */
  IF ~~ THEN REPLY #16109 /* ~"Zgadzam się na dwumiesięczną służbę w ciągu dwóch lat."~ */ GOTO 45
  IF ~~ THEN REPLY #16110 /* ~"Mogę się zgodzić na służbę przez cztery miesiące za trzy lata."~ */ GOTO 45
  IF ~~ THEN REPLY #16111 /* ~"Chcę ośmiu miesięcy. Będziesz służyć tak długo?"~ */ GOTO 44
  IF ~~ THEN REPLY #16112 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16113 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 43.2
  SAY #15696 /* ~"Będę ci służyć za trzy lata przez sześć miesięcy, ale nie dłużej. Zgadzasz się na to?"~ */
  IF ~~ THEN REPLY #16114 /* ~"Zgadzam się. Pokaż pakt."~ */ GOTO 45
  IF ~~ THEN REPLY #16115 /* ~"Trzy lata to za dużo czekania."~ */ GOTO 43
  IF ~~ THEN REPLY #16116 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16117 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0 43.0 43.1 44.0
  SAY #15698 /* ~Kiwa głową. "Nie zwykłam była pertraktować w tenże sposób, ale mimo to wciąż powinnam być w stanie..." robi przerwę, grzebiąc w fałdach swojej szaty i marszcząc przy tym brwi. W końcu jego oczy rozjaśniają się - sięga za siebie i wyciąga, jak spod ziemi, zawiązany zwitek. "Ach! Oto on..." Wręcza ci pakt i czerwone ptasie pióro.~ */
  IF ~~ THEN REPLY #16118 /* ~Podpisz pakt.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #16119 /* ~Przeczytaj pakt~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16120 /* ~Przeczytaj pakt~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16121 /* ~Przeczytaj pakt~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16122 /* ~Przeczytaj pakt~ */ GOTO 49
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16123 /* ~Przeczytaj pakt~ */ GOTO 50
  IF ~~ THEN REPLY #16124 /* ~"Zmieniam zdanie - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16125 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #15700 /* ~Pakt wydaje się być spisany na skórze, raczej niż pergaminie. Pismo, to drobne strużki krwi tuż po powierzchnią skóry. Pakt zdaje się być w porządku pod każdym względem.~ */
  IF ~~ THEN REPLY #16126 /* ~Podpisz pakt.~ */ GOTO 52
  IF ~~ THEN REPLY #16127 /* ~"Zmieniam zdanie - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16128 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #15702 /* ~Pakt wydaje się być spisany na skórze, a nie na pergaminie. Pismo, to drobne strużki krwi tuż po powierzchnią skóry. Zgodnie z twoimi podejrzeniami, dokument kryje w sobie klauzule, które są nie do przyjęcia.~ */
  IF ~~ THEN REPLY #16129 /* ~"Musimy renegocjować kilka z tych szczegółowych zapisów..."~ */ GOTO 51
  IF ~~ THEN REPLY #16130 /* ~Podpisz pakt taki jaki jest.~ */ GOTO 52
  IF ~~ THEN REPLY #16131 /* ~"Zmieniam zdanie - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16132 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.3
  SAY #15703 /* ~Pakt wydaje się być spisany na skórze, a nie na pergaminie. Pismo, to drobne strużki krwi tuż po powierzchnią skóry. Zgodnie z tym, co podpowiadała ci logika, okazuje się, że dokument kryje w sobie klauzule, które są nie do przyjęcia.~ */
  IF ~~ THEN REPLY #16133 /* ~"Musimy renegocjować kilka z tych szczegółowych zapisów..."~ */ GOTO 51
  IF ~~ THEN REPLY #16134 /* ~Podpisz pakt taki jaki jest.~ */ GOTO 52
  IF ~~ THEN REPLY #16135 /* ~"Zmieniam zdanie - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16136 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 45.4
  SAY #15704 /* ~Pakt wydaje się być spisany na skórze, a nie na pergaminie. Pismo, to drobne strużki krwi tuż po powierzchnią skóry. Zgodnie z tym, co podpowiadała ci logika, okazuje się, że dokument kryje w sobie klauzule, które są nie do przyjęcia. Szukasz też kruczków, które można by wykorzystać na swoją korzyść, ale żadnych nie znajdujesz.~ */
  IF ~~ THEN REPLY #16137 /* ~"Musimy renegocjować kilka z tych szczegółowych zapisów..."~ */ GOTO 51
  IF ~~ THEN REPLY #16138 /* ~Podpisz pakt taki jaki jest.~ */ GOTO 52
  IF ~~ THEN REPLY #16139 /* ~"Zmieniam zdanie - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16140 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 45.5
  SAY #15705 /* ~Pakt wydaje się być spisany na skórze, a nie na pergaminie. Pismo, to drobne strużki krwi tuż po powierzchnią skóry. Natychmiast zauważasz, że dokument kryje w sobie klauzule, które są nie do przyjęcia, niektóre z nich ukryte są bardzo zdradliwie. Zauważasz również pewną ilość kruczków, które prawdopodobnie będzie można wykorzystać na swoją korzyść.~ */
  IF ~~ THEN REPLY #16141 /* ~"Musimy renegocjować kilka z tych szczegółowych zapisów..."~ */ GOTO 51
  IF ~~ THEN REPLY #16142 /* ~Podpisz pakt taki jaki jest.~ */ GOTO 52
  IF ~~ THEN REPLY #16143 /* ~"Zmieniam zdanie - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16144 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.0 48.0 49.0 50.0
  SAY #15706 /* ~"Oczywiście. Tego można się było po tobie spodziewać." Gdy zaczynasz dyskutować z diabłem na temat paktu, kłócąc się i dociekając, zgadzając się i wymigując, zaczyna ci się wydawać, że robiłeś już coś takiego wcześniej...~ */
  IF ~~ THEN REPLY #16145 /* ~Spróbuj przywołać to wspomnienie.~ */ GOTO 63
  IF ~~ THEN REPLY #16146 /* ~Stłum w sobie to wspomnienie.~ */ GOTO 62
END

IF ~~ THEN BEGIN 52 // from: 45.0 46.0 47.1 48.1 49.1 50.1 62.0
  SAY #15707 /* ~Gdy kończysz podpisywać pakt, zarówno on jak i pióro zamieniają się w kłęby słodkiego czerwonego dymu. "Żegnaj, wędrowcze... zobaczę się znowu z tobą po upływie właściwego czasu i wtedy to będę ci służyć w sposób i przez okres uzgodniony w pakcie." Kłania się i odchodzi.~ */
  IF ~~ THEN REPLY #16147 /* ~"Poczekaj. Mam kilka pytań..."~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 64
  IF ~~ THEN REPLY #16148 /* ~Pozwól mu odejść.~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.1
  SAY #15708 /* ~"Cóż to, mój panie? Nie noszę klejnotów..."~ */
  IF ~~ THEN REPLY #16149 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 3
  IF ~~ THEN REPLY #16150 /* ~"Dość gadania... po prostu rozsiekam cię i zabiorę go."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16151 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 5.1 6.1 7.1 9.1 10.1 11.1 12.2 13.2 14.2 15.2 16.4 17.6 18.5 19.5 20.5 21.6 22.3 23.4 24.3 25.3 26.3 27.3 28.1 29.3 30.3 32.3 55.4 56.3 57.2 58.3 60.0 61.0
  SAY #15709 /* ~"Odpowiem ci najlepiej jak potrafię."~ */
  IF ~  Global("RC_Tale","AR0400",0)
~ THEN REPLY #16152 /* ~"Dlaczego tu jesteś?"~ */ GOTO 22
  IF ~  Global("RC_Tale","AR0400",1)
~ THEN REPLY #16153 /* ~"Opowiedz mi swoją historię jeszcze raz."~ */ GOTO 23
  IF ~~ THEN REPLY #16154 /* ~"Opowiedz mi o swoim wisiorze."~ */ GOTO 16
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #16155 /* ~"Kim jest ten hulaka, co dzień stojący obok ciebie?"~ */ GOTO 60
  IF ~  Dead("Adyzoel")
~ THEN REPLY #16156 /* ~"Kim był ten hulaka, co dzień stojący obok ciebie?"~ */ GOTO 61
  IF ~  Global("RC_Pendant","AR0400",0)
~ THEN REPLY #16157 /* ~"Nieważne. Po prostu daj mi ten wisior."~ */ GOTO 12
  IF ~  Global("RC_Pendant","AR0400",1)
~ THEN REPLY #16158 /* ~"Nieważne. Po prostu daj mi ten wisior."~ */ GOTO 15
  IF ~~ THEN REPLY #16159 /* ~"Mniejsza o to. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.2
  SAY #15710 /* ~"Ale dlaczego?"~ */
  IF ~~ THEN REPLY #16160 /* ~"Ponieważ obiecano mi moc za jego dostarczenie."~ */ GOTO 37
  IF ~~ THEN REPLY #16161 /* ~"Ponieważ to, co z nim robisz, jest złe."~ */ GOTO 56
  IF ~~ THEN REPLY #16162 /* ~"Nie twoja sprawa."~ */ GOTO 58
  IF ~~ THEN REPLY #16163 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16164 /* ~"Mniejsza teraz o twój wisior. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16165 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.1 58.1
  SAY #15711 /* ~"Cóż z nim zatem uczynisz? Zabezpieczysz przed wpadnięciem w niepowołane ręce? Sprzedasz? Wymienisz na coś innego? Co według ciebie następny właściciel wisiorka powinien z nim zrobić?"~ */
  IF ~~ THEN REPLY #16166 /* ~"Nic gorszego od tego, co ty robisz."~ */ GOTO 57
  IF ~~ THEN REPLY #16167 /* ~"Oddam go dwóm biesom w zamian za moc."~ */ GOTO 37
  IF ~~ THEN REPLY #16168 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16169 /* ~"Mniejsza teraz o twój wisior. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16170 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15712 /* ~"Tylko, gdyby udało ci się jakoś schować ten wisior tam, gdzie nie znalazłaby go żadna istota. Sama natura tej rzeczy powoduje, że z jej użytku nic dobrego nie może wyniknąć. Są powody, dla których najlepiej byłoby zostawić ten przedmiot w moich rękach, zapewniam cię."~ */
  IF ~~ THEN REPLY #16171 /* ~"Na przykład?"~ */ GOTO 34
  IF ~~ THEN REPLY #16172 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16173 /* ~"Mniejsza teraz o twój wisior. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16174 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #15713 /* ~Zbieracz wygląda na zszokowanego. "Jak możesz mówić coś takiego? Ograbisz mnie jak pospolity złodziejaszek, pozbawisz mnie jedynej wielkiej i prawdziwej szansy, zniweczysz moje nadzieje, a później powiesz, że nie powinnam interesować się twoimi powodami?"~ */
  IF ~~ THEN REPLY #16175 /* ~"Ponieważ obiecano mi moc za jego dostarczenie."~ */ GOTO 37
  IF ~~ THEN REPLY #16176 /* ~"Ponieważ to, co z nim robisz, jest złe."~ */ GOTO 56
  IF ~~ THEN REPLY #16177 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16178 /* ~"Mniejsza teraz o twój wisior. Mam kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16179 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 37.1
  SAY #15714 /* ~"Mylisz się. W tym momencie ta sprawa zajmuje mnie najbardziej. Jak mogę cokolwiek zaoferować w zamian, nie znając ważnych warunków twojego paktu?"~ */
  IF ~~ THEN REPLY #16180 /* ~"Zaoferowała mi to para biesów, przy czym brak mi pewności, co to za moc."~ */ GOTO 38
  IF ~~ THEN REPLY #16181 /* ~"Możesz mi więc coś zaoferować?"~ */ GOTO 42
  IF ~~ THEN REPLY #16182 /* ~"Koniec gadania - po prostu rozsiekam cię i zabiorę ten wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16183 /* ~"Zapomnij o tym. Zatrzymaj swój wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 54.3
  SAY #15715 /* ~"To po prostu arogancki, młody szlachcic i wyśmienity szermierz. Znajduje się w mojej niewoli, chociaż nie zdaje sobie z tego sprawy, dopóki nie zdecyduję się go uwolnić lub sama zginę."~ */
  IF ~~ THEN REPLY #16184 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16185 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.4
  SAY #15716 /* ~"To po prostu arogancki, młody szlachcic i wyśmienity szermierz. Znajdował się w mojej niewoli, chociaż nie zdawał sobie z tego sprawy, i nieświadomie służył mi jako ochraniarz."~ */
  IF ~~ THEN REPLY #16186 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 54
  IF ~~ THEN REPLY #16187 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 51.1 63.0 63.1 63.2 63.3
  SAY #15717 /* ~Ostatecznie kończycie negocjacje nad paktem. "I jak? Odpowiada ci to?"~ */
  IF ~~ THEN REPLY #16188 /* ~"Tak. Podpiszę go teraz."~ */ GOTO 52
  IF ~~ THEN REPLY #16189 /* ~"Nie... po prostu rozsiekam cię i zabiorę wisior."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16190 /* ~"Mniejsza o pakt. Zatrzymaj wisior. Żegnaj."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 51.0
  SAY #15718 /* ~Rozważając to po kilkakroć, zdajesz sobie sprawę, że masz pewność, że już kiedyś to robiłeś. Dni spędzone, pośród zatęchłych ksiąg i dokumentów prawnych, na przygotowaniach na zbliżające się intensywne negocjacje, rozważnie dobrane wyrażenia o ukrytych podwójnych znaczeniach, jeden kruczek na drugim, kłamstwa pogrzebane w prawdzie, naginanie prawa i obietnic do tego stopnia, że w ogóle nie przypominają tego, czym powinny być... wspomnienia tych wszystkich rzeczy i nie tylko przelatują nagle przez twój umysł w szalonym pędzie.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16192 /* ~Kontynuuj...~ */ DO ~AddexperienceParty(200)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16191 /* ~Kontynuuj...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16193 /* ~Kontynuuj...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16194 /* ~Kontynuuj...~ */ DO ~AddexperienceParty(600)
~ GOTO 62
END

IF ~~ THEN BEGIN 64 // from: 52.0
  SAY #15719 /* ~"Żadnych pytań. Będziemy mieć dużo czasu na rozmowę, gdy się powtórnie spotkamy. Pytaj mnie wtedy o co zechcesz. Żegnaj."~ */
  IF ~~ THEN DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 65 // from:
  SAY #15720 /* ~Stoi tutaj Malric, spoglądając daleko przed siebie. Zdaje się, że nie jest 'on' świadom tego co się dzieje wokół.~ */
  IF ~~ THEN REPLY #16195 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #16196 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16197 /* ~Zostaw go w spokoju.~ */ EXIT
END
