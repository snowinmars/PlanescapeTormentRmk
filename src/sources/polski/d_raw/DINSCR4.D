// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38103 /* ~Podejrzewam, że będziemy umierać i odradzać się tak długo, aż w końcu *wyprostujemy* nasze życie. Mimo to, nie wiem co zrobić żeby tak się stało. I to jest przyczyną frustracji.~ */
  IF ~~ THEN REPLY #53714 /* ~Kontynuuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53715 /* ~Odwróć się od napisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53716 /* ~Czy to jakiś rodzaj cyklu karmicznego? Z tego co się dowiedziałem, niektóre wcielenia popełniły straszliwe zbrodnie, ale były też i takie, które czyniły tylko dobro. Czy istotą tych wcieleń była odbycie jakiejś kary? Nie wiem. Jedyna prawda jaką mogę ci zaoferować brzmi: nie wiem.~ */
  IF ~~ THEN REPLY #53717 /* ~Kontynuuj.~ */ GOTO 2
  IF ~~ THEN REPLY #53718 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53719 /* ~W którym miejscu *ja* oddziela się od *my*? W którym miejscu uwalniam się z brzemienia czynów innych wcieleń? W którym miejscu wolno mi być *mną*, bez ciężaru tamtych minionych żywotów?~ */
  IF ~  Global("Inscr_4","GLOBAL",0)
~ THEN REPLY #53720 /* ~Obejrzyj płytę.~ */ GOTO 3
  IF ~~ THEN REPLY #53721 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53722 /* ~Płyta jest wspaniale wykonana i precyzyjnie dopasowana do ściany. Wygląda, że można wcisnąć ją w ścianę.~ */
  IF ~~ THEN REPLY #53723 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_4","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53724 /* ~Nie ruszaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53725 /* ~Płyta bez wysiłku wchodzi w ścianę. W sarkofagu za sobą słyszysz stuknięcie.~ */
  IF ~~ THEN REPLY #53726 /* ~Odwróć się od napisu.~ */ EXIT
END
