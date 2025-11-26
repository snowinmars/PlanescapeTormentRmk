// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOX~

IF ~  Global("Pox","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #8004 /* ~Przy drzwiach Kostnicy stoi przygarbiony człowiek. Jego twarz skrywa padający cień kaptura... Widać tylko podbródek, pokryty krótkim zarostem i czymś, co przypomina zielono-fioletową wysypkę. Wygląda na to, że wysypka jest najgorsza wokół szyi, a potem stopniowo zanika.~ */
  IF ~~ THEN REPLY #8005 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #8037 /* ~Zostaw tego człowieka w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #8006 /* ~Postać pozostaje nieruchoma... potem następuje chwila ciszy, a następnie do twoich uszu dochodzi głos, który bardziej pasowałby do dziesięcioletniej dziewczyny niż do mężczyzny. "Hai?"~ */
  IF ~~ THEN REPLY #8038 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #8039 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.1 5.2 6.3 7.2 8.2 9.1 10.0 11.0 12.5 13.1 14.2 15.2 16.1 17.1 18.1 19.1 20.3 22.2 23.0 24.2 25.1 26.1 27.1 28.1 29.2 30.0 31.3
  SAY #8007 /* ~"Hai?"~ */
  IF ~  Global("Pox","GLOBAL",0)
~ THEN REPLY #8040 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8041 /* ~"Dlaczego nazywasz się Syf?"~ */ GOTO 10
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8042 /* ~"Co tu robisz?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8043 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8044 /* ~"Zgubiłem dziennik... Nie widziałeś przypadkiem czegoś takiego?"~ */ GOTO 23
  IF ~  Global("Pox_Smuggle","GLOBAL",1)
~ THEN REPLY #8045 /* ~"Czy możesz przeszmuglować mnie do Kostnicy?"~ */ GOTO 31
  IF ~  GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8046 /* ~"Jeśli udam, że jestem truposzem, mógłbyś mnie tam przemycić?"~ */ GOTO 12
  IF ~~ THEN REPLY #8047 /* ~"Przepraszam za kłopot. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #8008 /* ~"Syf jestem, hai."~ */
  IF ~~ THEN REPLY #8048 /* ~"Uch... Syf?"~ */ GOTO 10
  IF ~~ THEN REPLY #8049 /* ~"Co tu robisz?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8050 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8051 /* ~"Zgubiłem dziennik... Nie widziałeś przypadkiem czegoś takiego?"~ */ GOTO 23
  IF ~~ THEN REPLY #8052 /* ~"Przepraszam za kłopot. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #8009 /* ~"Czekam na truposzy, hai."~ */
  IF ~~ THEN REPLY #8053 /* ~"'Truposzy'? Ciała? Dlaczego?"~ */ GOTO 5
  IF ~~ THEN REPLY #8054 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8055 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #8010 /* ~"Jak znajdem truposza, przynoszem go przez bramę, dostajem trochę brzdęku, a potem znowu czekam, hai."~ */
  IF ~~ THEN REPLY #8056 /* ~"Przez bramę? Po co?"~ */ GOTO 6
  IF ~~ THEN REPLY #8057 /* ~"Czy do Kostnicy można się dostać tylko przez bramę główną?"~ */ GOTO 31
  IF ~~ THEN REPLY #8058 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8059 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #8011 /* ~"Truposz to dla Grabarza to, co miedziak dla Zbieracza, przynieś im truposza, a dadzom ci miedziaki, hai."~ */
  IF ~~ THEN REPLY #8060 /* ~"Dlaczego Grabarze płacą za umarłych?"~ */ GOTO 7
  IF ~~ THEN REPLY #8061 /* ~"Zbieracz? Cóż to za jeden?"~ */ GOTO 22
  IF ~~ THEN REPLY #8062 /* ~"Czy do Kostnicy można się dostać tylko przez bramę główną?"~ */ GOTO 31
  IF ~~ THEN REPLY #8063 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8064 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 22.0
  SAY #8012 /* ~"Ulice czyste, truposze tam, gdzie ich miejsce, ulice nie śmierdzom, umarli się nie gubiom, bo trzymajom ich za drzwiami, wszyscy szczenśliwi, hai."~ */
  IF ~~ THEN REPLY #8065 /* ~"Co Grabarze robią z tymi truposzami, których kupują?"~ */ GOTO 8
  IF ~~ THEN REPLY #8066 /* ~"Czy do Kostnicy można się dostać tylko przez bramę główną?"~ */ GOTO 31
  IF ~~ THEN REPLY #8067 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8068 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #8013 /* ~"Wciągajom ich do wnętrza, kładom na stołach, tnom, palom, albo każom chodzić, hai."~ */
  IF ~~ THEN REPLY #8069 /* ~"Zmuszają ich do chodzenia?"~ */ GOTO 9
  IF ~~ THEN REPLY #8070 /* ~"Czy do Kostnicy można się dostać tylko przez bramę główną?"~ */ GOTO 31
  IF ~~ THEN REPLY #8071 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8072 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #8014 /* ~"Hai, niektórych zmuszajom do powrotu, niektórzy truposze stajom się szkielami albo zomami."~ */
  IF ~~ THEN REPLY #8073 /* ~"Czy do Kostnicy można się dostać tylko przez bramę główną?"~ */ GOTO 31
  IF ~~ THEN REPLY #8074 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8075 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.0
  SAY #8015 /* ~"Tak mnie nazwali mama i tata, ktoś ich przeklął, żeby pierworodny miał syfa, no i się spełniło, hai." Jeszcze raz twoje oczy spostrzegają fioletowo-zieloną wysypkę pokrywającą podbródek i szyję Syfa.~ */
  IF ~~ THEN REPLY #8076 /* ~"Och... Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8077 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #8016 /* ~Przy bramie Kostnicy widzisz Syfa. Wygląda na to, że... że nie ruszył się od czasu waszej ostatniej rozmowy.~ */
  IF ~~ THEN REPLY #8078 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8079 /* ~Zostaw Syfa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6 20.2 31.2
  SAY #8017 /* ~"Pokaż Syfowi, jak udajesz truposza. Ty dobrze udawać truposza, Syf przemyci cię do środka, hai."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #8080 /* ~Udawaj, że nie żyjesz...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8081 /* ~Udawaj, że nie żyjesz...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  False()
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8082 /* ~Udawaj, że nie żyjesz...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8083 /* ~Udawaj, że nie żyjesz...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~  False()
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8084 /* ~Udawaj, że nie żyjesz...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~~ THEN REPLY #8085 /* ~"Nie teraz. Najpierw mam do ciebie kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8086 /* ~"Mniejsza z tym, może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #8018 /* ~Syf bez słowa przygląda się twoim poczynaniom. Kiedy kończysz, zaczyna mówić. "Grabarze nie uwierzom, że ty jesteś truposz. Zawsze sprawdzajom czy truposz to truposz, a jak oddycha, to nie biorom, hai."~ */
  IF ~~ THEN REPLY #8087 /* ~"A gdybym tak naprawdę nie żył? Możesz mnie zabić i sprzedać moje ciało?"~ */ GOTO 15
  IF ~~ THEN REPLY #8088 /* ~"To jest problem. Powiedzmy, że mam do ciebie kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8089 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 12.2 12.3 12.4
  SAY #8019 /* ~Syf bez słowa przygląda się twoim poczynaniom. Kiedy kończysz, zaczyna mówić. "Hai, Syf cie sprzeda. Sprzedać cie teraz?"~ */
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",2)
~ THEN REPLY #8090 /* ~"Tak."~ */ DO ~TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",1)
~ THEN REPLY #8091 /* ~"Tak."~ */ DO ~AddexperienceParty(500)
TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~~ THEN REPLY #8094 /* ~"Jeszcze nie. Najpierw mam do ciebie kilka innych pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #8095 /* ~"Dzięki, może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #8020 /* ~Wygląda na to, że pytanie nie zdziwiło Syfa. "Hai, no pewnie, tak jak ostatnim razem, hai?"~ */
  IF ~~ THEN REPLY #8096 /* ~"Tak."~ */ GOTO 21
  IF ~~ THEN REPLY #8097 /* ~"Uch... 'ostatnim razem'?"~ */ GOTO 16
  IF ~~ THEN REPLY #8098 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8099 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 31.0
  SAY #8021 /* ~"Hai. Wiele razy ty prosić, Syf zawsze spełniać."~ */
  IF ~~ THEN REPLY #8100 /* ~"Uch... dokładnie ile razy?"~ */ GOTO 17
  IF ~~ THEN REPLY #8101 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8102 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #8022 /* ~"Wiele razy, hai."~ */
  IF ~~ THEN REPLY #8103 /* ~"Czy my się już spotkaliśmy?"~ */ GOTO 18
  IF ~~ THEN REPLY #8104 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8105 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #8023 /* ~"Hai."~ */
  IF ~~ THEN REPLY #8106 /* ~"Co o mnie wiesz?"~ */ GOTO 19
  IF ~~ THEN REPLY #8107 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8108 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8024 /* ~"Ty być truposz co nie zostać truposzem zbyt długo, hai. Jak dla Syfa, umowa stoi."~ */
  IF ~~ THEN REPLY #8109 /* ~"Czy wiesz o mnie coś jeszcze?"~ */ GOTO 20
  IF ~~ THEN REPLY #8110 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8111 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 20.0
  SAY #8025 /* ~"Ty być truposz co nie zostać truposzem zbyt długo, hai. Jak dla Syfa, umowa stoi."~ */
  IF ~~ THEN REPLY #8112 /* ~"Ee... czy wiesz jeszcze coś oprócz tego?"~ */ GOTO 20
  IF ~~ THEN REPLY #8113 /* ~"W takim razie mnie zabij. Chcę się dostać do wnętrza Kostnicy."~ */ GOTO 21
  IF ~~ THEN REPLY #8114 /* ~"Hm, rozumiem. A może po prostu udam, że nie żyję, a ty mnie przemycisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #8115 /* ~"Hmm. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8116 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0 20.1 31.1
  SAY #8026 /* ~Syf wyciąga ręce z ubrania, w każdej z nich trzyma zardzewiały sztylet. Szybkim ruchem przecina ci gardło, a zaraz po tym wszystko zaczyna gasnąć w twoich oczach...~ */
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",0)
~ THEN REPLY #8117 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",1)
~ THEN REPLY #8118 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.1
  SAY #8027 /* ~"Hai, Zbieracz. Zbira truposzy, przynosi ich do Grabarzy, do Kostnicy, za brzdęk."~ */
  IF ~~ THEN REPLY #8119 /* ~"Co Grabarze robią z tymi umarłymi... z truposzami?"~ */ GOTO 7
  IF ~~ THEN REPLY #8120 /* ~"Czy do Kostnicy można się dostać tylko przez bramę główną?"~ */ GOTO 31
  IF ~~ THEN REPLY #8121 /* ~"Rozumiem. Powiedzmy, że mam do ciebie jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8122 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.4 3.3
  SAY #8028 /* ~"Hai, żadnego dziennika nie widziałem. W Ulu ginom różne rzeczy i nikt potem o nich nie słyszy, może tak było z twoim dziennikiem, hai."~ */
  IF ~~ THEN REPLY #8123 /* ~"Rozumiem. Powiedzmy, że mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8124 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3 3.2
  SAY #8029 /* ~"Hai, Farod. Zbieracz, duży, jego imie ma wagę, rzuca długi cień, o tak, hai."~ */
  IF ~~ THEN REPLY #8125 /* ~"Zbieracz?"~ */ GOTO 25
  IF ~~ THEN REPLY #8126 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 26
  IF ~~ THEN REPLY #8127 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8128 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #8030 /* ~"Hai, Zbieracz. Zbiera truposzy, przynosi ich do Grabarzy za brzdęk."~ */
  IF ~~ THEN REPLY #8129 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 26
  IF ~~ THEN REPLY #8130 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8131 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #8031 /* ~"Hai, jest tu, w Ulu. Gdziesik, hai."~ */
  IF ~~ THEN REPLY #8132 /* ~"Możesz mówić trochę konkretniej?"~ */ GOTO 27
  IF ~~ THEN REPLY #8133 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8134 /* ~"W takim razie spróbuję go wytropić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #8032 /* ~"Hai, jest tu, w Ulu. Gdziesik, hai. Farod się ukrywa, oj tak. Bardzo ciężko go znaleźć. Nie warto go szukać."~ */
  IF ~~ THEN REPLY #8135 /* ~"'Nie warto go szukać'? Co przez to rozumiesz?"~ */ GOTO 28
  IF ~~ THEN REPLY #8136 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8137 /* ~"W takim razie znajdę go bez twojej pomocy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #8033 /* ~"Hai, wielu go nienawidzi, nawet inni Grabarze. Współgrobiec też go nienawidzi, nie lubi go nic a nic, hai."~ */
  IF ~~ THEN REPLY #8138 /* ~"Współgrobiec?"~ */ GOTO 29
  IF ~~ THEN REPLY #8139 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8140 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8034 /* ~"Hai, Współgrobiec duże imię, dużo znaczy, rzuca długi cień, oj tak. Mówi Syfowi, co robić."~ */
  IF ~  Global("Pox","GLOBAL",2)
~ THEN REPLY #8141 /* ~"Czy twój szef... ten Współgrobiec... wiedziałby, gdzie jest Farod?"~ */ JOURNAL #66542 /* ~W pobliżu bramy Kostnicy spotkałem chorego Zbieracza o imieniu "Syf". Syf zna Faroda, jakkolwiek nie wiem, gdzie można go znaleźć... Poradził mi jedynie, abym poszukał człowieka o imieniu "Współgrobiec". Znajdę go zapewne w okolicach Placu Szmaciarzy, kilka przecznic na zachód od Kostnicy. Ospa stwierdził, że Współgrobiec z całego serca nienawidzi Faroda i pewnością będzie znał miejsce pobytu swojego wroga.~ */ GOTO 30
  IF ~  GlobalLT("Pox","GLOBAL",2)
~ THEN REPLY #8142 /* ~"Czy twój szef... ten Współgrobiec... wiedziałby, gdzie jest Farod?"~ */ DO ~SetGlobal("Pox","GLOBAL",2)
~ JOURNAL #66542 /* ~W pobliżu bramy Kostnicy spotkałem chorego Zbieracza o imieniu "Syf". Syf zna Faroda, jakkolwiek nie wiem, gdzie można go znaleźć... Poradził mi jedynie, abym poszukał człowieka o imieniu "Współgrobiec". Znajdę go zapewne w okolicach Placu Szmaciarzy, kilka przecznic na zachód od Kostnicy. Ospa stwierdził, że Współgrobiec z całego serca nienawidzi Faroda i pewnością będzie znał miejsce pobytu swojego wroga.~ */ GOTO 30
  IF ~~ THEN REPLY #8143 /* ~"Hmmm. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8144 /* ~"Dziękuję, to mi wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #8035 /* ~"Hai, Współgrobiec zna cienie. Wie, że Farod się ukrywa. Współgrobiec jest na Placu Szmaciarzy, daleko na zachód stąd. Powiedz Współgrobowcowi, że Syf cię przysyła, powiedz, że Współgrobiec stanie się Współmiedziakiem z Syfem, hai."~ */
  IF ~~ THEN REPLY #8145 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #8146 /* ~"Plac Szmaciarzy, na zachód stąd? W porządku, w takim razie poszukam tam tego Współgrobca."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5 5.1 6.2 7.1 8.1 9.0 22.1
  SAY #8036 /* ~"Hai, tylko truposz albo Grabarz może wejść do środka. Chcesz, żeby Syf znowu zrobił z ciebie truposza?"~ */
  IF ~~ THEN REPLY #8147 /* ~"Uch... co proszę?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #8148 /* ~"Tak, chcę zostać truposzem. Muszę się dostać do Kostnicy."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #8149 /* ~"Jeśli udam, że jestem truposzem, mógłbyś mnie tam przemycić?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #8150 /* ~"Nie, nie... Mam do ciebie jeszcze kilka pytań..."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #8151 /* ~"Dzięki, może innym razem. Żegnaj."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ EXIT
END
