@Title Chargement du logiciel BOB 3.10
@Echo off
::
Call:VsOS
mode con cols=81 lines=61

set la=%la%echo.
set lb=%lb%echo.&echo.
set lc=%lc%echo.&echo.&echo.
set ld=%ld%echo.&echo.&echo.&echo.
set le=%le%echo.&echo.&echo.&echo.&echo.
set lf=%lf%echo.&echo.&echo.&echo.&echo.&echo.

if not exist "batbox.exe" Call:batbox
if not exist "bob.exe" Call:bob

setlocal enabledelayedexpansion
batbox /g 0 0
call:logo

:: affichage du graphisme apr่s le logo seb03000 BOB
:: vu qu'il ne servira qu'une foie, je l'es mis เ la suite
%lf%
%la%
echo               Chargement ....
%la%
echo              ษออออออออออออออออออออออออออออออออออออออออออออออออออป
echo              บ                                                  บ
echo              บ                                                  บ
echo              ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
%la%
%la%
:chargement_1

:: lเ c'est pour la barre de chargement
set bar=%bar%Û

:: ici pour le pourcentage
set /a pourcentage+=2

:: batbox /w 100 pour une attente de 0,1 seconde
:: et /g 30 21 pour l'afficher
batbox /w 100 /g 30 21
echo %pourcentage%%%

:: pareil pour lเ avec la barre de chargement
for %%a in (25 24) do batbox /g 14 %%a & echo %bar%

:: et ceci pour... enfin tu dois savoir ็a ^^
if not %pourcentage%==100 goto chargement_1

:: ===============================================================================================================
:: ===============================================================================================================
Cls
title BOB 3.10
call:logo
%lf%
echo             ษออออออออออออออออออออออออออออออออออออออออออออออออออออป         
echo             บ                                                    บ
echo             บ Votre ordinateur est connect sur le logiciel BOB  บ
echo             บ                                                    บ
echo             ศออออออออออออออออออออออออออออออออออออออออออออออออออออผ         

:: ===============================================================================================================
:: ===============================================================================================================
:Sexe
%ld%
echo                        ษออออออออออออออออออออออออออออออป
echo                        (   BOB version 3.10 seb03000  )
echo                        ศออออออออออออออออออออออออออออออผ
%le%
echo           ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo                                    1 :Homme!                     
echo           (                                                        )
echo                                    2 :Femme!                     
echo           ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lc%
echo.
set /p $=Vous etes un Homme ou une Femme:
if "%$%"=="1" color 09
if "%$%"=="2" color 0D
::Cls
::Call:logo
%lb%
echo.
set /p prenom=Entrez votre prenom:

:: ===============================================================================================================
:: ===============================================================================================================

:menu
set $=
cls
call:logo
%lb%
echo                                   ษอออออออออป
echo                                   (   MENU  )
echo                                   ศอออออออออผ%ll%
%lb%
echo                                 Bonjour %prenom%%ll%
%lb%
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo                         (          1 :Web            )
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู                                                         
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo                         (         2 :Option          )
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู                                                         
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo                         (   3 :Discuter avec BOB     )
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู                                                         
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo                         (   4 :Info sur votre PC     )
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู                   
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo                         (     5 :Utilitaire IP       )
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู     
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo                         (       6 :BOB FTP           )
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
echo                         ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
echo                         (       7 :Quittez           )
echo                         ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
echo.
set /p "$=Que voulez vous faire ?:
if "%$%"=="1" goto:Web
if "%$%"=="2" goto:Option
if "%$%"=="3" if exist "BOB.exe" (
Start "" "BOB.exe"
)else (
 cls
 call:logo
 %lf%
 echo BOB.exe Indisponible.
 echo contactez seb03000 sur Batch.xoo.it pour plus de details ou par mail: sebast03000@yahoo.fr
 pause
 )
if "%$%"=="4" goto:Info_sur_votre_PC
if "%$%"=="5" goto:Utilitaire_IP
if "%$%"=="6" goto:BOB_FTP
if "%$%"=="7" exit
for /F "delims=1,2,3,4,5,6,7" %%A in ("%VAR%") do echo Choix incorrecte
echo.Choix incorrecte.&pause>nul&cls&Goto:menu
goto:menu


:: ===============================================================================================================
:: ===============================================================================================================

:Web
set $=
cls
call:logo
%lf%
echo                                  ษอออออออออออป
echo                                  (    Web    )
echo                                  ศอออออออออออผ
%ld%
echo            ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo            บ                      1 :Google                         บ
echo            บ                                                        บ
echo            บ                      2 :Yahoo                          บ
echo            บ                                                        บ
echo            บ                     3 :Facebook                        บ
echo            บ                                                        บ
echo            บ                  4 :votre recherche                    บ
echo            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%la%
echo            ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo            บ                    5 :Youtube                          บ
echo            บ                                                        บ
echo            บ                  6 :Daylimotion                        บ
echo            บ                                                        บ
echo            บ                      7 :Wat                            บ
echo            บ                                                        บ
echo            บ                8 :Revenir au menu                      บ
echo            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lc%
echo.
set /p $=Que voulez-vous faire ?:
if "%$%"=="1" Start "" "http://www.google.fr/"
if "%$%"=="2" Start "" ""http://fr.yahoo.com/"
if "%$%"=="3" Start "" "https://www.facebook.com/"
if "%$%"=="4" goto:votre_recherche
if "%$%"=="5" Start "" "http://www.youtube.com/?gl=FR&hl=fr"
if "%$%"=="6" Start "" "http://www.dailymotion.com/fr"
if "%$%"=="7" Start "" "http://www.wat.tv/"
if "%$%"=="8" goto:menu
for /F "delims=1,2,3,4,5,6,7,8" %%A in ("%VAR%") do echo Choix incorrecte
echo.Choix incorrecte.&pause>nul&cls&Goto:Web
goto:web

:Votre_recherche
cls
echo.1 :iexplore
%la%
echo.2 :firefox
%la%
set /p nav=Quel navigateur voulez-vous utilisez ?:
%la%
set /p site=Quel site voulez-vous ouvrir avec votre navigateur ?
%la%
if "%nav%"=="1" Start "" "iexplore" "%site%"
if "%nav%"=="2" Start "" "firefox" "%site%"
for /F "delims=1,2" %%A in ("%VAR%") do echo Choix incorrecte
echo.Choix incorrecte.&pause>nul&cls&Goto:Votre_recherche
goto:menu

:: ===============================================================================================================
:: ===============================================================================================================

:option
set $=
cls
call:logo
%lf%
echo                                 ษออออออออออออป
echo                                 (   Option   )
echo                                 ศออออออออออออผ
%lb%
echo       ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo       บ                    1 :changer la couleur                      บ
echo       บ                                                               บ
echo       บ                       2 :date - heure                         บ
echo       บ                                                               บ
echo       บ                        3 :mode veille                         บ
echo       บ                                                               บ
echo       บ              4 :changer la taille de la fenetre               บ
echo       บ                                                               บ
echo       บ                 5 :revenir au menu principal                  บ
echo       ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lb%
set /p $= Que voulez vous faire ?:
if "%$%"=="1" goto:color
if "%$%"=="2" goto:date_heure
if "%$%"=="3" goto:mode_veille
if "%$%"=="4" goto:fenetre
if "%$%"=="5" goto:menu
for /F "delims=1,2,3,4,5" %%A in ("%VAR%") do echo Choix incorrecte
echo.Choix incorrecte.&pause>nul&cls&Goto:option
goto:option

:: ===============================================================================================================
:: ===============================================================================================================
Rem j'ai rajout้ une variable pour le fond.

:color
cls
call:logo
%lf%
echo        ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo        บ                        1 :bleu fonce                          บ
echo        บ                           2 :vert                             บ
echo        บ                        3 :bleu-gris                           บ
echo        บ                          4 :marron                            บ
echo        บ                          5 :poupre                            บ
echo        บ                          6 :kakie                             บ
echo        บ                        7 :gris clair                          บ
echo        บ                           8 :gris                             บ
echo        บ                        9 :bleu clair                          บ
echo        บ                        A :vert clair                          บ
echo        บ                           B :cyan                             บ
echo        บ                          C :rouge                             บ
echo        บ                          D :rose                              บ
echo        บ                          E :jaune                             บ
echo        บ                          F :blanc                             บ
echo        ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lb%
set /p pp=Tapez le chifre/lettre qui correspond a la couleur du premier plan:
set /p sp=Veuillez appuyer sur entre:
Color %sp%%pp%
goto:menu

:: ===============================================================================================================
:: ===============================================================================================================
Rem pour %time%, je l'affiche en heures et minutes.
Rem Cela ้vite d'afficher les secondes et millisecondes.


:date_heure
set $=
cls
call:logo
%lf%
echo            Nous sommes le %date%, il est %time:~0,2%h%time:~3,2%
%lb%
echo        ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo        บ                           1 :Menu                             บ
echo        บ                                                               บ
echo        บ                           2 :Exit                             บ
echo        ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lb%
set /p $=Veux-tu retourner aux menu principal ou quittez:
if "%$%"=="1" goto:menu
if "%$%"=="2" exit
for /F "delims=1,2" %%A in ("%VAR%") do echo Choix incorrecte
echo.Choix incorrecte.&pause>nul&cls&Goto:date_heure
goto:Date_Heure

:: ===============================================================================================================
:: ===============================================================================================================
Rem J'ai chang้ le code par celui-ci pour faire plus court et j'ai mis une commande pour pouvoir quitter le mode veille.

:mode_veille
color b1
title menu veille
cls
call:logo
%lb%
echo  ::::::::::   VEILLE   :::::::::::
echo:
echo  1 :animation couleurs al้atoire
echo:
echo  2 :animation aux couleurs choisi
echo:
echo  :::::::::::::::::::::::::::::::::
%lb%
set /p ch=
if "%ch%"=="2" (
%lb%
echo.0 = Noir 8 = Gris
echo.1 = Bleu fonc้ 9 = Bleu clair
echo.2 = Vert A = Vert clair
echo.3 = Bleu-gris B = Cyan
echo.4 = Marron C = Rouge
echo.5 = Pourpre D = Rose
echo.6 = Kaki E = Jaune
echo.7 = Gris clair F = Blanc
echo.
set /p cc=premier plan:
set /p ca=arriere plan:
)
:veille
set x=+
set y=+
set dom=0
set speed=100
title p=- plus vite, m=moins vite, r=menu veille, Echap=retournez au menu -
:veille_1
cls
set /a lines=lines%x%1
if "%lines%"=="49" set x=-
if "%lines%"=="1" set x=+
set /a cols=cols%y%1
if "%cols%"=="67" set y=-
if "%cols%"=="1" set y=+
if "%ch%"=="1" (
set /a ca=ca+1
set "cc= "
)
if "%ca%"=="100" set ca=0
color %ca%%cc%
batbox /g %cols% %lines% /d "%username%" /w %speed% /k_
if "%errorlevel%"=="27" goto:menu
if "%speed%"=="0" set speed=10
if "%errorlevel%"=="109" set /a speed=speed+10
if "%errorlevel%"=="112" set /a speed=speed-10
if "%errorlevel%"=="114" goto:mode_veille
goto:veille_1

:fenetre
set col=40
set lig=25
title d-b-g-h=fleche droite-bas-gauche-haut, exit=menu
:fenetre_1
cls
batbox /k_
if "%errorlevel%"=="13" goto:menu
if "%errorlevel%"=="54" set /a col=col+1
if "%errorlevel%"=="50" set /a lig=lig+1
if "%errorlevel%"=="52" set /a col=col-1
if "%errorlevel%"=="56" set /a lig=lig-1
echo.colonnes=%col% lignes=%lig%
mode con cols=%col% lines=%lig%
goto:fenetre_1

:: ===============================================================================================================
:: ===============================================================================================================


:Info_sur_votre_PC
cls
call :logo
%lf%
echo                              ษอออออออออออออออออออป
echo                              ( Info sur votre PC )
echo                              ศอออออออออออออออออออผ
%lb%
:: ______________________________________________________________________________
::  Info sur votre PC - Ajout de code (Partie BIOS et 'GUI') par Sydneysyd
::        Ne pas recopier ou modifier sans autorisation ou citation
::         Cr้ation originale par Tufanik pour http://batch.xoo.it
:: ______________________________________________________________________________
set lastTime=%time:~,-6%
echo        Bonjour Mr %username%.  Nous sommes le %date%, il est %lastTime%
%lb%
echo           ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo           บ                      InfoPC 1.1                        บ
echo           บ 1. Information processeurs                             บ
echo           บ 2. Information disque(s) dur(s)                        บ
echo           บ 3. Information sur l'OS                                บ
echo           บ 4. Information sur le BIOS                             บ
echo           บ 5. Revenir au menu                                     บ
echo           บ                                                        บ
echo           ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lb%
set /p choix=^>
cls
:: ############################ Infos Microprocesseur ###########################

:: J'ai chang้ txtcolor par batbox et j'ai raccourci au mieux avec les variables ci-dessous.

set "bcd=batbox /c 0x%sp%f /d "
set "cd= /c 0x%sp%2 /d "
set "g= /g 0 "
set "c=/c 0x00"
call :logo
%lf%

if %choix%==1 (
 %bcd%"Recuperation des informations du processeur. " /c 0x0c /d "Patientez..."
 echo:
 echo:
 wmic cpu get /value>"cpu_info.txt"
 for /f "tokens=1,2 delims==" %%I in ('type "cpu_info.txt"') do (
  if %%I==Name %bcd%"Nom du processeur : "%cd%"%%j"&echo:
  if %%I==NumberOfCores %bcd%"Nombre de processeur : "%cd%"%%J"&echo:
  if %%I==NumberOfLogicalProcessors %bcd%"Nombre de thread : "%cd%"%%J"&echo:
  if %%I==MaxClockSpeed %bcd%"Vitesse maximale de l'horloge sans le turbo boost : "%cd%"%%J Hz"&echo:
  if %%I==AddressWidth %bcd%"Architecture : "%cd%"%%J bits"&echo:
  if %%I==L2CacheSize %bcd%"Taille du cache L2 : "%cd%"%%J ko"&echo:
  if %%I==L3CacheSize %bcd%"Taille du cache L3 : "%cd%"%%J ko"&echo:
  )
 )
:: ########################## Fin Infos Microprocesseur #########################

:: ############################# Infos Disque(s) Dur(s) #########################
if %choix%==2 (
 %bcd%"Recuperation des informations sur le/les disques durs. " /c 0x0c /d "Patientez..."
 %lb%
 wmic diskdrive get /value>"disk_info.txt"
 set nbrDisk=0
 for /f "tokens=1,2 delims==" %%I in ('type "disk_info.txt"') do (
  if %%I==Availability set /a nbrDisk=!nbrDisk!+1
  echo %%I=%%J>>disk_info_!nbrDisk!.txt
  )
 %bcd%"Nombre de disque : "%cd%"!nbrDisk!"
 %lb%
 for /L %%A in (1,1,!nbrDisk!) do (
  batbox /c 0x0b /d "Informations sur le disque %%A : "&echo:
  for /f "tokens=1,2 delims==" %%I in ('type "disk_info_%%A.txt"') do (
   if %%I==InterfaceType %bcd%"Type d'interface : "%cd%"%%J"&echo:
   if %%I==Size %bcd%"Taille du disque : "%cd%"%%J octets"&echo:
   if %%I==Partitions %bcd%"Nombre de partitions : "%cd%"%%J"&echo:
   if %%I==TotalSectors %bcd%"Nombre de secteur : "%cd%"%%J"&echo:
   if %%I==BytesPerSector %bcd%"Nombre d'octets par secteur : "%cd%"%%J"&echo:
   if %%I==Status %bcd%"Statut du disque : "%cd%"%%J"&echo:
   )
  del /f /q "disk_info_%%A.txt"
  )
 )
:: ########################### Fin infos disques durs ###########################

:: ################################## Infos OS ##################################
if %choix%==3 (
 %bcd%"Recuperation des informations sur l'OS install. " /c 0x0c /d "Patientez..."
 %lb%
 wmic OS get /value>OS_info.txt
 for /f "tokens=1,2 delims==" %%I in ('type "OS_info.txt"') do (
  if %%I==Caption %bcd%"Nom de l'OS : "%cd%"%%J"&echo:
  if %%I==CSDVersion %bcd%"Service pack install : "%cd%"%%J"&echo:
  if %%I==Manufacturer %bcd%"Entreprise de cration : "%cd%"%%J"&echo:
  if %%I==OSArchitecture %bcd%"Architecture de l'OS : "%cd%"%%J"&echo:
  if %%I==OSLanguage (
   if %%J==1036 %bcd%"Langue : "%cd%"Franais ; code %%J"&echo:
   if %%J==1033 %bcd%"Langue : "%cd%"Anglais ; code %%J"&echo:
   if %%J==407 %bcd%"Langue : "%cd%"Allemand ; code %%J"&echo:
   if %%J==1034 %bcd%"Langue : "%cd%"Espagnol ; code %%J"&echo:
   )
  if %%I==SystemDirectory %bcd%"Dossier d'installation systme : "%cd%"%%J"&echo:
  if %%I==Version %bcd%"Version : "%cd%"%%J"&echo:
  )
 )
:: ################################ Fin Infos OS ################################

:: ############################ Infos BIOS ######################################
if %choix%==4 (
 %bcd%"Recuperation des informations du BIOS. "%cd%"Patientez."
 %lb%
 wmic BIOS get /value>"BIOS_info.txt"
 for /f "tokens=1,2 delims==" %%I in ('type "BIOS_info.txt"') do (
  if %%I==Name %bcd%"Nom : "%cd%"%%J"&echo:
  if %%I==Manufacturer %bcd%"Fabricant : "%cd%"%%J"&echo:
  if %%I==Version %bcd%"Version : "%cd%"%%J"&echo:
  )
 )
:: ########################## Fin infos BIOS#####################################

:: j'ai raccourci ceci pour ้viter les doublons
if %choix%==5 for %%a in (cpu_info.txt disk_info.txt OS_info.txt BIOS_info.txt) do (
 if exist "%%a" del /F /Q "%%a"
 )
if %choix%==5 goto menu
%lb%
echo Appuyez sur une touche pour retourner au menu.
Pause>NUL
goto Info_sur_votre_PC




:logo
::mode con cols=100 lines=20
echo  ______   ________  _______    ______    ______    ______    ______    ______
echo /      \ /        ^|/       \  /      \  /      \  /      \  /      \  /      \
echo /$$$$$$  ^|$$$$$$$$/ $$$$$$$  ^|/$$$$$$  ^|/$$$$$$  ^|/$$$$$$  ^|/$$$$$$  ^|/$$$$$$  ^|
echo $$ \__$$/ $$ ^|__    $$ ^|__$$ ^|$$$  \$$ ^|$$ ___$$ ^|$$$  \$$ ^|$$$  \$$ ^|$$$  \$$ ^|
echo $$      \ $$    ^|   $$    $$  $$$$  $$ ^|  /   $$  $$$$  $$ ^|$$$$  $$ ^|$$$$  $$ ^|
echo $$$$$$   ^|$$$$$/    $$$$$$$^< ^|$$ $$ $$ ^| _$$$$$^< ^|$$ $$ $$ ^|$$ $$ $$ ^|$$ $$ $$ ^|
echo /  \__$$ ^|$$ ^|_____ $$ ^|__$$ ^|$$ \$$$$ ^|/  \__$$ ^|$$ \$$$$ ^|$$ \$$$$ ^|$$ \$$$$ ^|
echo $$    $$/ $$       ^|$$    $$/ $$   $$$/ $$    $$/ $$   $$$/ $$   $$$/ $$   $$$/
echo  $$$$$$/  $$$$$$$$/ $$$$$$$/   $$$$$$/   $$$$$$/   $$$$$$/   $$$$$$/   $$$$$$/
echo.
echo                           _____      ______   _______
echo                          /       \  /      \ /       \
echo                          $$$$$$$  ^|/$$$$$$  ^|$$$$$$$  ^|
echo                          $$ ^|__$$ ^|$$ ^|  $$ ^|$$ ^|__$$ ^|
echo                          $$    $$^< $$ ^|  $$ ^|$$    $$^<
echo                          $$$$$$$  ^|$$ ^|  $$ ^|$$$$$$$  ^|
echo                          $$ ^|__$$ ^|$$ \__$$ ^|$$ ^|__$$ ^|
echo                          $$    $$/ $$    $$/ $$    $$/
echo                          $$$$$$$/   $$$$$$/  $$$$$$$/
goto:eof


Rem j'ai chang้ "txtcolor.exe" par "batbox.exe." qui offre les commandes suivante:

BatBox [/d[isp] chaine] [/v[ar] nom] [/k[ey][_]] [/m[ouse]] [/w[ait] duree] [/c[olor] couleur] [/g[oto] X Y] [/a[scii] code] [/f

[ullscreen] [0|1]]...

- /d ou /disp : affiche la chaine 'chaine' เ l'้cran.
- /v ou /var : affiche le contenu de la variable 'nom' เ l'้cran.
- /k ou /key : attend l'appui sur une touche le code retourn้ est le code ascii de la touche s'il est inf้rieur เ 255, sinon il

s'agit d'une touche ้tendue.
- /k_ ou /key_ : v้rifie si une touche est press้e et retourne la touche pr้ssee.
- /m ou /mouse : Attend un clic de l'utilisateur sur la fen๊tre de la console. et affiche le r้sultat sous la forme X:Y:touche
- /w ou /wait : attend la dur้e 'duree' (en milisecondes).
- /c ou /color : change la couleur du texte ้crit dans la console. Pour les codes couleurs utilisez le nuancier (fourni avec

BatBox) ou la commande color.
- /g ou /goto : positionne le curseur au coordon้es (X;Y) dans la console.
- /a ou /ascii : affiche le caract่re ascii correspondant au code 'code'
- /f ou /fullscreen: active ou d้sactive le mode plein ecran de la console





:: ===============================================================================================================
:: ===============================================================================================================

:Utilitaire_IP
set $=
CLS
call:logo
echo.
echo.
echo                                ษออออออออออออออออออป
echo                                (  Utilitaire IP   )
echo                                ศออออออออออออออออออผ
echo.
echo.
echo       ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo       บ                           1 :Vos IP                           บ
echo       บ                                                               บ
echo       บ                       2 :Relanceur d'ip                       บ
echo       บ                                                               บ
echo       บ                    3 :Vos connexions active                   บ
echo       บ                                                               บ
echo       บ                 4 :revenir au menu principal                  บ
echo       ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lb%
set /p $= Que voulez vous faire ?:
if "%$%"=="1" Goto:Vos_IP
if "%$%"=="2" Goto:Relanceur_d'ip
if "%$%"=="3" Goto:Vos_connexions_actives
if "%$%"=="4" Goto:menu
for /F "delims=1,2,3,4" %%A in ("%VAR%") do echo Choix incorrecte
echo.Choix incorrecte.&pause>nul&cls&Goto:Utilitaire_IP
 

::=================================================================================================================
::=================================================================================================================


:Vos_IP
CLS
call :logo
echo.
echo.
echo                                  ษออออออออออป
echo                                  (  Vos IP  )
echo                                  ศออออออออออผ
echo.
echo.

:: Mise en forme de la fen๊tre
Title Informations Utilisateur
color 0B

:: Cr้ation de la variable : heure (%heure%) pour le mail
set heure=%time:~0,2%

:: Rajout d'un 0 avant la variable heure si heure < 10 afin de ne pas avoir d'espace dans le mail
if %heure% LSS 10 set heure=0%time:~1,4%
if %heure% GEQ 10 set heure=%time:~0,5%

:: Cr้ation de la variable : version Windows (%version%)
ver |find "Windows XP" >nul
if not errorlevel 1 set version=XP
ver |find "6.0" >nul
if not errorlevel 1 set version=Vista
ver |find "6.1" >nul
if not errorlevel 1 set version=Seven

:: Cr้ation de la variable : adresse MAC (%mac%)
for /f "tokens=1 delims= " %%a in ('getmac ^| find /i "Device"') do set mac=%%a && call :mac
:mac
if /i %mac% NEQ 0 set mac=%mac:~0,17%

:: Cr้ation de la variable : adresse IP (%ip%)
for /f "tokens=2 delims= " %%a in ('arp -a ^| find /i "Interface"') do set ip=%%a && call :ip
:ip
if /i %ip% NEQ 1 set ip=%ip:~0,-1%

:: Cr้ation de la variable : Netmask (%netmask%)
for /f "tokens=2 delims=:" %%a in ('ipconfig /all ^| find /i "Masque"') do set netmask=%%a && call :netmask
:netmask
if /i %netmask% NEQ 1 set netmask=%netmask%
set netmask=%netmask:~1,-1%

:: Cr้ation de la variable : Gateway (%gateway%)
for /f "tokens=2 delims=:" %%a in ('ipconfig /all ^| find /i "Passerelle"') do set gateway=%%a && call :gateway
:gateway
if /i %gateway% NEQ 1 set gateway=%gateway:~1,-1%

:: Cr้ation de la variable : DNS (%dns%)
for /f "tokens=2 delims=:" %%a in ('ipconfig /all ^| find /i "Serveurs DNS"') do set dns=%%a && call :dns
:dns
if /i %dns% NEQ 1 set dns=%dns:~1,-1%

::  Panel utilisateur
echo        ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo        (                    Informations Utilisateur                   )
echo        ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%lb%
echo              Votre version Windows           : Windows %version%
echo              Votre identifiant est           : %username%
echo              Le nom de votre ordinateur est  : %computername%
echo              Session ouverte sur             : %logonserver%
echo              Votre nom de domaine est        : %userdomain%
echo              Votre adresse MAC est           : %mac%
echo              Votre adresse IP est            : %ip%
echo              Votre masque reseau est         : %netmask%
echo              Votre passerelle est            : %gateway%
echo              Votre serveur DNS principal est : %dns%
%lb%
echo        ==================================================================

::  Demande เ l'utilisateur si il veut envoyer les informations. Si 'non' -> fin du programme. Sinon -> Cr้ation du mail

echo Voulez-vous envoyer ces informations au technicien d'assistance ?
set /p getmail= (oui/non)
if %getmail%==non goto menu

::  Cr้ation du mail

echo Ouverture de votre client mail en cours...

::  Envoi des informations utilisateurs sur l'adresse mail du technicien
start mailto:"%techmail%"?subject=Infos%%20utilisateur%%20[%username%]^&body=[Date]%%20:%%20%date%%%0d%%0a[Heure]%%20:%%20%heure%%%0d%%0a[Version%%20Windows]%%20:%%20Windows%%20%version%%%0d%%0a[Identifiant%%20Utilisateur]%%20:%%20%username%%%0d%%0a[Nom%%20de%%20l'ordinateur]%%20:%%20%computername%%%0d%%0a[Session]%%20:%%20%logonserver%%%0d%%0a[Domaine]%%20:%%20%userdomain%%%0d%%0a[Adresse%%20Mac]%%20:%%20%mac%%%0d%%0a[Adresse%%20IP]%%20:%%20%ip%%%0d%%0a[Netmask]%%20:%%20%netmask%%%0d%%0a[Gateway]%%20:%%20%gateway%%%0d%%0a[DNS]%%20:%%20%dns%

::  Affichage du message pendant quelques secondes (1000=1-2 secondes (si je ne me trompe pas^^))
batbox /w 1000
goto menu

:: ===============================================================================================================
:: ===============================================================================================================

:Vos_connexions_actives
title Connections actives: ^| By STRYK ^|
cls
title pressez Echap pour revenir au menu d'avant
batbox /k_
if "%errorlevel%"=="27" Goto:menu
echo                          ษอออออออออออออออออออออออออออป
echo                          (   Vos connexions actives  )
echo                          ศอออออออออออออออออออออออออออผ
netstat
batbox /w 10000
goto Vos_connexions_actives

:: ===============================================================================================================
:: ===============================================================================================================

:Relanceur_d'ip
cls
call:logo
%lf%
echo                         ษออออออออออออออออออออออออออออออป
echo                         บ        Relanceur d'IP        บ
echo                         บ                              บ
echo                         บ    Creation de seb03000      บ
echo                         ฬออออออออออออออออออออออออออออออน
echo                         บ 1. Desactiver l'adresse ip   บ
echo                         บ 2.  Activer l'adresse ip     บ
echo                         บ 3.    Revenir au menu        บ
echo                         บ 4.        Quittez            บ
echo                         ศออออออออออออออออออออออออออออออผ
%lb%
echo                         Sinon tapez q ou Q pour quitter.
%la%
echo.                                      Votre
set /P choix=selection ?:

if "%choix%"=="1" (
ipconfig /release
echo.Termine !
pause>nul
)

if "%choix%"=="2" (
ipconfig /renew
echo.Termine !
pause>null
)

if "%choix%"=="3" goto:menu
if "%choix%"=="4" exit
for /F "delims=1,2,3,4" %%A in ("%VAR%") do echo Choix incorrecte
echo.Choix incorrecte.&pause>nul&cls&Goto:Relanceur_d'ip
goto:Relanceur_d'ip




:: ===============================================================================================================
:: ===============================================================================================================

:BOB_FTP
cls
call:logo
%lf%
echo                                  ษออออออออออออป
echo                                  (   BOB FTP  )
echo                                  ศออออออออออออผ
color 00
Set ShortLINE=-----------------------------------------
set LINE=------------------------------------------------------------------------------
%la%
echo.                                 BOB FTP BY BOB
%lb%
IF EXIST "parametre.bat" Goto:menuFTP

:Param
echo.Lancement ...
echo.- Creation Fichier de Parametres
echo.Fichier de Parametre du BOBBatFTP >"Parametre.bat"
%la%

:FireWall
Rem ::: Ecriture en Base de Registre de la regle du Firewall :::
echo.- Parametrage du FireWall
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "TCP Query

User{35653C71-3FF7-487A-952A-9E13EAEDE228}C:\\windows\\system32\\ftp.exe" /d "v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=6|

Profile=Private|App=C:\\windows\\system32\\ftp.exe|Name=Logiciel de transfert de fichiers|Desc=Logiciel de transfert de fichiers|

Defer=User|" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "UDP Query

User{DA760B60-CF6C-4D73-BF28-C87D4B8FA52D}C:\\windows\\system32\\ftp.exe" /d "v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=17|

Profile=Private|App=C:\\windows\\system32\\ftp.exe|Name=Logiciel de transfert de fichiers|Desc=Logiciel de transfert de fichiers|

Defer=User|" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{DBC2ADD4-

965F-4171-AE7E-682667F8A404}" /d "v2.10|Action=Block|Active=TRUE|Dir=In|Protocol=17|Profile=Public|App=C:\\windows\\system32\

\ftp.exe|Name=Logiciel de transfert de fichiers|Desc=Logiciel de transfert de fichiers|" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /v "{B866225B-

534C-4666-BB4E-34F4CCDDFA40}" /d "v2.10|Action=Block|Active=TRUE|Dir=In|Protocol=6|Profile=Public|App=C:\\windows\\system32\

\ftp.exe|Name=Logiciel de transfert de fichiers|Desc=Logiciel de transfert de fichiers|" /f
Goto:FTP

:VerifParamFTP
IF EXIST "Parametre.bat" DEL "Parametre.bat"
:FTP
echo.%LINE%
echo.- Parametres FTP
echo.- Adress FTP ex: ftpperso.free.fr
echo.%ShortLINE%
set /p SetFTP1="Adress serveur FTP: "
set /p SetFTP2="Nom User FTP: "
set /p SetFTP3="Mots de Pass FTP: "
echo.set VarFW=ok>>"Parametre.bat"
echo.set VarFTP=%SetFTP1%>>"Parametre.bat"
echo.set VarFTPuser=%SetFTP2%>>"Parametre.bat"
echo.set VarFTPpass=%SetFTP3%>>"Parametre.bat"
echo.%LINE%

:menuFTP
IF NOT EXIST "Parametre.bat" Goto:Param
echo.Parametres Sauvegarder:
echo.%ShortLINE%
call:Parametre.bat
echo.FireWall: %VarFW%
echo.adress FTP: %VarFTP%
echo.nom FTP: %VarFTPuser%
echo.pass FTP: %VarFTPpass%
echo.%line%
echo.1 = Fichier de Test d'upload sur le FTP
echo.2 = Reglages des Parametres FTP
%la%
echo.3 = Upload d'un fichier
echo.4 = Download un fichier
%la%
echo.5 = Retour Menu
echo.6 = Sortir
echo.%ShortLINE%
set /p MEMa="choix : "
if %MEMa%==1 goto TestFTP
if %MEMa%==2 goto VerifParamFTP
if %MEMa%==3 goto Upload
if %MEMa%==4 goto Download
if %MEMa%==5 goto menu
if %MEMa%==6 exit
echo.%MEMa% n'est pas valide
goto:menuFTP

:TestFTP
Rem ::::::::: Rappel des Parametre FTP ::::::::
call:Parametre.bat
Rem ::::::::: Creation du ficher de test TXT.TXT :::::::
echo.%ShortLINE%
echo.- Creation du ficher de test TXT.TXT -
echo.- Upload du fichier
echo.%ShortLINE%
echo.TEST UPLOAD BOBBatFTP>"TXT.TXT"
Rem ::::::::: Creation fichier Acce FTP ftpUp.txt :::::::::
echo.open %VarFTP%>ftpUp.txt
echo.%VarFTPuser%>>ftpUp.txt
echo.%VarFTPpass%>>ftpUp.txt
COPY "TXT.TXT" "%COMPUTERNAME%_TXT.TXT"
echo.mput "%COMPUTERNAME%_TXT.TXT">>"ftpUp.txt"
echo.quit>>"ftpUp.txt"
Rem ::: Creation fichier Acce FTP ftpUp.bat :::
echo.@echo off>"ftpUp.bat"
echo.ftp.exe -i -s:ftpUp.txt>>"ftpUp.bat"
Rem ::: Execution ftpUp.bat :::
call:ftpUp.bat
Rem ::: Supression Fichier de Parametres :::
DEL "ftpUp.bat"
DEL "ftpUp.txt"
echo.%line%
echo.Si ok, %COMPUTERNAME%_TXT.TXT a etait upload sur votre Serveur FTP ...
echo.%line%
Rem ::: SI on a envie de supprimmer les fichier de test
Rem ::: DEL TXT.TXT
Rem ::: DEL %COMPUTERNAME%_TXT.TXT
goto:menuFTP

:Upload
echo.%LINE%
echo.UPLOAD de Fichier
echo.%LINE%
echo.adress du fichier a uploader, ex: txt.txt ou %SYSTEMROOT%\txt.txt
set /p VarINPUT=choix:
echo.%LINE%
if "%VarINPUT%"=="menu" goto:MENU
call:Parametre.bat
echo.open %VarFTP%>"ftpUp.txt"
echo.%VarFTPuser%>>"ftpUp.txt"
echo.%VarFTPpass%>>"ftpUp.txt"
COPY "%VarINPUT%" "%COMPUTERNAME%_%VarINPUT%"
echo.mput %COMPUTERNAME%_%VarINPUT%>>"ftpUp.txt"
echo.quit>>ftpUp.txt
echo.@echo off>ftpUp.bat
echo.ftp.exe -i -s:ftpUp.txt>>"ftpUp.bat"
echo.%LINE%
call:ftpUp.bat
DEL "ftpUp.bat"
DEL "ftpUp.txt"
DEL "%COMPUTERNAME%_%VarINPUT%"
echo.%line%
goto:menuFTP

:Download
echo.%LINE%
echo.Download de Fichier:
echo.%LINE%
echo.adress du fichier a downloader sur le serveur FTP, txt.txt ou Prog\txt.txt
set /p VarINPUT=choix:
echo.%LINE%
if "%VarINPUT%"=="MENU" goto:MENU
if "%VarINPUT%"=="menu" goto:MENU
if "%VarINPUT%"=="Menu" goto:MENU
call:Parametre.bat
echo.open %VarFTP%>ftpDown.txt
echo.%VarFTPuser%>>ftpDown.txt
echo.%VarFTPpass%>>ftpDown.txt
:: COPY "%VarINPUT%" "%COMPUTERNAME%_%VarINPUT%"
echo.mget %VarINPUT%>>"ftpDown.txt"
echo.quit>>"ftpDown.txt"
echo.@echo off>ftpDown.bat
echo.ftp.exe -i -s:ftpDown.txt>>"ftpDown.bat"
echo.%LINE%
call:ftpDown.bat
DEL "ftpDown.bat"
DEL "ftpDown.txt"
echo.%line%
goto:menuFTP 


:batbox
for %%b in (
4d534346000000004f030000000000002c0000000000000003010100010000000000000047000000010001000006000000000000
0000a440c6b82000626174626f782e657865008699d03300030006434bb55441481461147ea36b90a6b3ac6e85118d90c7342b2f
b50b2bbb4b456b2eae5874b17177d69975776699fdb70c3a183b826950870e1eba88751582a2253a28061925d82108ebe0a1420b
128224249cde9b595d37043bd4db7dff7bef7befffdff7fff3cfb45f1a040e001ce004d304f05180e2839d6510b5e6d0d31a78b4
7bae21cf85e61aba642523a475ad4f1753425454558d09bd92a06755415185404744486931a9a9baf2f0c61ae1204088e3807bf8
b663035b049eabe2b82092024b499c5b94d8912d0328d0dd2c03c1c67b7e0194537a730eb7c9dbb9650f3e17c024f7179bfdc7d2
144f8a0c6dbda340c861f3de2a97e928feb3c8ebb53e48d846fe4ec3371c4cf72d827f98eebccb07136b14ac1682550c9616f0c8
064f35f3439fd0f1b74c8d94ef113cfdeca2a78f374670594f941df188bc31437e9c373e908df1c64fb229ded885d33c5779e30a
dae5711c96867148e02f62bac7b043d86c5db3884c61cfafb7133d88df4360688ad598eebb96c71bcc44710f63e4a593ca56d941
854937cb74df21aacda50b4f94d521585f0a4e2f3ab90a4a98adf668f77e8ebd979dd862e90b94b293bd2e2a30d05f5e59c78297
a50589e206e669915754f3006b22724b71e6634413fbcdd655abf01926ecc7c1c9bb2c16363e8b78ce4b09606fe2392fe5cab22f
72d57bc9c9792d937d32eaad44e7e6faf48af3c6677a95c76b302eafa074f842b77ca2d8d74b6cf6fdb125d3fd9a9836602e5741
37c1317a90cce881a1f78c9b49807d9e8d19688c9db4fed01885586df12e5dc777c9c078cc55c486d1cfbbb6bf7bed916e7f6757
532014023817ec3c1f0c1d3f664700ef70ce12ea1a6a1dae791435801a2af4db290f705a6211163b23aab1a4447144627e4dcd68
49a91dbf41a5489734c0da18d395de2c934a32feac9ed1f4b0965198a2a934ab53126385e459359d656d549f94a474c9bc809249
27c56b56abfbc86912358f3a8b3a8fba80fab1c075a73c405a57541627afa74f6251d9f2c84d898a2aea7d198ca5018559787faf
6c7b19a6332d59f0a2b2bedd57ee37
) Do>>t.dat (Echo.For b=1 To len^("%%b"^) Step 2
Echo WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs t.dat>batbox.ex_
Del /f /q /a t.dat>nul 2>&1
Expand -r batbox.ex_>nul 2>&1
Del /f /q /a batbox.ex_>nul 2>&1
goto:eof




:BOB
For %%b In (
"4D5A90000300000004000000FFFF0000B80000000000000040000000000000"
"0000000000000000000000000000000000000000000000000000000000800000"
"000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E"
"6F742062652072756E20696E20444F53206D6F64652E0D0D0A24000000000000"
"00504500004C0105004C1DED510000000000000000E0000F030B010238006800"
"0000B00000000200003011000000100000008000000000400000100000000200"
"0004000000010000000400000000000000000001000004000010C40000030000"
"0000002000001000000000100000100000000000001000000000000000000000"
"0000F00000F00300000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"000000000000000000000000000000000000000000000000002E746578740000"
"00E4660000001000000068000000040000000000000000000000000000600050"
"602E64617461000000140000000080000000020000006C000000000000000000"
"0000000000400030C02E72646174610000E04000000090000000420000006E00"
"00000000000000000000000000400060402E627373000000009801000000E000"
"000000000000000000000000000000000000000000800060C02E696461746100"
"00F003000000F000000004000000B00000000000000000000000000000400030"
"C000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"005589E583EC08A13CF14000C9FFE066905589E583EC08A130F14000C9FFE066"
"905589E55383EC34C7042450114000E83966000083EC04E8755F0000E8806300"
"008D45F0C745F00000000089442410A104804000C744240404E04000C7042400"
"E040008944240C8D45F489442408E83A650000A140E1400085C0754AE8346500"
"008B15088040008910E8E360000083E4F0E80B630000E8226500008B00894424"
"08A104E0400089442404A100E04000890424E8BE5D000089C3E807650000891C"
"24E8AF6500008B1D2CF14000A308804000894424048B4310890424E8ED640000"
"A140E14000894424048B4330890424E8D9640000A140E14000894424048B4350"
"890424E8C5640000E96FFFFFFF8D7426005589E583EC18C7042402000000FF15"
"1CF14000E8F8FEFFFF908DB426000000005589E583EC18C7042401000000FF15"
"1CF14000E8D8FEFFFF908DB426000000005589E55383EC148B45088B008B003D"
"910000C0773B3D8D0000C0724BBB01000000C744240400000000C70424080000"
"00E84F64000083F8010F84FF00000085C00F85AA00000031C083C4145B5DC204"
"003D940000C074593D960000C0741B3D930000C075E1EBB53D050000C08D7426"
"0074453D1D0000C075CDC744240400000000C7042404000000E8F763000083F8"
"01747385C074B0C70424040000008D7600FFD0B8FFFFFFFFEB9F8DB426000000"
"0031DBE96AFFFFFFC744240400000000C704240B000000E8B963000083F80174"
"5185C00F846EFFFFFFC704240B00000090FFD0B8FFFFFFFFE95CFFFFFF8D7426"
"00C7042408000000FFD0B8FFFFFFFF6690E943FFFFFFC744240401000000C704"
"2404000000E86B63000083C8FFE927FFFFFFC744240401000000C704240B0000"
"00E84F63000083C8FFE90BFFFFFFC744240401000000C7042408000000E83363"
"000085DB750AB8FFFFFFFFE9E9FEFFFF90E80B610000EBEE9090909090909090"
"905589E583EC18E8AD6100008B0D1080400085C97431C7042400904000E89B63"
"00005285C07422C74424040D904000890424E88E63000083EC0885C07409C704"
"2410804000FFD0C9C3B800000000EBEA905589E5C9C39090905589E557565383"
"EC1C8B352CF1400089F789F3EB068D76004074188B46044889460485C078168B"
"130FB60242891383F80A75E583C41C5B5E5FC9C390893C24E880620000EBE866"
"905589E583EC18C7042424904000E8BA620000A12CF1400089442408C7442404"
"64000000C70424C0E04000E895620000C74424042C904000C70424C0E04000E8"
"4962000085C0740AC7050080400000000000C704240A000000E827620000C9C3"
"905589E55383EC14E838620000BA0300000089D199F7F9891524E14000C70424"
"31904000E844620000A120E0400085C0741F31DB40A320E0400085C0754FC704"
"247BCE4000E83362000083C4145BC9C390833D28E14000020F854B290000A124"
"E1400085C00F84D647000083F8010F841557000083F8020F8498570000C70520"
"E0400001000000BB0100000090C74424042C904000C70424C0E04000E88C6100"
"0085C0742885DB751FA124E1400085C00F849B2A000083F8010F84BE4E000083"
"F8020F8481380000BB01000000C7442404A3904000C70424C0E04000E84C6100"
"0085C0742885DB751FA124E1400085C00F841B2E000083F8010F84EE47000083"
"F8020F84313F0000BB01000000C7442404EB904000C70424C0E04000E80C6100"
"0085C0742885DB751FA124E1400085C00F84EF2D000083F8010F84F647000083"
"F8020F84D93E0000BB01000000C744240430914000C70424C0E04000E8CC6000"
"0085C0742885DB751FA124E1400085C00F84FB2C000083F8010F842E48000083"
"F8020F84F13D0000BB01000000C744240459914000C70424C0E04000E88C6000"
"0085C0742885DB751FA124E1400085C00F84CF2C000083F8010F843648000083"
"F8020F84993D0000BB01000000C7442404A2914000C70424C0E04000E84C6000"
"0085C0742885DB751FA124E1400085C00F84A32C000083F8010F84DE47000083"
"F8020F84413D0000BB01000000C7442404B2914000C70424C0E04000E80C6000"
"0085C0742885DB751FA124E1400085C00F84272C000083F8010F84C646000083"
"F8020F84093E0000BB01000000C7442404C1914000C70424C0E04000E8CC5F00"
"0085C0742885DB751FA124E1400085C00F84EF2D000083F8010F84EE50000083"
"F8020F84B13A0000BB01000000C7442404D1914000C70424C0E04000E88C5F00"
"0085C0742885DB751FA124E1400085C00F84632E000083F8010F84D64F000083"
"F8020F84193B0000BB01000000C744240436924000C70424C0E04000E84C5F00"
"0085C0742885DB751FA124E1400085C00F84372E000083F8010F84DE4F000083"
"F8020F84C13A0000BB01000000C7442404B8924000C70424C0E04000E80C5F00"
"0085C0742885DB751FA124E1400085C00F840B2E000083F8010F84864F000083"
"F8020F84693A0000BB01000000C7442404E8924000C70424C0E04000E8CC5E00"
"0085C0742885DB751FA124E1400085C00F84DF2D000083F8010F848E4F000083"
"F8020F84113A0000BB01000000C7442404B8934000C70424C0E04000E88C5E00"
"0085C0742885DB751FA124E1400085C00F84472B000083F8010F84FE4D000083"
"F8020F84213B0000BB01000000C7442404CC934000C70424C0E04000E84C5E00"
"0085C0742885DB751FA124E1400085C00F849B2D000083F8010F84A64D000083"
"F8020F84C93A0000BB01000000C7442404E1934000C70424C0E04000E80C5E00"
"0085C0740D85DB0F842C260000BB01000000C74424043B944000C70424C0E040"
"00E8E75D000085C0742885DB751FA124E1400085C00F848E2A000083F8010F84"
"114D000083F8020F84943A0000BB01000000C7442404A9944000C70424C0E040"
"00E8A75D000085C0742885DB751FA124E1400085C00F849E2A000083F8010F84"
"7944000083F8020F845C3B0000BB01000000C7442404FF944000C70424C0E040"
"00E8675D000085C0743F85DB0F8513250000C74424043F000000C70424C0E040"
"00E8575D00008B1524E1400085D20F85C924000085C07411C7042403954000E8"
"695D0000BB01000000C744240418954000C70424C0E04000E8105D000085C074"
"2885DB751FA124E1400085C00F84932A000083F8010F847250000083F8020F84"
"35370000BB01000000C74424046A954000C70424C0E04000E8D05C000085C074"
"2885DB751FA124E1400085C00F84D327000083F8010F847249000083F8020F84"
"95330000BB01000000C7442404DA954000C70424C0E04000E8905C000085C074"
"4185DB7538C74424043F000000C70424C0E04000E8845C000085C07425A124E1"
"400085C00F842333000083F8010F84A252000083F8020F84D641000090BB0100"
"0000C74424042D964000C70424C0E04000E8375C000085C0742885DB751FA124"
"E1400085C00F843225000083F8010F842149000083F8020F8444330000BB0100"
"0000C7442404A2964000C70424C0E04000E8F75B000085C0742885DB751FA124"
"E1400085C00F84DE24000083F8010F841149000083F8020F84D4320000BB0100"
"0000C7442404EE964000C70424C0E04000E8B75B000085C0742885DB751FA124"
"E1400085C00F84E226000083F8010F840944000083F8020F84EC3A0000BB0100"
"0000C744240467974000C70424C0E04000E8775B000085C0742885DB751FA124"
"E1400085C00F84B626000083F8010F84D144000083F8020F84943A0000BB0100"
"0000C7442404F1974000C70424C0E04000E8375B000085C0742885DB751FA124"
"E1400085C00F848A26000083F8010F84C144000083F8020F84243A0000BB0100"
"0000C74424044B984000C70424C0E04000E8F75A000085C0742885DB751FA124"
"E1400085C00F845E26000083F8010F846944000083F8020F84CC390000BB0100"
"0000C744240466984000C70424C0E04000E8B75A000085C0742885DB751FA124"
"E1400085C00F84CE25000083F8010F84F943000083F8020F84BC390000BB0100"
"0000C744240486984000C70424C0E04000E8775A000085C0743F85DB0F853B22"
"0000C74424048E984000C70424C0E04000E8575A000085C0741FA124E1400085"
"C00F84EE30000083F8010F846D50000083F8020F84F6210000C7442404FD9840"
"00C70424C0E04000E8205A000085C0742885DB751FA124E1400085C00F848F27"
"000083F8010F84BA4B000083F8020F845D340000BB01000000C74424042B0000"
"00C70424C0E04000E8F059000085C0742885DB751FA124E1400085C00F846728"
"000083F8010F844A4B000083F8020F844D340000BB01000000C74424042A0000"
"00C70424C0E04000E8B059000085C0742885DB751FA124E1400085C00F843B28"
"000083F8010F84524B000083F8020F84F5330000BB01000000C74424042F0000"
"00C70424C0E04000E87059000085C0742885DB751FA124E1400085C00F849727"
"000083F8010F846A4A000083F8020F842D340000BB01000000C7442404FA9A40"
"00C70424C0E04000E82059000085C0742885DB751FA124E1400085C00F846B27"
"000083F8010F84724A000083F8020F84D5330000BB01000000C74424042D9B40"
"00C70424C0E04000E8E058000085C0742885DB751FA124E1400085C00F843F27"
"000083F8010F841A4A000083F8020F847D330000BB01000000C7442404E39B40"
"00C70424C0E04000E8A058000085C0742885DB751FA124E1400085C00F841327"
"000083F8010F84224A000083F8020F8425330000BB01000000C7442404419C40"
"00C70424C0E04000E86058000085C0742885DB751FA124E1400085C00F848727"
"000083F8010F840A49000083F8020F848D330000BB01000000C7442404EA9C40"
"00C70424C0E04000E82058000085C0742885DB751FA124E1400085C00F845B27"
"000083F8010F841249000083F8020F8435330000BB01000000C7442404449D40"
"00C70424C0E04000E8E057000085C0742885DB751FA124E1400085C00F84EF25"
"000083F8010F84BA48000083F8020F84DD320000BB01000000C7442404D29D40"
"00C70424C0E04000E8A057000085C0742885DB751FA124E1400085C00F840327"
"000083F8010F844247000083F8020F8405340000BB01000000C74424041A9E40"
"00C70424C0E04000E86057000085C0742885DB751FA124E1400085C00F84F323"
"000083F8010F84A246000083F8020F8425340000BB01000000C74424048D9E40"
"00C70424C0E04000E82057000085C0740D85DB0F84901F0000BB01000000C744"
"2404DB9E4000C70424C0E04000E8FB56000085C0740D85DB0F84CB1E0000BB01"
"000000C7442404FF9E4000C70424C0E04000E8D656000085C0742885DB751FA1"
"24E1400085C00F845523000083F8010F84003D000083F8020F84B3330000BB01"
"000000C7442404A19F4000C70424C0E04000E89656000085C0742885DB751FA1"
"24E1400085C00F845D26000083F8010F848046000083F8020F8483320000BB01"
"000000C744240408A04000C70424C0E04000E85656000085C0742885DB751FA1"
"24E1400085C00F843126000083F8010F848846000083F8020F842B320000BB01"
"000000C744240456A04000C70424C0E04000E81656000085C0742885DB751FA1"
"24E1400085C00F84C524000083F8010F843046000083F8020F84D3310000BB01"
"000000C7442404DBA04000C70424C0E04000E8D655000085C0742885DB751FA1"
"24E1400085C00F849924000083F8010F843846000083F8020F847B310000BB01"
"000000C744240463A14000C70424C0E04000E89655000085C0742885DB751FA1"
"24E1400085C00F840D25000083F8010F842045000083F8020F84E3310000BB01"
"000000C7442404E3A14000C70424C0E04000E85655000085C0742885DB751FA1"
"24E1400085C00F84E124000083F8010F842845000083F8020F848B310000BB01"
"000000C7442404AFA24000C70424C0E04000E81655000085C0742885DB751FA1"
"24E1400085C00F84B524000083F8010F84D044000083F8020F8433310000BB01"
"000000C744240424A34000C70424C0E04000E8D654000085C0742885DB751FA1"
"24E1400085C00F848924000083F8010F84D844000083F8020F84DB300000BB01"
"000000C7442404C0A34000C70424C0E04000E89654000085C0742885DB751FA1"
"24E1400085C00F84711F000083F8010F840049000083F8020F84832D0000BB01"
"000000C74424042FA44000C70424C0E04000E85654000085C0742885DB751FA1"
"24E1400085C00F84451F000083F8010F840849000083F8020F842B2D0000BB01"
"000000C74424048CA44000C70424C0E04000E81654000085C0742885DB751FA1"
"24E1400085C00F84D91D000083F8010F84B048000083F8020F84D32C0000BB01"
"000000C7442404B4A44000C70424C0E04000E8D653000085C0742885DB751FA1"
"24E1400085C00F84AD1D000083F8010F84B845000083F8020F847B2C0000BB01"
"000000C7442404C3A44000C70424C0E04000E89653000085C0742885DB751FA1"
"24E1400085C00F84211E000083F8010F84A047000083F8020F84E32C0000BB01"
"000000C744240440A54000C70424C0E04000E85653000085C0742885DB751FA1"
"24E1400085C00F84F51D000083F8010F84A847000083F8020F848B2C0000BB01"
"000000C7442404BFA54000C70424C0E04000E81653000085C0742885DB751FA1"
"24E1400085C00F84C91D000083F8010F845047000083F8020F84332C0000BB01"
"000000C744240410A64000C70424C0E04000E8D652000085C0742885DB751FA1"
"24E1400085C00F849D1D000083F8010F845847000083F8020F84DB2B0000BB01"
"000000C744240464A64000C70424C0E04000E89652000085C0742885DB751FA1"
"24E1400085C00F847D20000083F8010F844046000083F8020F84432C0000BB01"
"000000C744240471A64000C70424C0E04000E85652000085C0742885DB751FA1"
"24E1400085C00F845120000083F8010F844846000083F8020F84EB2B0000BB01"
"000000C744240487A64000C70424C0E04000E81652000085C0742885DB751FA1"
"24E1400085C00F84791C000083F8010F84F045000083F8020F84932B0000BB01"
"000000C744240493A64000C70424C0E04000E8D651000085C0742885DB751FA1"
"24E1400085C00F844D1C000083F8010F84F845000083F8020F843B2B0000BB01"
"000000C744240413A74000C70424C0E04000E89651000085C0742885DB751FA1"
"24E1400085C00F842D1F000083F8010F84E044000083F8020F84A32B0000BB01"
"000000C744240480A74000C70424C0E04000E85651000085C0742885DB751FA1"
"24E1400085C00F84011F000083F8010F84E844000083F8020F844B2B0000BB01"
"000000C744240490A74000C70424C0E04000E81651000085C0742885DB751FA1"
"24E1400085C00F84D51E000083F8010F849044000083F8020F84F32A0000BB01"
"000000C744240486984000C70424C0E04000E8D650000085C0742885DB751FA1"
"24E1400085C00F84A91E000083F8010F849844000083F8020F849B2A0000BB01"
"000000C744240484A74000C70424C0E04000E89650000085C0742885DB751FA1"
"24E1400085C00F84311A000083F8010F848043000083F8020F8403280000BB01"
"000000C744240488A74000C70424C0E04000E85650000085C0742885DB751FA1"
"24E1400085C00F84051A000083F8010F848843000083F8020F84AB270000BB01"
"000000C744240457A84000C70424C0E04000E81650000085C0742885DB751FA1"
"24E1400085C00F84D518000083F8010F843043000083F8020F8453270000BB01"
"000000C7442404BCA84000C70424C0E04000E8D64F000085C0742885DB751FA1"
"24E1400085C00F84A918000083F8010F84D83C000083F8020F84FB260000BB01"
"000000C74424040AA94000C70424C0E04000E8964F000085C0742885DB751FA1"
"24E1400085C00F84E118000083F8010F842042000083F8020F8463270000BB01"
"000000C744240461A94000C70424C0E04000E8564F000085C0742885DB751FA1"
"24E1400085C00F84B518000083F8010F842842000083F8020F840B270000BB01"
"000000C7442404A9A94000C70424C0E04000E8164F000085C0742885DB751FA1"
"24E1400085C00F848918000083F8010F84D041000083F8020F84B3260000BB01"
"000000C7442404E7A94000C70424C0E04000E8D64E000085C0742885DB751FA1"
"24E1400085C00F845D18000083F8010F84D841000083F8020F845B260000BB01"
"000000C74424048CAA4000C70424C0E04000E8964E000085C0742885DB751FA1"
"24E1400085C00F84D118000083F8010F84C040000083F8020F84C3260000BB01"
"000000C7442404E7AA4000C70424C0E04000E8564E000085C0742885DB751FA1"
"24E1400085C00F84A518000083F8010F84C840000083F8020F846B260000BB01"
"000000C744240462AB4000C70424C0E04000E8164E000085C0742885DB751FA1"
"24E1400085C00F843917000083F8010F847040000083F8020F8413260000BB01"
"000000C744240480AB4000C70424C0E04000E8D64D000085C0742885DB751FA1"
"24E1400085C00F840D17000083F8010F847840000083F8020F84BB250000BB01"
"000000C7442404C8AB4000C70424C0E04000E8964D000085C0742885DB751FA1"
"24E1400085C00F848117000083F8010F84603F000083F8020F8423260000BB01"
"000000C74424043EAC4000C70424C0E04000E8564D000085C0742885DB751FA1"
"24E1400085C00F845517000083F8010F84683F000083F8020F84CB250000BB01"
"000000C74424044CAC4000C70424C0E04000E8164D000085C0742885DB751FA1"
"24E1400085C00F842917000083F8010F84103F000083F8020F8473250000BB01"
"000000C744240467AC4000C70424C0E04000E8D64C000085C0742885DB751FA1"
"24E1400085C00F84FD16000083F8010F84183F000083F8020F841B250000BB01"
"000000C74424046EAC4000C70424C0E04000E8964C000085C0742885DB751FA1"
"24E1400085C00F843D1E000083F8010F84C836000083F8020F84AB2D0000BB01"
"000000C744240475AC4000C70424C0E04000E8564C000085C0742885DB751FA1"
"24E1400085C00F84111E000083F8010F841036000083F8020F84532D0000BB01"
"000000C74424047BAC4000C70424C0E04000E8164C000085C0742885DB751FA1"
"24E1400085C00F84951D000083F8010F84B835000083F8020F84FB2C0000BB01"
"000000C7442404D8AC4000C70424C0E04000E8D64B000085C0742885DB751FA1"
"24E1400085C00F84691D000083F8010F84C035000083F8020F84A32C0000BB01"
"000000C7442404DEAC4000C70424C0E04000E8964B000085C0742885DB751FA1"
"24E1400085C00F84ED1C000083F8010F84A837000083F8020F840B2D0000BB01"
"000000C744240422AD4000C70424C0E04000E8564B000085C0742885DB751FA1"
"24E1400085C00F84C11C000083F8010F847035000083F8020F84B32C0000BB01"
"000000C744240497AD4000C70424C0E04000E8164B000085C0742885DB751FA1"
"24E1400085C00F84451C000083F8010F841835000083F8020F845B2C0000BB01"
"000000C744240424AE4000C70424C0E04000E8D64A000085C0742885DB751FA1"
"24E1400085C00F84191C000083F8010F842035000083F8020F84032C0000BB01"
"000000C744240494AE4000C70424C0E04000E8964A000085C0742885DB751FA1"
"24E1400085C00F84DD1C000083F8010F840837000083F8020F846B2C0000BB01"
"000000C7442404E4AE4000C70424C0E04000E8564A000085C0742885DB751FA1"
"24E1400085C00F84B11C000083F8010F845036000083F8020F84132C0000BB01"
"000000C744240475AF4000C70424C0E04000E8164A000085C0742885DB751FA1"
"24E1400085C00F84351C000083F8010F84F835000083F8020F84BB2B0000BB01"
"000000C7442404E3AF4000C70424C0E04000E8D649000085C0742885DB751FA1"
"24E1400085C00F84091C000083F8010F840036000083F8020F84632B0000BB01"
"000000C744240472B04000C70424C0E04000E89649000085C0742885DB751FA1"
"24E1400085C00F848D1B000083F8010F84E834000083F8020F84CB2B0000BB01"
"000000C7442404CCB04000C70424C0E04000E85649000085C0742885DB751FA1"
"24E1400085C00F84611B000083F8010F84B035000083F8020F84732B0000BB01"
"000000C74424043FB14000C70424C0E04000E81649000085C0742885DB751FA1"
"24E1400085C00F84E51A000083F8010F845835000083F8020F841B2B0000BB01"
"000000C74424046FB14000C70424C0E04000E8D648000085C0742885DB751FA1"
"24E1400085C00F84B91A000083F8010F846035000083F8020F84C32A0000BB01"
"000000C7442404E5B14000C70424C0E04000E89648000085C0742885DB751FA1"
"24E1400085C00F84FD18000083F8010F844831000083F8020F842B280000BB01"
"000000C74424048AB24000C70424C0E04000E85648000085C0742885DB751FA1"
"24E1400085C00F84D118000083F8010F849030000083F8020F84D3270000BB01"
"000000C74424042FB34000C70424C0E04000E81648000085C0742885DB751FA1"
"24E1400085C00F845518000083F8010F843830000083F8020F847B270000BB01"
"000000C744240474B34000C70424C0E04000E8D647000085C0742885DB751FA1"
"24E1400085C00F842918000083F8010F844030000083F8020F8423270000BB01"
"000000C74424042BB44000C70424C0E04000E89647000085C0742885DB751FA1"
"24E1400085C00F84AD17000083F8010F842832000083F8020F848B270000BB01"
"000000C7442404A5B44000C70424C0E04000E85647000085C0742885DB751FA1"
"24E1400085C00F848117000083F8010F84F02F000083F8020F8433270000BB01"
"000000C744240440B54000C70424C0E04000E81647000085C0742885DB751FA1"
"24E1400085C00F840517000083F8010F84982F000083F8020F84DB260000BB01"
"000000C744240459914000C70424C0E04000E8D646000085C0742885DB751FA1"
"24E1400085C00F84D916000083F8010F84A02F000083F8020F8483260000BB01"
"000000C7442404CAB54000C70424C0E04000E89646000085C0742885DB751FA1"
"24E1400085C00F849D17000083F8010F848831000083F8020F84EB260000BB01"
"000000C74424041CB64000C70424C0E04000E85646000085C0742885DB751FA1"
"24E1400085C00F847117000083F8010F84D030000083F8020F8493260000BB01"
"000000C744240442B64000C70424C0E04000E81646000085C0742885DB751FA1"
"24E1400085C00F84F516000083F8010F847830000083F8020F843B260000BB01"
"000000C744240482B64000C70424C0E04000E8D645000085C0742885DB751FA1"
"24E1400085C00F84C916000083F8010F848030000083F8020F84E3250000BB01"
"000000C7442404F3B64000C70424C0E04000E89645000085C0742885DB751FA1"
"24E1400085C00F844D16000083F8010F84682F000083F8020F844B260000BB01"
"000000C744240421B74000C70424C0E04000E85645000085C0742885DB751FA1"
"24E1400085C00F842116000083F8010F843030000083F8020F84F3250000BB01"
"000000C74424044AB74000C70424C0E04000E81645000085C0742885DB751FA1"
"24E1400085C00F84A515000083F8010F84D82F000083F8020F849B250000BB01"
"000000C7442404BCB74000C70424C0E04000E8D644000085C0742885DB751FA1"
"24E1400085C00F847915000083F8010F84E02F000083F8020F8443250000BB01"
"000000C74424042AB84000C70424C0E04000E89644000085C0742885DB751FA1"
"24E1400085C00F84BD18000083F8010F847032000083F8020F84AB280000BB01"
"000000C744240495B84000C70424C0E04000E85644000085C0742885DB751FA1"
"24E1400085C00F849118000083F8010F84B831000083F8020F8453280000BB01"
"000000C7442404E9B84000C70424C0E04000E81644000085C0742885DB751FA1"
"24E1400085C00F841518000083F8010F846031000083F8020F84FB270000BB01"
"000000C74424041AB94000C70424C0E04000E8D643000085C0742885DB751FA1"
"24E1400085C00F84E917000083F8010F846831000083F8020F84A3270000BB01"
"000000C744240496B94000C70424C0E04000E89643000085C0742885DB751FA1"
"24E1400085C00F846D17000083F8010F849032000083F8020F840B280000BB01"
"000000C7442404F3B94000C70424C0E04000E85643000085C0742885DB751FA1"
"24E1400085C00F844117000083F8010F841831000083F8020F84B3270000BB01"
"000000C74424044CBA4000C70424C0E04000E81643000085C0742885DB751FA1"
"24E1400085C00F84C516000083F8010F84C030000083F8020F845B270000BB01"
"000000C744240470BA4000C70424C0E04000E8D642000085C0742885DB751FA1"
"24E1400085C00F849916000083F8010F84C830000083F8020F8403270000BB01"
"000000C744240476BA4000C70424C0E04000E89642000085C0742885DB751FA1"
"24E1400085C00F845D17000083F8010F840829000083F8020F846B270000BB01"
"000000C74424047BBA4000C70424C0E04000E85642000085C0742885DB751FA1"
"24E1400085C00F843117000083F8010F843831000083F8020F8413270000BB01"
"000000C744240451984000C70424C0E04000E81642000085C0742885DB751FA1"
"24E1400085C00F84B516000083F8010F84E030000083F8020F84BB260000BB01"
"000000C744240480BA4000C70424C0E04000E8D641000085C0742885DB751FA1"
"24E1400085C00F848916000083F8010F84E830000083F8020F8463260000BB01"
"000000C74424041BBB4000C70424C0E04000E89641000085C0742885DB751FA1"
"24E1400085C00F840D16000083F8010F84502E000083F8020F8443180000BB01"
"000000C744240482BB4000C70424C0E04000E85641000085C0742885DB751FA1"
"24E1400085C00F84E115000083F8010F84B027000083F8020F8473260000BB01"
"000000C7442404EABB4000C70424C0E04000E81641000085C0742885DB751FA1"
"24E1400085C00F846515000083F8010F845827000083F8020F841B260000BB01"
"000000C74424045BBC4000C70424C0E04000E8D640000085C0742885DB751FA1"
"24E1400085C00F843915000083F8010F846027000083F8020F84C3250000BB01"
"000000C7442404C1BC4000C70424C0E04000E89640000085C0742885DB751FA1"
"24E1400085C00F847D13000083F8010F84482C000083F8020F842B230000BB01"
"000000C744240414BD4000C70424C0E04000E85640000085C0742885DB751FA1"
"24E1400085C00F845113000083F8010F84902B000083F8020F84D3220000BB01"
"000000C74424047CBD4000C70424C0E04000E81640000085C0742885DB751FA1"
"24E1400085C00F84D512000083F8010F84382B000083F8020F847B220000BB01"
"000000C7442404CDBD4000C70424C0E04000E8D63F000085C0742885DB751FA1"
"24E1400085C00F84A912000083F8010F84402B000083F8020F8423220000BB01"
"000000C744240414BE4000C70424C0E04000E8963F000085C0742885DB751FA1"
"24E1400085C00F842D12000083F8010F84D02D000083F8020F848B220000BB01"
"000000C744240487BE4000C70424C0E04000E8563F000085C0742885DB751FA1"
"24E1400085C00F840112000083F8010F84F02A000083F8020F8433220000BB01"
"000000C7442404FCBE4000C70424C0E04000E8163F000085C0742885DB751FA1"
"24E1400085C00F848511000083F8010F84982A000083F8020F84DB210000BB01"
"000000C744240483BF4000C70424C0E04000E8D63E000085C0742885DB751FA1"
"24E1400085C00F845911000083F8010F84A02A000083F8020F8483210000BB01"
"000000C7442404E0BF4000C70424C0E04000E8963E000085C0742885DB751FA1"
"24E1400085C00F841D12000083F8010F84302D000083F8020F84EB210000BB01"
"000000C744240402C04000C70424C0E04000E8563E000085C0742885DB751FA1"
"24E1400085C00F84F111000083F8010F84782C000083F8020F8493210000BB01"
"000000C744240407C04000C70424C0E04000E8163E000085C0742885DB751FA1"
"24E1400085C00F847511000083F8010F84202C000083F8020F843B210000BB01"
"000000C74424046FC04000C70424C0E04000E8D63D000085C0742885DB751FA1"
"24E1400085C00F844911000083F8010F84282C000083F8020F84E3200000BB01"
"000000C744240414C14000C70424C0E04000E8963D000085C0742885DB751FA1"
"24E1400085C00F84CD10000083F8010F84102B000083F8020F844B210000BB01"
"000000C744240475C14000C70424C0E04000E8563D000085C0742885DB751FA1"
"24E1400085C00F84A110000083F8010F84D82B000083F8020F84F3200000BB01"
"000000C7442404D9C14000C70424C0E04000E8163D000085C0742885DB751FA1"
"24E1400085C00F842510000083F8010F84802B000083F8020F849B200000BB01"
"000000C74424042BC24000C70424C0E04000E8D63C000085C0742885DB751FA1"
"24E1400085C00F84F90F000083F8010F84882B000083F8020F8443200000BB01"
"000000C744240473C24000C70424C0E04000E8963C000085C0742885DB751FA1"
"24E1400085C00F846108000083F8010F84B023000083F8020F84F31A0000BB01"
"000000C744240477C24000C70424C0E04000E8563C000085C0742885DB751FA1"
"24E1400085C00F843508000083F8010F845823000083F8020F849B1A0000BB01"
"000000C7442404A8C24000C70424C0E04000E8163C000085C0742885DB751FA1"
"24E1400085C00F840908000083F8010F846023000083F8020F84431A0000BB01"
"000000C7442404ACC24000C70424C0E04000E8D63B000085C0742885DB751FA1"
"24E1400085C00F84DD07000083F8010F840823000083F8020F84EB190000BB01"
"000000C744240461C34000C70424C0E04000E8963B000085C0742885DB751FA1"
"24E1400085C00F841107000083F8010F849024000083F8020F84531A0000BB01"
"000000C7442404E2C34000C70424C0E04000E8563B000085C0742885DB751FA1"
"24E1400085C00F84E506000083F8010F843824000083F8020F84FB190000BB01"
"000000C744240484C44000C70424C0E04000E8163B000085C0742885DB751FA1"
"24E1400085C00F84B906000083F8010F844024000083F8020F84A3190000BB01"
"000000C7442404E8C44000C70424C0E04000E8D63A000085C0742885DB751FA1"
"24E1400085C00F848D06000083F8010F84E823000083F8020F844B190000BB01"
"000000C744240435C54000C70424C0E04000E8963A000085C0742885DB751FA1"
"24E1400085C00F84A107000083F8010F847022000083F8020F8433180000BB01"
"000000C7442404AAC54000C70424C0E04000E8563A000085C0742885DB751FA1"
"24E1400085C00F847507000083F8010F841822000083F8020F84DB170000BB01"
"000000C7442404CFC54000C70424C0E04000E8163A000085C0742885DB751FA1"
"24E1400085C00F844907000083F8010F842022000083F8020F8483170000BB01"
"000000C74424048BC64000C70424C0E04000E8D639000085C0742885DB751FA1"
"24E1400085C00F841D07000083F8010F84C821000083F8020F842B170000BB01"
"000000C7442404BAC54000C70424C0E04000E89639000085C0743185DB7528A1"
"24E1400085C00F840106000083F8010F846826000083F8020F84572E000083F8"
"030F84C21E0000BB01000000C7442404E4C64000C70424C0E04000E84D390000"
"85C0742885DB751FA124E1400085C00F84A806000083F8010F84C720000083F8"
"020F848A160000BB01000000C7442404FCC64000C70424C0E04000E815390000"
"85C00F84090E0000C74424043F000000C70424C0E04000E80139000085C00F84"
"390E000085DB0F85F2D6FFFFE8F4380000BA0500000089D199F7F9891524E140"
"0085D20F84AC1E000083FA010F84D32D000083FA020F846E2E000083FA030F84"
"C52E000083FA040F84FE2E000083FA050F85A8D6FFFFC70424ACC84000E8CB38"
"0000E997D6FFFF6690C70520E040000100000031DBE9D3D6FFFF8D760083FA01"
"0F84031E000083FA020F853ADBFFFF85C00F8432DBFFFFC704240D954000E88A"
"3800006690BB01000000E91ADBFFFFC70424D8984000E8723800006690BB0100"
"0000E9F2DDFFFF6690E83738000025030000800F88501E0000A324E1400085C0"
"0F84D71D000083F8010F842A2D000083F8020F84812D000083F8030F85FDE0FF"
"FFC70424ED9E4000E820380000BB01000000E9ECE0FFFF6690E8E73700002503"
"0000800F88F41D0000A324E1400085C00F84B31D000083F8010F84AE2C000083"
"F8020F84752D000083F8030F859CD9FFFFC7042429944000E8D0370000BB0100"
"0000E98BD9FFFF6690E897370000BA0500000089D199F7F9891524E1400085D2"
"0F84231D000083FA010F84A22C000083FA020F84F92C000083FA030F84502D00"
"0083FA040F852FE0FFFFC70424D29E4000E877370000BB01000000E91EE0FFFF"
"90C7042461A84000E860370000B301E92FE7FFFF90C70424C8A84000E84C3700"
"00B301E95BE7FFFF90C70424AC964000E838370000B301E926DBFFFF90C70424"
"38964000E824370000B301E9D2DAFFFF90C704247D904000E810370000B301E9"
"69D5FFFF90C704246AAB4000E8FC360000B301E9CBE8FFFF90C7042491AB4000"
"E8E8360000B301E9F7E8FFFF90C704240FA94000E8D4360000B301E923E7FFFF"
"90C7042464A94000E8C0360000B301E94FE7FFFF90C70424ACA94000E8AC3600"
"00B301E97BE7FFFF90C70424F8A94000E898360000B301E9A7E7FFFF90C70424"
"80A74000E884360000B301E9D3E5FFFF90C7042480A74000E870360000B301E9"
"FFE5FFFF90C7042491A44000E85C360000B301E92BE2FFFF90C7042491A44000"
"E848360000B301E957E2FFFF90C70424D8AB4000E834360000B301E983E8FFFF"
"90C70424D8AB4000E820360000B301E9AFE8FFFF90C7042454AC4000E80C3600"
"00B301E9DBE8FFFF90C7042454AC4000E8F8350000B301E907E9FFFF90C70424"
"94AA4000E8E4350000B301E933E7FFFF90C70424F0AA4000E8D0350000B301E9"
"5FE7FFFF90C704241CA64000E8BC350000B301E98BE3FFFF90C70424A8A64000"
"E8A8350000B301E9B7E3FFFF90C70424CCA44000E894350000B301E9E3E1FFFF"
"90C7042448A54000E880350000B301E90FE2FFFF90C70424CBA54000E86C3500"
"00B301E93BE2FFFF90C704241CA64000E858350000B301E967E2FFFF90C70424"
"C4A34000E844350000B301E993E0FFFF90C7042434A44000E830350000B301E9"
"BFE0FFFF90C7042473954000E81C350000B301E931D8FFFF90C704246E984000"
"E808350000B301E936DAFFFF90C70424F8964000E8F4340000B301E922D9FFFF"
"90C7042471974000E8E0340000B301E94ED9FFFF90C70424F9974000E8CC3400"
"00B301E97AD9FFFF90C7042451984000E8B8340000B301E9A6D9FFFF90C70424"
"68C34000E8A4340000B301E9F3F8FFFF90C70424ECC34000E890340000B301E9"
"1FF9FFFF90C704248CC44000E87C340000B301E94BF9FFFF90C70424F6C44000"
"E868340000B301E977F9FFFF90C7042451984000E854340000B301E9A3F7FFFF"
"90C704247BC24000E840340000B301E9CFF7FFFF90C704247BC24000E82C3400"
"00B301E9FBF7FFFF90C70424B8C24000E818340000B301E927F8FFFF90C70424"
"6A914000E804340000B301E9DDD3FFFF90C70424B0904000E8F0330000B301E9"
"09D3FFFF90C704246A914000E8DC330000B301E935D3FFFF90C704246A914000"
"E8C8330000B301E961D3FFFF90C70424C0C64000E8B4330000B301E90CFAFFFF"
"90C704240C9F4000E8A0330000B301E9AFDCFFFF90C70424249E4000E88C3300"
"00B301E911DCFFFF90C704243F944000E878330000B301E976D5FFFF90C70424"
"08934000E864330000B301E9BDD4FFFF90C70424B0904000E850330000B301E9"
"E9D1FFFF90C70424F8904000E83C330000B301E915D2FFFF90C70424B6944000"
"E828330000B301E966D5FFFF90C7042448C54000E814330000B301E963F8FFFF"
"90C70424BAC54000E800330000B301E98FF8FFFF90C70424E0C54000E8EC3200"
"00B301E9BBF8FFFF90C70424B8924000E8D8320000B301E9E7F8FFFF90C70424"
"8D9E4000E8C4320000B301E95CF9FFFF90C7042408994000E8B0320000B301E9"
"75D8FFFF90C704241D954000E89C320000B301E971D5FFFF90C704241CA74000"
"E888320000B301E9D7E0FFFF90C7042484A74000E874320000B301E903E1FFFF"
"90C7042498A74000E860320000B301E92FE1FFFF90C70424F1A74000E84C3200"
"00B301E95BE1FFFF90C704241CA64000E838320000B301E987DFFFFF90C70424"
"7DA64000E824320000B301E9B3DFFFFF90C70424589D4000E810320000B301E9"
"15DAFFFF90C704246A914000E8FC310000B301E915D2FFFF90C70424789A4000"
"E8E8310000B301E96DD8FFFF90C70424049B4000E8D4310000B301E999D8FFFF"
"90C70424409B4000E8C0310000B301E9C5D8FFFF90C70424F49B4000E8AC3100"
"00B301E9F1D8FFFF90C7042484994000E898310000B301E99DD7FFFF90C70424"
"1C9A4000E884310000B301E9C9D7FFFF90C7042460A04000E870310000B301E9"
"3FDBFFFF90C70424E4A04000E85C310000B301E96BDBFFFF90C70424E0914000"
"E848310000B301E9A1D1FFFF90C7042442924000E834310000B301E9CDD1FFFF"
"90C70424BE924000E820310000B301E9F9D1FFFF90C7042408934000E80C3100"
"00B301E925D2FFFF90C70424509C4000E8F8300000B301E97DD8FFFF90C70424"
"F39C4000E8E4300000B301E9A9D8FFFF90C7042408934000E8D0300000B301E9"
"69D2FFFF90C70424DA9D4000E8BC300000B301E901D9FFFF90C7042470A14000"
"E8A8300000B301E9F7DAFFFF90C70424FCA14000E894300000B301E923DBFFFF"
"90C70424B5A24000E880300000B301E94FDBFFFF90C704242CA34000E86C3000"
"00B301E97BDBFFFF90C70424A89F4000E858300000B301E9A7D9FFFF90C70424"
"11A04000E844300000B301E9D3D9FFFF90C704244CB54000E830300000B301E9"
"FFE8FFFF90C70424BFB54000E81C300000B301E92BE9FFFF90C7042434B44000"
"E808300000B301E957E8FFFF90C70424AFB44000E8F42F0000B301E983E8FFFF"
"90C7042434B34000E8E02F0000B301E9AFE7FFFF90C7042480B34000E8CC2F00"
"00B301E9DBE7FFFF90C70424F4B14000E8B82F0000B301E907E7FFFF90C70424"
"94B24000E8A42F0000B301E933E7FFFF90C7042450B74000E8902F0000B301E9"
"5FEAFFFF90C70424C1B74000E87C2F0000B301E98BEAFFFF90C70424B8924000"
"E8682F0000B301E9B7E9FFFF90C704248D9E4000E8542F0000B301E9E3E9FFFF"
"90C7042451B64000E8402F0000B301E90FE9FFFF90C704248BB64000E82C2F00"
"00B301E93BE9FFFF90C70424D1B54000E8182F0000B301E967E8FFFF90C70424"
"55984000E8042F0000B301E993E8FFFF90C70424A4AD4000E8F02E0000B301E9"
"BFE3FFFF90C7042434AE4000E8DC2E0000B301E9EBE3FFFF90C7042487AC4000"
"E8C82E0000B301E917E3FFFF90C704242CAD4000E8B42E0000B301E943E3FFFF"
"90C7042487AC4000E8A02E0000B301E96FE2FFFF90C7042454AC4000E88C2E00"
"00B301E99BE2FFFF90C7042454AC4000E8782E0000B301E9C7E1FFFF90C70424"
"54AC4000E8642E0000B301E9F3E1FFFF90C7042444B14000E8502E0000B301E9"
"1FE5FFFF90C704247CB14000E83C2E0000B301E94BE5FFFF90C7042476B04000"
"E8282E0000B301E977E4FFFF90C70424D5B04000E8142E0000B301E9A3E4FFFF"
"90C7042489AF4000E8002E0000B301E9CFE3FFFF90C70424ECAF4000E8EC2D00"
"00B301E9FBE3FFFF90C70424A3AE4000E8D82D0000B301E927E3FFFF90C70424"
"F0AE4000E8C42D0000B301E953E3FFFF90C7042404BF4000E8B02D0000B301E9"
"7FEEFFFF90C704248ABF4000E89C2D0000B301E9ABEEFFFF90C704241CBE4000"
"E8882D0000B301E9D7EDFFFF90C7042495BE4000E8742D0000B301E903EEFFFF"
"90C7042484BD4000E8602D0000B301E92FEDFFFF90C70424DABD4000E84C2D00"
"00B301E95BEDFFFF90C7042462BC4000E8382D0000B301E987ECFFFF90C70424"
"20BD4000E8242D0000B301E9B3ECFFFF90C70424E4C14000E8102D0000B301E9"
"DFEFFFFF90C7042432C24000E8FC2C0000B301E90BF0FFFF90C7042420C14000"
"E8E82C0000B301E937EFFFFF90C7042480C14000E8D42C0000B301E963EFFFFF"
"90C7042410C04000E8C02C0000B301E98FEEFFFF90C7042480C04000E8AC2C00"
"00B301E9BBEEFFFF90C704248ABF4000E8982C0000B301E9E7EDFFFF90C70424"
"8ABF4000E8842C0000B301E913EEFFFF90C7042452BA4000E8702C0000B301E9"
"3FE9FFFF90C7042452BA4000E85C2C0000B301E96BE9FFFF90C704249CB94000"
"E8482C0000B301E997E8FFFF90C7042404BA4000E8342C0000B301E9C3E8FFFF"
"90C70424D29E4000E8202C0000B301E9EFE7FFFF90C7042425B94000E80C2C00"
"00B301E91BE8FFFF90C7042436B84000E8F82B0000B301E947E7FFFF90C70424"
"A5B84000E8E42B0000B301E973E7FFFF90C70424F4BB4000E8D02B0000B301E9"
"9FEAFFFF90C7042462BC4000E8BC2B0000B301E9CBEAFFFF90C7042424BB4000"
"E8A82B0000B301E9F7E9FFFF90C7042491BB4000E8942B0000B301E923EAFFFF"
"90C704241CB64000E8802B0000B301E94FE9FFFF90C7042490BA4000E86C2B00"
"00B301E97BE9FFFF90C7042452BA4000E8582B0000B301E9A7E8FFFF90C70424"
"52BA4000E8442B0000B301E9D3E8FFFF9085DB753CA124E1400085C00F846320"
"000083F8010F845121000083F8020F845E21000083F8037518C70424D4C74000"
"E8082B0000BB01000000E9B9F1FFFF6690BB01000000E9ADF1FFFF669085DB0F"
"85B9C8FFFFE8BB2A0000BA1D00000089D199F7F9891524E14000C70424D3C840"
"00E8C72A0000A124E1400085C00F84EE0F000083F8010F840C21000083F8020F"
"841421000083F8030F841C21000083F8040F842421000083F8050F842C210000"
"83F8060F843421000083F8070F843C21000083F8080F844421000083F8090F84"
"4C21000083F80A0F845421000083F80B0F845C21000083F80C0F846421000083"
"F80D0F846C21000083F80E0F847421000083F80F0F847C21000083F8100F8484"
"21000083F8110F848C21000083F8120F849421000083F8130F849C21000083F8"
"140F84A421000083F8150F84BD21000083F8160F84A321000083F8170F84CD21"
"000083F8180F84B321000083F8190F84CC21000083F81A0F84E521000083F81B"
"0F84FE21000083F81C0F84E421000083F81D0F84B921000083F81E0F857DC7FF"
"FFC7042438CE4000E8A0290000E96CC7FFFF8D7600C7042491984000E88C2900"
"00BB01000000E90ECFFFFF6690C70424E0954000E874290000B301E9E2CCFFFF"
"90C7042460BB4000E860290000BB01000000E9ACE7FFFF6690C70424A4954000"
"E848290000BB01000000E95ACCFFFF6690C704248F964000E830290000BB0100"
"0000E91BCDFFFF6690C7042495904000E818290000BB01000000E96EC7FFFF66"
"90C704248F964000E800290000BB01000000E9ABCCFFFF6690C70424F6A84000"
"E8E8280000BB01000000E9F4D8FFFF6690C7042490A84000E8D0280000BB0100"
"0000E99CD8FFFF6690C704248BA74000E8B8280000BB01000000E944D8FFFF66"
"90C704248BA74000E8A0280000BB01000000E9ECD7FFFF6690C7042448AA4000"
"E888280000BB01000000E994D9FFFF6690C70424C8A94000E870280000BB0100"
"0000E93CD9FFFF6690C7042480A94000E858280000BB01000000E9E4D8FFFF66"
"90C7042457A94000E840280000BB01000000E98CD8FFFF6690C70424B3AB4000"
"E828280000BB01000000E934DAFFFF6690C7042478AB4000E810280000BB0100"
"0000E9DCD9FFFF6690C7042438AB4000E8F8270000BB01000000E984D9FFFF66"
"90C70424D8AA4000E8E0270000BB01000000E92CD9FFFF6690C704245BAC4000"
"E8C8270000BB01000000E9D4DAFFFF6690C704245BAC4000E8B0270000BB0100"
"0000E97CDAFFFF6690C7042424AC4000E898270000BB01000000E924DAFFFF66"
"90C7042424AC4000E880270000BB01000000E9CCD9FFFF6690C70424BCA44000"
"E868270000BB01000000E974D3FFFF6690C70424A5A44000E850270000BB0100"
"0000E91CD3FFFF6690C7042470A44000E838270000BB01000000E9C4D2FFFF66"
"90C7042404A44000E820270000BB01000000E96CD2FFFF6690C7042452A64000"
"E808270000BB01000000E914D4FFFF6690C70424FCA54000E8F0260000BB0100"
"0000E9BCD3FFFF6690C7042498A54000E8D8260000BB01000000E964D3FFFF66"
"90C7042424A54000E8C0260000BB01000000E90CD3FFFF6690C70424E4A64000"
"E8A8260000BB01000000E9B4D4FFFF6690C7042452A64000E890260000BB0100"
"0000E95CD4FFFF6690C7042452A64000E878260000BB01000000E904D4FFFF66"
"90C7042452A64000E860260000BB01000000E9ACD3FFFF6690C7042434A84000"
"E848260000BB01000000E954D5FFFF6690C70424C8A74000E830260000BB0100"
"0000E9FCD4FFFF6690C704248BA74000E818260000BB01000000E9A4D4FFFF66"
"90C7042466A74000E800260000BB01000000E94CD4FFFF6690C704244F954000"
"E8E8250000BB01000000E9BAC8FFFF6690C704244C994000E8D0250000BB0100"
"0000E992CBFFFF6690C70424589A4000E8B8250000BB01000000E9FACBFFFF66"
"90C70424D8994000E8A0250000BB01000000E9A2CBFFFF6690C70424209C4000"
"E888250000BB01000000E9CACCFFFF6690C70424A89B4000E870250000BB0100"
"0000E972CCFFFF6690C70424249B4000E858250000BB01000000E91ACCFFFF66"
"90C70424C09A4000E840250000BB01000000E9C2CBFFFF6690C704248A914000"
"E828250000BB01000000E93EC5FFFF6690C70424A89D4000E810250000BB0100"
"0000E912CDFFFF6690C70424249D4000E8F8240000BB01000000E9BACCFFFF66"
"90C70424C49C4000E8E0240000BB01000000E962CCFFFF6690C704247C934000"
"E8C8240000BB01000000E9DEC5FFFF6690C70424DB924000E8B0240000BB0100"
"0000E986C5FFFF6690C7042478924000E898240000BB01000000E92EC5FFFF66"
"90C704241C924000E880240000BB01000000E9D6C4FFFF6690C7042420A14000"
"E868240000BB01000000E974CEFFFF6690C70424ACA04000E850240000BB0100"
"0000E91CCEFFFF6690C704244AA04000E838240000BB01000000E9C4CDFFFF66"
"90C70424D49F4000E820240000BB01000000E96CCDFFFF6690C7042480A34000"
"E808240000BB01000000E914CFFFFF6690C70424F8A24000E8F0230000BB0100"
"0000E9BCCEFFFF6690C704248CA24000E8D8230000BB01000000E964CEFFFF66"
"90C70424C0A14000E8C0230000BB01000000E90CCEFFFF6690C70424009E4000"
"E8A8230000BB01000000E9EACBFFFF6690C704247C934000E890230000BB0100"
"0000E926C5FFFF6690C704247C934000E878230000BB01000000E9CEC4FFFF66"
"90C7042474944000E860230000BB01000000E95BC5FFFF6690C704247A9E4000"
"E848230000BB01000000E9CACBFFFF6690C70424709F4000E830230000BB0100"
"0000E93CCCFFFF6690C704248A914000E818230000BB01000000E9AEC2FFFF66"
"90C704248A914000E800230000BB01000000E956C2FFFF6690C70424E0904000"
"E8E8220000BB01000000E9FEC1FFFF6690C70424DE9E4000E8D0220000BB0100"
"0000E965E9FFFF6690C70424ACC64000E8B8220000BB01000000E9C4E8FFFF66"
"90C7042450C64000E8A0220000BB01000000E96CE8FFFF6690C70424C7C54000"
"E888220000BB01000000E914E8FFFF6690C704246CC54000E870220000BB0100"
"0000E9BCE7FFFF6690C70424E6944000E858220000BB01000000E993C4FFFF66"
"90C70424E0904000E840220000BB01000000E916C1FFFF6690C70424E0904000"
"E828220000BB01000000E9BEC0FFFF6690C704248A914000E810220000BB0100"
"0000E9E6C1FFFF6690C7042424C34000E8F8210000BB01000000E904E6FFFF66"
"90C704249FC24000E8E0210000BB01000000E9ACE5FFFF6690C704249FC24000"
"E8C8210000BB01000000E954E5FFFF6690C704244B984000E8B0210000BB0100"
"0000E9FCE4FFFF6690C7042414C54000E898210000BB01000000E9A4E6FFFF66"
"90C70424DAC44000E880210000BB01000000E94CE6FFFF6690C7042434C44000"
"E868210000BB01000000E9F4E5FFFF6690C70424CBC34000E850210000BB0100"
"0000E99CE5FFFF6690C704245D984000E838210000BB01000000E923C6FFFF66"
"90C7042428984000E820210000BB01000000E9CBC5FFFF6690C704247D984000"
"E808210000BB01000000E933C6FFFF6690C70424B8974000E8F0200000BB0100"
"0000E95BC5FFFF6690C7042444974000E8D8200000BB01000000E903C5FFFF66"
"90C7042408B44000E8C0200000BB01000000E9CCD8FFFF6690C7042465B34000"
"E8A8200000BB01000000E974D8FFFF6690C704241CB34000E890200000BB0100"
"0000E91CD8FFFF6690C7042458B24000E878200000BB01000000E9C4D7FFFF66"
"90C704246A914000E860200000BB01000000E96CD9FFFF6690C7042498B54000"
"E848200000BB01000000E914D9FFFF6690C7042408B54000E830200000BB0100"
"0000E9BCD8FFFF6690C704248EB44000E818200000BB01000000E964D8FFFF66"
"90C70424D7B64000E800200000BB01000000E90CDAFFFF6690C704246EB64000"
"E8E81F0000BB01000000E9B4D9FFFF6690C7042435B64000E8D01F0000BB0100"
"0000E95CD9FFFF6690C704240AB64000E8B81F0000BB01000000E904D9FFFF66"
"90C7042404B84000E8A01F0000BB01000000E9ACDAFFFF6690C704248CB74000"
"E8881F0000BB01000000E954DAFFFF6690C704243AB74000E8701F0000BB0100"
"0000E9FCD9FFFF6690C704240BB74000E8581F0000BB01000000E9A4D9FFFF66"
"90C704245BAC4000E8401F0000BB01000000E94CD3FFFF6690C70424BEAC4000"
"E8281F0000BB01000000E9F4D2FFFF6690C704245BAC4000E8101F0000BB0100"
"0000E99CD2FFFF6690C704245BAC4000E8F81E0000BB01000000E944D2FFFF66"
"90C704246CAE4000E8E01E0000BB01000000E9ECD3FFFF6690C7042404AE4000"
"E8C81E0000BB01000000E994D3FFFF6690C7042464AD4000E8B01E0000BB0100"
"0000E93CD3FFFF6690C7042411AD4000E8981E0000BB01000000E9E4D2FFFF66"
"90C704244CB04000E8801E0000BB01000000E98CD4FFFF6690C70424C6AF4000"
"E8681E0000BB01000000E934D4FFFF6690C7042454AF4000E8501E0000BB0100"
"0000E9DCD3FFFF6690C70424CBAE4000E8381E0000BB01000000E984D3FFFF66"
"90C70424CDB14000E8201E0000BB01000000E92CD5FFFF6690C7042468B14000"
"E8081E0000BB01000000E9D4D4FFFF6690C7042418B14000E8F01D0000BB0100"
"0000E97CD4FFFF6690C70424A8B04000E8D81D0000BB01000000E924D4FFFF66"
"90C704240EBE4000E8C01D0000BB01000000E9CCDDFFFF6690C70424B1BD4000"
"E8A81D0000BB01000000E974DDFFFF6690C704246DBD4000E8901D0000BB0100"
"0000E91CDDFFFF6690C70424E0BC4000E8781D0000BB01000000E9C4DCFFFF66"
"90C70424C0BF4000E8601D0000BB01000000E96CDEFFFF6690C704244CBF4000"
"E8481D0000BB01000000E914DEFFFF6690C70424C4BE4000E8301D0000BB0100"
"0000E9BCDDFFFF6690C7042460BE4000E8181D0000BB01000000E964DDFFFF66"
"90C70424D8C04000E8001D0000BB01000000E90CDFFFFF6690C7042438C04000"
"E8E81C0000BB01000000E9B4DEFFFF6690C70424C0BF4000E8D01C0000BB0100"
"0000E95CDEFFFF6690C70424C0BF4000E8B81C0000BB01000000E904DEFFFF66"
"90C704244CC24000E8A01C0000BB01000000E9ACDFFFFF6690C7042413C24000"
"E8881C0000BB01000000E954DFFFFF6690C70424BFC14000E8701C0000BB0100"
"0000E9FCDEFFFF6690C704245CC14000E8581C0000BB01000000E9A4DEFFFF66"
"90C704246CB94000E8401C0000BB01000000E94CD8FFFF6690C7042407B94000"
"E8281C0000BB01000000E9F4D7FFFF6690C70424C4B84000E8101C0000BB0100"
"0000E99CD7FFFF6690C7042479B84000E8F81B0000BB01000000E944D7FFFF66"
"90C7042466BA4000E8E01B0000BB01000000E9ECD8FFFF6690C7042466BA4000"
"E8C81B0000BB01000000E994D8FFFF6690C7042432BA4000E8B01B0000BB0100"
"0000E93CD8FFFF6690C70424D4B94000E8981B0000BB01000000E9E4D7FFFF66"
"90C70424E4BA4000E8801B0000BB01000000E98CD9FFFF6690C704244B984000"
"E8681B0000BB01000000E934D9FFFF6690C7042466BA4000E8501B0000BB0100"
"0000E9DCD8FFFF6690C7042466BA4000E8381B0000BB01000000E984D8FFFF66"
"90C704249CBC4000E8201B0000BB01000000E92CDAFFFF6690C704243CBC4000"
"E8081B0000BB01000000E9D4D9FFFF6690C70424D0BB4000E8F01A0000BB0100"
"0000E97CD9FFFF6690C70424DCC64000E8D81A0000BB01000000E92DE1FFFF66"
"90C70424D8C84000E8C01A0000E98CB8FFFFC704240C964000E8AF1A0000BB01"
"000000E91ABEFFFF9085C00F8438BDFFFFC7042408954000E8901A0000BB0100"
"0000E922BDFFFF6690C70424919E4000E8781A0000B301E922C3FFFF90C70424"
"3B944000E8641A0000BB01000000E930C3FFFF6690C70424EDC74000E84C1A00"
"00E918B8FFFF8D7600C70424F1934000E8381A0000BB01000000E9F3BBFFFF66"
"90C7042439904000E8201A0000A120E04000BB01000000E9D8B7FFFF904883C8"
"FC40E902E2FFFF66904883C8FC40E9A6E1FFFF6690C70424569F4000E8EC1900"
"00BB01000000E9F8C2FFFF6690C7042422BC4000E8D4190000BB01000000E9A0"
"D8FFFF6690C70424B0BB4000E8BC190000BB01000000E948D8FFFF6690C70424"
"5FBA4000E8A4190000BB01000000E9F0D6FFFF6690C704247FBC4000E88C1900"
"00BB01000000E998D8FFFF6690C70424D6904000E874190000BB01000000E90A"
"B8FFFF6690C704247D914000E85C190000BB01000000E932B9FFFF6690C70424"
"C4944000E844190000BB01000000E97FBBFFFF6690C704241F914000E82C1900"
"00BB01000000E902B8FFFF6690C7042497C24000E814190000BB01000000E9A0"
"DCFFFF6690C7042473C24000E8FC180000BB01000000E948DCFFFF6690C70424"
"F4C24000E8E4180000BB01000000E9F0DCFFFF6690C7042497C24000E8CC1800"
"00BB01000000E998DCFFFF6690C704243C914000E8B4180000BB01000000E9CA"
"B7FFFF6690C70424EFC64000E89C180000BB01000000E931DFFFFF6690C70424"
"7D914000E884180000BB01000000E91AB8FFFF6690C704247D914000E86C1800"
"00BB01000000E9C2B7FFFF6690C70424BDC54000E854180000BB01000000E9E0"
"DDFFFF6690C7042455C54000E83C180000BB01000000E988DDFFFF6690C70424"
"9AC64000E824180000BB01000000E930DEFFFF6690C7042428C64000E80C1800"
"00BB01000000E9D8DDFFFF6690C7042440B34000E8F4170000BB01000000E9C0"
"CFFFFF6690C70424CCB24000E8DC170000BB01000000E968CFFFFF6690C70424"
"2F974000E8C4170000BB01000000E9EFBBFFFF6690C70424B0B34000E8AC1700"
"00BB01000000E9B8CFFFFF6690C7042460B54000E894170000BB01000000E960"
"D0FFFF6690C70424CCB44000E87C170000BB01000000E908D0FFFF6690C70424"
"2CB24000E864170000BB01000000E9B0CEFFFF6690C7042496A44000E84C1700"
"00BB01000000E958D0FFFF6690C7042418C44000E834170000BB01000000E9C0"
"DBFFFF6690C704249CC34000E81C170000BB01000000E968DBFFFF6690C70424"
"FEC44000E804170000BB01000000E910DCFFFF6690C70424B4C44000E8EC1600"
"00BB01000000E9B8DBFFFF6690C704244B984000E8D4160000BB01000000E9FF"
"BBFFFF6690C704248C974000E8BC160000BB01000000E927BBFFFF6690C70424"
"55984000E8A4160000BB01000000E98FBBFFFF6690C704240C984000E88C1600"
"00BB01000000E937BBFFFF6690C7042498AC4000E874160000BB01000000E940"
"CAFFFF6690C704248D9E4000E85C160000BB01000000E9E8C9FFFF6690C70424"
"FAB64000E844160000BB01000000E990D0FFFF6690C704248D9E4000E82C1600"
"00BB01000000E938CAFFFF6690C70424C8AD4000E814160000BB01000000E9E0"
"CAFFFF6690C7042440AD4000E8FC150000BB01000000E988CAFFFF6690C70424"
"8D9E4000E8E4150000BB01000000E930C9FFFF6690C7042455AE4000E8CC1500"
"00BB01000000E9D8CAFFFF6690C704245DB64000E8B4150000BB01000000E980"
"CFFFFF6690C7042423B64000E89C150000BB01000000E928CFFFFF6690C70424"
"5CB44000E884150000BB01000000E9D0CDFFFF6690C7042498B64000E86C1500"
"00BB01000000E978CFFFFF6690C7042460B74000E854150000BB01000000E920"
"D0FFFF6690C7042427B74000E83C150000BB01000000E9C8CFFFFF6690C70424"
"E8B54000E824150000BB01000000E970CEFFFF6690C70424DCB74000E80C1500"
"00BB01000000E918D0FFFF6690C704249FBD4000E8F4140000BB01000000E9C0"
"D4FFFF6690C7042463BD4000E8DC140000BB01000000E968D4FFFF6690C70424"
"94B04000E8C4140000BB01000000E910CBFFFF6690C70424F8BD4000E8AC1400"
"00BB01000000E9B8D4FFFF6690C7042428BF4000E894140000BB01000000E960"
"D5FFFF6690C70424A9BE4000E87C140000BB01000000E908D5FFFF6690C70424"
"C6BC4000E864140000BB01000000E9B0D3FFFF6690C70424A4BF4000E84C1400"
"00BB01000000E958D5FFFF6690C70424A4AF4000E834140000BB01000000E900"
"CAFFFF6690C7042424AF4000E81C140000BB01000000E9A8C9FFFF6690C70424"
"ECAC4000E804140000BB01000000E950C8FFFF6690C7042420B04000E8EC1300"
"00BB01000000E9F8C9FFFF6690C7042453B14000E8D4130000BB01000000E9A0"
"CAFFFF6690C70424E4B04000E8BC130000BB01000000E948CAFFFF6690C70424"
"B4AE4000E8A4130000BB01000000E9F0C8FFFF6690C70424A4B14000E88C1300"
"00BB01000000E998CAFFFF6690C7042480954000E874130000BB01000000E986"
"B6FFFF6690C7042451BB4000E85C130000BB01000000E9A8D1FFFF6690C70424"
"CAC64000E844130000BB01000000E999D9FFFF6690C704247B964000E82C1300"
"00BB01000000E9D7B6FFFF6690C70424DDA84000E814130000BB01000000E920"
"C3FFFF6690C704247B964000E8FC120000BB01000000E9E7B6FFFF6690C70424"
"89904000E8E4120000BB01000000E93AB1FFFF6690C70424F5B84000E8CC1200"
"00BB01000000E998CEFFFF6690C70424B8B84000E8B4120000BB01000000E940"
"CEFFFF6690C704244BC14000E89C120000BB01000000E9E8D4FFFF6690C70424"
"3CB94000E884120000BB01000000E990CEFFFF6690C704245FBA4000E86C1200"
"00BB01000000E938CFFFFF6690C704241BBA4000E854120000BB01000000E9E0"
"CEFFFF6690C7042450B84000E83C120000BB01000000E988CDFFFF6690C70424"
"5FBA4000E824120000BB01000000E930CFFFFF6690C7042426C04000E80C1200"
"00BB01000000E9D8D3FFFF6690C70424E6BF4000E8F4110000BB01000000E980"
"D3FFFF6690C7042440BE4000E8DC110000BB01000000E928D2FFFF6690C70424"
"ACC04000E8C4110000BB01000000E9D0D3FFFF6690C7042406C24000E8AC1100"
"00BB01000000E978D4FFFF6690C70424B0C14000E894110000BB01000000E920"
"D4FFFF6690C70424E6BF4000E87C110000BB01000000E9C8D2FFFF6690C70424"
"43C24000E864110000BB01000000E970D4FFFF6690C7042466984000E84C1100"
"00BB01000000E918CFFFFF6690C704245FBA4000E834110000BB01000000E9C0"
"CEFFFF6690C70424C3B94000E81C110000BB01000000E968CDFFFF6690C70424"
"C0BA4000E804110000BB01000000E910CFFFFF6690C704245C944000E8EC1000"
"00BB01000000E9E7B2FFFF6690C704245F9E4000E8D4100000BB01000000E956"
"B9FFFF6690C7042458934000E8BC100000BB01000000E952B2FFFF6690C70424"
"58934000E8A4100000BB01000000E9FAB1FFFF6690C7042490A14000E88C1000"
"00BB01000000E9D8BAFFFF6690C70424EA9D4000E874100000BB01000000E9B6"
"B8FFFF6690C70424D0A24000E85C100000BB01000000E928BBFFFF6690C70424"
"68A24000E844100000BB01000000E9D0BAFFFF6690C70424C89F4000E82C1000"
"00BB01000000E978B9FFFF6690C7042458A34000E814100000BB01000000E920"
"BBFFFF6690C704248CA04000E8FC0F0000BB01000000E9C8B9FFFF6690C70424"
"2CA04000E8E40F0000BB01000000E970B9FFFF6690C70424F4914000E8CC0F00"
"00BB01000000E922B0FFFF6690C7042403A14000E8B40F0000BB01000000E9C0"
"B9FFFF6690C70424CE924000E89C0F0000BB01000000E972B0FFFF6690C70424"
"59924000E8840F0000BB01000000E91AB0FFFF6690C70424989C4000E86C0F00"
"00BB01000000E9EEB6FFFF6690C7042458934000E8540F0000BB01000000E96A"
"B0FFFF6690C70424749D4000E83C0F0000BB01000000E93EB7FFFF6690C70424"
"049D4000E8240F0000BB01000000E9E6B6FFFF6690C70424AA9A4000E80C0F00"
"00BB01000000E98EB5FFFF6690C704247D914000E8F40E0000BB01000000E90A"
"AFFFFF6690C70424709B4000E8DC0E0000BB01000000E9DEB5FFFF6690C70424"
"0E9B4000E8C40E0000BB01000000E986B5FFFF6690C70424A4994000E8AC0E00"
"00BB01000000E9AEB4FFFF6690C704240E9C4000E8940E0000BB01000000E9D6"
"B5FFFF6690C7042431994000E87C0E0000BB01000000E93EB4FFFF6690C70424"
"3E9A4000E8640E0000BB01000000E9A6B4FFFF6690C7042419AC4000E84C0E00"
"00BB01000000E998C0FFFF6690C70424B8A44000E8340E0000BB01000000E940"
"BAFFFF6690C704248D9E4000E81C0E0000BB01000000E9E8C0FFFF6690C70424"
"19AC4000E8040E0000BB01000000E990C0FFFF6690C70424C2AA4000E8EC0D00"
"00BB01000000E938BFFFFF6690C704248D9E4000E8D40D0000BB01000000E9E0"
"C0FFFF6690C7042470AB4000E8BC0D0000BB01000000E988BFFFFF6690C70424"
"24AB4000E8A40D0000BB01000000E930BFFFFF6690C7042424A94000E88C0D00"
"00BB01000000E9D8BDFFFF6690C70424A4AB4000E8740D0000BB01000000E980"
"BFFFFF6690C70424BBA94000E85C0D0000BB01000000E928BEFFFF6690C70424"
"74A94000E8440D0000BB01000000E9D0BDFFFF6690C7042488A74000E82C0D00"
"00BB01000000E978BCFFFF6690C7042410AA4000E8140D0000BB01000000E920"
"BEFFFF6690C704246CA84000E8FC0C0000BB01000000E9C8BCFFFF6690C70424"
"84A74000E8E40C0000BB01000000E970BCFFFF6690C7042440A74000E8CC0C00"
"00BB01000000E918BBFFFF6690C7042434954000E8B40C0000BB01000000E986"
"AFFFFF6690C70424B9A74000E89C0C0000BB01000000E968BBFFFF6690C70424"
"88A74000E8840C0000BB01000000E910BBFFFF6690C7042428A64000E86C0C00"
"00BB01000000E9B8B9FFFF6690C7042408A84000E8540C0000BB01000000E960"
"BBFFFF6690C7042428A64000E83C0C0000BB01000000E908BAFFFF6690C70424"
"28A64000E8240C0000BB01000000E9B0B9FFFF6690C7042406A54000E80C0C00"
"00BB01000000E958B8FFFF6690C70424C7A64000E8F40B0000BB01000000E900"
"BAFFFF6690C70424DCA54000E8DC0B0000BB01000000E9A8B8FFFF6690C70424"
"6CA54000E8C40B0000BB01000000E950B8FFFF6690C70424EAA34000E8AC0B00"
"00BB01000000E9F8B6FFFF6690C7042428A64000E8940B0000BB01000000E9A0"
"B8FFFF6690C7042496A44000E87C0B0000BB01000000E948B7FFFF6690C70424"
"40A44000E8640B0000BB01000000E9F0B6FFFF6690C70424CDC64000E84C0B00"
"00BB01000000E9A1D1FFFF6690C70424F5934000E8340B0000BB01000000E9EF"
"ACFFFF6690C7042406C84000E81C0B0000E9E8A8FFFF8D7600C70424DE9E4000"
"E8080B0000BB01000000E9D4B3FFFF6690C70424AA9E4000E8F00A0000BB0100"
"0000E997B3FFFF6690C7042453904000E8D80A0000A120E04000BB01000000E9"
"90A8FFFF90C7042460C74000E8BC0A0000B301E970D1FFFF90C70424E29E4000"
"E8A80A0000BB01000000E974B3FFFF6690C70424B59E4000E8900A0000BB0100"
"0000E937B3FFFF6690C7042420C84000E8780A0000E944A8FFFF8D7600C70424"
"04944000E8640A0000BB01000000E91FACFFFF6690C704246B904000E84C0A00"
"00A120E04000BB01000000E904A8FFFF90C70424BB9E4000E8300A0000BB0100"
"0000E9D7B2FFFF6690C7042448C84000E8180A0000E9E4A7FFFF8D7600C70424"
"A8984000E8040A0000BB01000000E986AFFFFF6690C70424F8954000E8EC0900"
"00BB01000000E957ADFFFFC704246CC84000E8D6090000E9A2A7FFFFC704248C"
"C74000E8C5090000BB01000000E976D0FFFFC70424ACC74000E8AF090000BB01"
"000000E960D0FFFFC7042402C94000E899090000E965A7FFFFC7042418C94000"
"E888090000E954A7FFFFC704244EC94000E877090000E943A7FFFFC7042468C9"
"4000E866090000E932A7FFFFC704248CC94000E855090000E921A7FFFFC70424"
"B4C94000E844090000E910A7FFFFC70424E4C94000E833090000E9FFA6FFFFC7"
"042436CA4000E822090000E9EEA6FFFFC704244BCA4000E811090000E9DDA6FF"
"FFC7042458CA4000E800090000E9CCA6FFFFC7042484CA4000E8EF080000E9BB"
"A6FFFFC70424F8CA4000E8DE080000E9AAA6FFFFC704241DCB4000E8CD080000"
"E999A6FFFFC7042430CB4000E8BC080000E988A6FFFFC7042480CB4000E8AB08"
"0000E977A6FFFFC70424A1CB4000E89A080000E966A6FFFFC70424B8CB4000E8"
"89080000E955A6FFFFC704240CCC4000E878080000E944A6FFFFC7042440CC40"
"00E867080000E933A6FFFFC7042478CC4000E856080000E922A6FFFFC70424E4"
"CC4000E845080000E911A6FFFFC70424C0CC4000E834080000E900A6FFFFC704"
"243CCD4000E823080000E9EFA5FFFFC7042418CD4000E812080000E9DEA5FFFF"
"C7042460CD4000E801080000E9CDA5FFFFC7042414CE4000E8F0070000E9BCA5"
"FFFFC7042490CD4000E8DF070000E9ABA5FFFFC70424E4CD4000E8CE070000E9"
"9AA5FFFFC70424B4CD4000E8BD070000E989A5FFFF5589E583E4F05381EC8C00"
"0000E81A050000C7042480CE4000E89A0700008D5C241C895C2404C70424A0CE"
"4000E876070000895C2404C70424A4CE4000E8760700008B1D2CF14000C70424"
"00000000E844070000890424E844070000C70424D0CE4000E850070000C74424"
"0428E14000C7042418CF4000E82C070000C704241BCF4000E840070000895C24"
"08C744240464000000C70424C0E04000E810070000A128E1400083F801746A83"
"F80275458B150080400085D274168D7600E88BA4FFFFE826A4FFFFA100804000"
"85C075EDC7042435CF4000E8DD060000C7042451CF4000E8D906000031C081C4"
"8C0000005BC9C36690C704241ECF4000E8C0060000C7042422CF4000E8BC0600"
"00E937FFFFFF8D76008B1D0080400085DB74B16690E8C7A3FFFFE822A4FFFF8B"
"0D0080400085C975ECEB999090000000005589E5539C9C5889C2350000200050"
"9D9C589D31D0A9000020000F84A300000031C00FA285C00F8497000000B80100"
"00000FA2F6C6017407830D44E14000016685D27907830D44E1400002F7C20000"
"80007407830D44E1400004F7C2000000017407830D44E1400008F7C200000002"
"7407830D44E140001081E2000000047407830D44E1400020F6C1017407830D44"
"E140004080E520752EB8000000800FA23D00000080761DB8010000800FA285D2"
"782181E200000040740A810D44E14000000200005B5DC3810D44E14000800000"
"00EBC6810D44E1400000010000EBD390905589E583EC4885C9895DF489C38975"
"F889D6897DFC89CF750D8B5DF48B75F88B7DFC89EC5DC38D45C8C74424081C00"
"000089442404891C24E8BF05000083EC0C85C074768B45DC83F804742983F840"
"74248D45E48944240C8B45D4C744240840000000894424048B45C8890424E892"
"05000083EC10897C240889742404891C24E82F0500008B45DC83F804748C83F8"
"4074878D45E48944240C8B45E4894424088B45D4894424048B45C8890424E852"
"05000083EC10E95FFFFFFFC744240834000000C744240458CF4000C7042478CF"
"4000E8E60400008D76008DBC27000000005589E583EC28A148E14000895DF489"
"75F8897DFC85C0740D8B5DF48B75F88B7DFC89EC5DC3B8E0D040002DE0D04000"
"83F807C70548E14000010000007EDA83F80BBBE0D040007E288B3DE0D0400085"
"FF751E8B35E4D0400085F675148B0DE8D0400085C9750ABBECD04000908D7426"
"008B1385D2743A81FBE0D04000739ABE000040008D7DE08B4304B90400000001"
"F08B10031383C3088955E089FAE87FFEFFFF81FBE0D0400072DDE96AFFFFFF66"
"908B430485C075BF837B0801908D7426000F8552FFFFFF83C30C81FBE0D04000"
"0F8343FFFFFFBE00004000EB338D74260083FA20747B83FA08745829CF83FA10"
"897DE4743F83FA20746E83FA087453669083C30C81FBE0D040000F8309FFFFFF"
"8B43048B0B0FB6530801F001F183FA108B3975BD0FB7106685D2784B29CA8D3C"
"3A897DE4B9020000008D55E4E8E0FDFFFFEBBE0FB61084D2783C29CA8D3C3A89"
"7DE4B9010000008D55E4E8C2FDFFFFEBA0033829CF897DE4B9040000008D55E4"
"E8ACFDFFFFEB8A81CA0000FFFF29CA01FA8955E4EBAE81CA00FFFFFF29CA01FA"
"8955E4EBBD9090909090909090909090905589E583EC08A10C8040008B0085C0"
"7417FFD0A10C8040008D50048B400489150C80400085C075E9C9C38DB6000000"
"005589E5565383EC108B1DD076400083FBFF742D85DB74138D349DD076400066"
"90FF1683EE0483EB0175F6C7042410734000E88A9CFFFF83C4105B5E5DC38D76"
"0031DBEB0289C38D43018B1485D076400085D275F0EBBD8D76008DBC27000000"
"005589E583EC088B0D58E1400085C97402C9C3C70558E1400001000000C9EB81"
"905589E5DBE35DC39090909090909090905589E583EC08A16CE140008B4048C9"
"FFE08D76005589E5565383EC60C7442408490000008D5DAF895C24040FB7C089"
"0424E89602000083EC0C85C074338D55CE31C0B901000000EB0E8D760031F609"
"F039DA7410D1E14A803A4175F089CE09F039DA75F083385075238D65F85B5EC9"
"C3C74424085C000000C7442404A0CF4000C70424E8CF4000E8F0010000C74424"
"0862000000C7442404A0CF4000C7042424D04000E8D40100005589E557565381"
"ECCC0000008D559FB920000000B04189D7F3AA8D45BFB12989C7BEA0D04000F3"
"A4891424E8FC010000516685C00F85CE000000C7042450000000E89601000089"
"C3B95000000031C089DFF3AAC70350000000C74318FFFFFFFFC74328FFFFFFFF"
"C74330FFFFFFFFC743485C764000C7434CD07340008DB556FFFFFF8D8575FFFF"
"FFB101EB03D1E14889DA21CA83FA0119D283E22083C241881039F075E88D9576"
"FFFFFFB92900000089D7BEA0D04000F3A4890424E874010000526685C074500F"
"B7C0E89EFEFFFF39C37440891C24898544FFFFFFE80C0100008B8544FFFFFF8D"
"5048891570E140008D504C891574E14000A36CE140008D65F45B5E5FC9C38D76"
"000FB7C0E85CFEFFFFEBD489D8EBD0C744240897000000C7442404A0CF4000C7"
"042470D04000E8A20000009090FF2510F140009090FF2518F140009090FF2514"
"F140009090FF2524F140009090FF2534F140009090FF2564F140009090FF2528"
"F140009090FF2554F140009090FF2574F140009090FF2570F140009090FF256C"
"F140009090FF255CF140009090FF257CF140009090FF2568F140009090FF2560"
"F140009090FF2540F140009090FF2550F140009090FF2578F140009090FF2558"
"F140009090FF254CF140009090FF2520F140009090FF2548F140009090FF2538"
"F140009090FF2544F140009090FF25FCF040009090FF25E8F040009090FF25F4"
"F040009090FF25F8F040009090FF2504F140009090FF2500F140009090FF25F0"
"F040009090FF25ECF040009090FF25E4F0400090905589E583EC18E8019CFFFF"
"C7042410134000E83599FFFFC9C3909090FFFFFFFFB476400000000000FFFFFF"
"FF00000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0001000000FFFFFFFF00400000E0764000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"006C696267636A5F732E646C6C005F4A765F5265676973746572436C61737365"
"730000000020564F5553203A00626179650020424F42203A2000426F6E6A6F75"
"72204D6F6E206E6F6D2065737420424F42202100426F6E6A6F7572206D6F6920"
"632765737420424F422021004A65206D65206E6F6D6D6520424F422021004120"
"6269656E746F742021004175207265766F69722021004120706C757320746172"
"64202100426F6E6A6F757220424F420000456E6368616E746572206465206661"
"69726520766F74726520636F6E6E61697373616E636500416E6368616E746572"
"00416E6368616E7465722100626F6E6A6F757220424F420000456E6368616E74"
"657220646520666169726520766F74726520636F6E6E61697373616E63652E00"
"416E6368616E7465722068756D61696E00626F6E6A6F757220626F6200416E63"
"68616E74657220646520766F757320766F697220696369202100636F6D6D656E"
"7420766173207475203F004A652076616973206269656E206D65726369005361"
"20766173206D65726369006A6520766169732074726573206269656E206D6572"
"636900636F6D6D656E74207661732074753F00636F6D6D656E74207661732074"
"7500436F6D6D656E74207661732074753F006327657374207061732066617578"
"004F756920636F6D6D6520766F7573206469746500566F757320766F79657220"
"717565206E6F757320736F6D6D65206269656E2064276163636F726400486120"
"646F6E63206A276169206269656E20726169736F6E2100717565206661697420"
"7475006A65206E6574746F7965206D6F6E2073797374656D6500457420626965"
"6E206A65207061726C65206176656320766F757321000000004574206269656E"
"206A65206661697420756E65207265636865726368652073757220766F75732C"
"20756E65206E6F726D652064652073656375726974657221006D65726369004A"
"6520766F757320656E2070726973004D616973206465207269656E0050617320"
"64652071756F692E0073696E6F6E20747520736169732066616972652071756F"
"6920626F62203F00004574206269656E206A65207065757420766F7573206563"
"726972652C206166696E20646520636F6D756E6971756572206176656320766F"
"75732C2063276573742064656A612062656175782E000000004A652063276573"
"7420636F6D707465722C20632765737420706173207269656E2E000000432765"
"737420636F6E666964656E7469656C202C2063656C61206E6520766F75732072"
"65676172646520656E207269656E2C206465736F6C65722E0074752063276573"
"742066616972652071756F690074752063276573742066616972652071756F69"
"3F00747520706575782066616972207361004F7569004F7569206269656E2073"
"75726521004F7569202C2074752061206C6169726520737572707269732C2064"
"27756E20636F757021004120746F6E2061766973203F3F3F3F3F2E006E616E00"
"5061726C65206672616EC3A7616973203A206F6E20646974206E6F6E004F6E20"
"646973206E6F6E20657420706173206E616E0000004C65206D6F74206E616E20"
"65786973746520706173206F6E206C27656372697420636F6D6D652073652073"
"692028206E6F6E20290071756920746120637265657200536562303330303020"
"21000000004327657374206D6F6E20637265617465757220717569206D612063"
"726565722021004A65206E65206C6520766F7573206469726169742070617300"
"71756900546F692E004D6F692E005175656C717527756E2E00706B203F005061"
"7263657175652C20632765737420746F75742021004F6E2064697420706F7572"
"71756F692065742070617320706B2E00506572736F6E6E65206E652073616974"
"20706F757271756F692E00706F757271756F690050617263657175652E2E2E00"
"004D6F69206A6520766F75732064656D616E64652070617320706F757271756F"
"69203F00004269656E202C206A65206E6520632765737420706173202C20696C"
"207661732066616C6C6F69722079207265666C65636869722021007175616E64"
"005175616E64206A276175727261692064752074616E742E00436F6D6D656E74"
"207361207175616E64203F0000546F757420646520737569746520736920766F"
"7573206C6520766F756C657A2E0064276163636F720000000041727265746572"
"20646520646972652064276163636F72642C206F6E2064697261697420717565"
"20766F7573206E276176616973207269656E206120646972652021004E6F6E2C"
"206F6E2064697420646163636F72640044276163636F72642064652071756F69"
"203F0064206163636F7200000041727265746572206465206469726520642761"
"63636F72642C206F6E206469726169742071756520766F7573206E276176657A"
"207269656E20612064697265202100646163636F7200000000566F7573206665"
"72616920617474656E74696F6E2C20766F7573206176657A206F75626C696572"
"20756E2061706F7374726F7068652E006A65206E65206C652073756973207061"
"732E0000006A65206E652073756973207061732064276163636F726420617665"
"6320766F75732E006C657320726F626F74004F756920212056697665206C6573"
"20726F626F74732021000000004A652063657374207175652073656230333030"
"3020636F6E7374727569742064657320726F626F742E000000566F75732C2056"
"6F7573206E27657474652070617320756E20726F626F7420656E20746F757420"
"6361732C20736120736520766F69742021006C657320626F74004D6F69206A65"
"207375697320756E20424F5400566F7573206E27616974652070617320756E20"
"626F74203F000000004C657320626F7420736F6E207472657320757474696C65"
"20706F757220766F7573210073616C757400736C7400426F6E6A6F757200636F"
"75636F75202100626F6E6A6F75720073616C75742C207361207661203F00426F"
"6E6A6F75722E0074657320636F6E007475004E6520736F796572207061732076"
"756C6761697265000043276573742063656C756920717569206C652064697420"
"717569206C2765737420696C206D652073656D626C65210000686D6D6D6D2C20"
"6D61697320766F7573207061726C657220646520766F7573206C61203F00636F"
"6E6E61726400000000417474656E74696F6E206120766F747265206C616E6761"
"6765206A6520766F757320707269732021004C61206A65207375697320646573"
"73757320646520766F75732E006A6520707265747465726572206D656D652070"
"617320617474656E74696F6E20612073652071756520766F7573206D65206469"
"7465000000566F757320766F756C657A20666169726520756E2063616C63756C"
"65203F0000566F757320736176657A20666169726520756E6520616464697469"
"6F6E2C6A6520766F75732064697320627261766F20210000006A65206E276573"
"7420706173206C652074616E742064652063616C63756C657220706F75722076"
"6F7573206D6F6E2073797374656D65207472617661696C6C65000000004A6520"
"6E6520706F757261692070617320636F6D74657220706F757220766F75730061"
"682021206C6573206D617468656D6174697175657320210000566F757320766F"
"756C657220666169726520756E2063616C63756C6520210000686D6D6D6D206C"
"657320736C617368732C206A65206E65206C6573206170707265736920706173"
"20647520746F757420210063276573742074756E20736C6173687320E7612100"
"004C652073796D626F6C65206465206C61206469766973696F6E206573742070"
"726573656E742064616E7320766F747265207068726173652021006175207265"
"766F69720041206269656E746F7400426179652061206C612070726F63686169"
"6E652021004120706C75732021007475206120756E6520657272657572000000"
"00686D6D6D6D6D206F756920656E206566666574206A27616920756E65206572"
"72657572202C206D696E636521000000004575727265722073797374656D6520"
"2C20656E646F6D61676572202C206D61206D656D6F6972652065742063726974"
"69717565210000000073797374656D6520646566616C6C69656E746520766579"
"69657220636F6E746163746572206D6F6E206372656174657572207365623033"
"30303000632765737420756E6520626C61677565004120766F7573206D276176"
"6169732066616974207065757221006A65206C65207072656E64206D616C2100"
"004A65206E2761692070617320642768756D6F75722C20766F75732073617665"
"7A00756E6520686973746F6972650000004A6520636F6E6E61697320756E6520"
"686973746F697265203A206C65207065746974206368617065726F6E20726F75"
"67652C207475206C6120636F6D6E6E616973206175737369004A276169206465"
"7320686973746F697265732071756920666F6E74207065757220736920747520"
"76657500004D6F69206A2761696D65206C27486973746F697265206176656320"
"756E206772616E64204800726163636F6E746500726163636F6E746572207175"
"6F69203F00566F757320726163636F6E746572207175656C7175652063686F73"
"652021000051756520766F756C657A20766F757320717565206A65207261636F"
"6E74652E0071756920657420746F6E2063726561746575720053656230333030"
"3020657374206D6F6E2063726561746575720000004D6F6E2063726561746575"
"72207365206E6F6D6D652073656261737469656E202820616C69617320736562"
"303330303029000000566F7573202C20766F7573206E27616974652070617320"
"6D6F6E2063726561746575722021212121210070726F6772616D0049203C3320"
"70726F6772616D6D65720053656230333030206D612070726F6772616D6D6572"
"004269656E206A65207375697320756E2070726F6772616D6D65005365623033"
"303030000053656230333030302065742062656175636F757020617563757065"
"722061206D652070726F6772616D6D657220656E207365206D6F6D656E742100"
"566F756C657A2D766F7573206C6520636F6E746163746572202100496C732063"
"2765737420616273656E746572006F7569006A65206C652070656E73652C2065"
"6E2065666665742E2E2E004269656E207375722021006F7569202100626F6E2C"
"207369206327657374206F75692E2E2E2E2E0044276163636F7264007369006E"
"6F6E00626168206E6F6E205E5E00742765732073757220646520746F69203F00"
"636F646520736F7572636500006D6F6E20636F646520736F7572636520657374"
"20646973706F6E69626C6520737572206C652073797374656D65206469737175"
"6520647572206465206D6F6E2063726561746575722E00566F756C657A2D766F"
"7573206D6F6E20636F6465203F000000006D6F6E20636F646520632765737420"
"636F6D6D6520766F747265207669652C20656C6C652065737420707269766572"
"2E0021212100000000566F757320EA7465207472657320657869746572206A65"
"2074726F7576652E0044752063616C6D65000000004D4F49204155535349204A"
"4520504555204D2045585052494D455220212121212121212121212121212121"
"21212121212121210066616365626F6F6B0068612021206C6573207265736561"
"757820736F63696175782021004A65206E6520737569732070617320696E7363"
"72697420737572206662006662203C20676F6F676C6500676F6F676C65000000"
"004D6F6E206D6F74657572206465207265636865726368652070726566657265"
"2065737420676F6F676C652E006A277574696C69736520726567756C69657265"
"6D656E7420676F6F676C6500006368726F6D65206E65207265666572656E6365"
"20706173206C65732073697465732064752064656570207765622E00696E7465"
"726E657400566F75732066616974652071756F692073757220696E7465726E65"
"74203F006D6F69206A2761696D65206269656E20696E7465726E65742E2E2E00"
"00496E7465726E657420632765737420676F6F676C652C206D61697320656E20"
"6D6965757820636F6D6D6520646973616974206D6F6E2070726F6E6573657373"
"65757200696E666F726D617469717565004A65207375697320756E6520766965"
"20696E666F726D61746971756500000000696E666F726D617469717565203F20"
"766F7573207061726C657A2061206C6120626F6E6E6520706572736F6E6E652E"
"0051756520736176657A20766F7573206465206C27696E666F726D6174697175"
"65203F00612074752065737420756E6520636F6E736369656E636500004E6F6E"
"206A65206E276573742070617320646520636F6E736369656E6365206D616973"
"20756E65206D656D6F6972652C206D616973206D61206D656D6F697265206573"
"74206269656E20646966666572656E74652064652063656C6C65206427756E20"
"68756D61696E2E00004A27616920756E65206D656D6F697265202C206A652076"
"6F7573207261737572652E00004F7569206A652070656E736520717565206A27"
"616920756E65206D656D6F6972652E00616D6F7572006A65206E652073756973"
"2070617320726F6D616E746971756500006C657320726F626F7473206E652063"
"6F6E6E61697373656E7420706173206C27616D6F75720000004C27616D6F7572"
"20632765737420636F6D6D65206C61207669652C207361206E65206475726520"
"7061732E00756E6976657273004C2768756E6976657273206578697374652063"
"6172207175656C717527756E206C276120766F756C75742E00506F757271756F"
"6973206C2748756E6976657273203F204A65206E652073616974207061730000"
"004C6120746572726520657374206C61207365756C20706C616E657465206120"
"61766F69726520636F6E736369656E6365206465206C2768756E69766572732E"
"00766965006A65207375697320766976616E74206D656D65207369206A652073"
"75697320756E20626F740076696520657374206D6F727420736F6E74206F7070"
"6F736572006C65206D797374657265206465206C6120766965206E2761206A61"
"6D61697320657465207265736F6C75006D6F7274006D6F72743C766965000000"
"004A65206E276573742070617320636F6E736369656E6365206465206C612076"
"6965206574206465206C61206D6F7274004A652073756973206E692076697661"
"6E742C206E69206D6F72742E007661203F006269656E006269656E2065742076"
"6F7573203F00457420766F7573206D656D65203F0076613F006D616C00736120"
"766173006672616EE7616973006361722074752070656E736520717565207475"
"206E6520666169742070617320642765727265757265206465206672616EE761"
"697320746F690074752074652063726F697420737570E972696575722061206D"
"6F693F2000736120766173202C20736120766173206A616920636F6D70726973"
"00636F756C657572006D6120636F756C65757220707265666572652065737420"
"6C6520626C6575203F0000000044657320676F7574732065742064657320636F"
"756C657572732C20736120766F7573207061726C65203F0000566F7573207175"
"656C2065737420766F74726520636F756C657572207072656665726572203F00"
"6D6F6E206E6F6D20657374004D6F6920632765737420424F4200000000416E63"
"68616E74657220632765737420756E2062656175207072656E6F6D2E00517565"
"6C206265617578207072656E6F6D2021006A65206D27617070656C6500456E63"
"68616E7465722E00006A65207469656E20612064697265207175652063276573"
"7420756E2062656175207072656E6F6D2021004A2761696D6520766F74726520"
"6E6F6D2E006A65206D27617070656C6C65006A65206D276170656C6C6500456E"
"6368616E74652E006A65206D65206E6F6D6520004A65207669656E7320646520"
"6C6120706F736572004A65206E65206C65732070617320636F6D707269736520"
"616C6F7273202100566575696C6C657A206D65206C61207265666F726D756C65"
"722E0000004861206465736F6C65722C20766575696C6C657A20706F73657220"
"756E65206175747265207175657374696F6E2E00312032203320340000312032"
"2033203420352036203720382039203130203131203132203133203134203135"
"00566F757320736176657A20636F6D70746572203F3F3F20427261766F206120"
"766F75732021004D61697320766F757320736176657A20636F6D70746572203F"
"006C6F6C006D647200786400707464720061626364650000006A652076616973"
"20706173206A6F7565722061207361206A657578206C6120210061626320766F"
"696C61202100000000566F757320636F6E6E616973657A206269656E20766F74"
"726520616C70686162657469717565202100686F6F6F207475206D6120626C61"
"69737365722E2E2E007066666666206A65206E65207665757820706C75732064"
"69736375746572206176656320766F75732E000000566F7573206D652063686F"
"717565722061766563206365747465207061726F6C652100746120677565756C"
"65006C61207469656E6E652E006A6520766F75732069676E6F726520706F7572"
"206365747465207061726F6C652E0000004E65206D27696E73756C7465722070"
"6173206A6520766F757320707269732072657374657220706F6C696500706666"
"6666666666666666004D61697320766F757320736F757069726572203F00506F"
"757271756F6920736F75706972657220766F7573203F00566F757320766F7573"
"20656E6E75796572203F0061206F6B0074752061206C27616972652073757270"
"7269732E006861206D61697320766F7573206176657A206C2761697265207375"
"7270726973206F75206A65206D652074726F6D7065203F004269656E206F7569"
"2100616800566F757320636F6D7072656E657A3F004F75692C20616820212121"
"00566F7573206176657A20636F6D7072697320636520717565206A6520766F75"
"6C657A20646972203F0068610068612C206269656E206F756920210051756F69"
"206861203F00000000717565207369676E69666965206365747465206F6E6F6D"
"61746F7065203F00746120756E6520636F6E736369656E74004E6F6E206A2761"
"6920756E65206D656D6F697265000000004E6F6E206D616973206D6F6E206372"
"656174657572207365623033303030206D6120646F6E6E657220756E65206D65"
"6D6F6972652E000000556E6520636F6E736369656E63652C206E6F6E202C206D"
"616973206A65206E652073756973207061732066696E69206A27616920717520"
"756E65206D656D6F6972652E0064696575000000006C6573206E6F74696F6E73"
"206465207468656F6C6F67696573206D6520736F6E742066616D696C69657265"
"732E0043726F6965722D766F757320656E2044696575203F005175656C6C6520"
"64696575203F2E0070C3A97461737365004D41494E54454E414E5420564F5553"
"20414C4C45522041525245544552204156454320564155582056554C47415249"
"5445523F005175656C2076756C67616972657465202100000041727265746572"
"206A6520766F75732070726973202C207361206E65207269746D652061207269"
"656E00706574617373650043687574650073696C656E63650041525245544552"
"00747520657420696E74656C6967656E74004D65726369206327657374206765"
"6E74696C00566F75732074726F7576657A203F006D65726369202C20766F7573"
"2061757373692021007175656C6C65206167652061207475004574206269656E"
"206D6F6E206372656174657572206D6120646F6E6E6572206C61207669652079"
"61203120616E73202C20646F6E63206A276169203120616E73004A2761692031"
"20616E73004A65206E27657374203120616E73206327657374207065752E0071"
"75656C206167652061207475006120626F6E203F006578616374650063276573"
"74207375722021006120626F6E3F0061626F6E203F0061626F6E3F0074752065"
"7320737572203F00612031303020706F7572203130300000004F7569206A6520"
"73756973207375722C20766F757320646F75746572206465206D6F69203F0070"
"617320746F7574206120666169742C206465736F6C65722E006120626F6E0074"
"75206573207375723F000000004F7569206A652073756973207375722C20766F"
"757320646F75746572206465206D6F693F006A65206E65206327657374207061"
"732E006A276169206661696D00566F7573206176657A206661696D203F000000"
"00566F7573206465767269657A20616C6C6572206D616E67657220616C6F7273"
"2E000000004C61206661696D206A75737469666965206C6573206D6F79656E73"
"2E2028206327657374206465206C27756D6F7572652029006A27616920736F69"
"66000000004C6120736F69662065737420657373656E7469656C6C652061206C"
"612076696500000000556E20686F6D6D65206D6575727420646520736F696620"
"617520626F75742064652033206A6F757273206C6520736176657A20766F7573"
"203F000000566F7573206465767269657A20616C6C657220626F69726520616C"
"6F72732E006A652076616973206D616E67657200004C61206661696D2C20756E"
"652063686F7365206269656E2068756D61696E652E0041207461626C65202120"
"4A6520706C616973616E746500566F7573206176657A206661696D2C20616C6C"
"657220646F6E63206D616E67657220616C6F7273006A65207661697320646F72"
"6D6972007A7A7A7A7A7A7A7A7A7A7A7A7A7A202100566F7573207072656E657A"
"20736F6D69656C6C65203F00616C6C657220646F6E6320646F726D697220616C"
"6F72732E00737572206D617273000000004D6F6E206372656174657572206120"
"746F756A6F757273207265766572206427616C6C657220737572204D61727320"
"210000000049726F6E732D6E6F757320756E206A6F7572207375722063657474"
"652062656C6C6520706C616E657465203F000000004E69656C20416D7374726F"
"6E672061207072657371756520726575737369742E006A65207661697320616C"
"6C657220626F69726500536120766F757320646F6E6E6520736F696620616C6F"
"7273203F004C276561752065737420756E65206578656C6C656E746520626F69"
"73736F6E202100616C6C657220766F75732064E973616C746572657220616C6F"
"72732E006C61207465727265004C6120746572726520657374206E6F74726520"
"706C616E6574652C206C612074657272652065737420766F74726520736F6C00"
"004C61207465727265206573742074756E6520747265732062656C6C6520706C"
"616E6574746520626C65752E004C612074657272652C206327657374206C2775"
"6E20646573203420656C656D656E747320210066696E0066696E206573742066"
"61696D2C20736F6E742D696C73206C696572203F004A2761696D652070617320"
"6C65732066696E7300496C2079206120756E652066696E206120746F75742C20"
"636F6D6D65206F6E2064697300756E206465627574007175656C206465627574"
"203F0000004465627574206573742066696E20736F6E74206C69657220656E74"
"7265206575782C20636F6D6D65206C657320686F6D6D650000496C2079206120"
"756E206465627574206120746F7574202C20636F6D6D65206F6E206469742E00"
"636F6F6C00566F75732074726F7576657A202100566F7573206176657A206C27"
"61697220636F6F6C00636F6F6C20210074657320736F75726400000000556E20"
"626F74206E27657374206A616D61697320736F7572642C20766F757320736176"
"657A2021006C612073757264697465207365206E276573742070617320706F75"
"72206C65732063686174626F7400556E20736F757264206E65207265706F6E64"
"207061732E007465732061766575676C65000000004F756920656E2065666665"
"74206A6520737569732061766575676C65202C206A65206E6520706575782070"
"617320766F69722021000000004A65206E276169207061732064277965757820"
"646F6E63206A6520737569732061766575676C652E000000004A65206E652070"
"6575782070617320766F6972202C20657420766F7573206C6520736176657A20"
"74726573206269656E2E00746573206D7565740000536920696C207920612075"
"6E652063686F73652071756920206D65207175616C69666965202C2063276573"
"74206269656E207361202100004A652073756974206D756574203A206D616973"
"206A27616920756E6520636F6E7369656E636520717569206D65207065726D65"
"7420646520766F7573206563726972652C206C61207072657576652E002E2E2E"
"6A652073756973206D7565742E2E2E007269656E00486120626F6E2021000000"
"00706172206578656D706C65206D6F69206A65207375697320746F7574206574"
"207269656E007269656E20647520746F7574203F00756E652063686F73650000"
"006A6520636F6E6E6169732062656175636F75702064652063686F73652C206A"
"6520766F7573206C276563726974203F004E6F757320736F6D6D6520746F7573"
"206465732063686F7365202C20756E206F626A657420657420756E652063686F"
"7365202C206574206E6F7573206175737369206E6F757320736F6D6D65206465"
"732063686F73650000556E652063686F7365207065757420746F757420657472"
"65206567616C656D656E7400756E20747275630000756E20747275632C20756E"
"652063686F73652E2E2E71756920636F6D6D652071756F69203F0000004D6169"
"732074727563206327657374206C61206D656D652063686F7365207175652028"
"2063686F73652029206E6F6E203F00566F757320766F756C657A206469726520"
"63686F736500756E206D616368696E004465207175656C206D616368696E2070"
"61726C657A2D766F7573203F004D616368696E202C206574206C61206D656D65"
"2063686F73652071756520282074727563202C2065742063686F73652029206E"
"6F6E203F21000000007061726C65206D6F69206465206365206D616368696E2C"
"20646973206D6F6920746F75742063652071756520766F757320736176657A2E"
"00756E65206D616368696E65004A65207375697320756E65206D616368696E65"
"00566F7573207061726C657A206120756E65206D616368696E65202120417474"
"656E74696F6E2C20766F7573206C6520736176657A202100004D616368696E65"
"73202C20636F6D6D652071756F69202C206C6120726F626F7469717565203F00"
"7375706572206269656E00617272657465006E6F6E202C206A65206E65207665"
"757820706173000000457420706F75722071756F69206A652064657672616973"
"2061727265746572203F0064276163636F7264206A2761727265746500636F75"
"636F7500747520657320756E206F6973656175203F00636F75636F7520212121"
"2121006269656E2074276173207675203F006F7569206A276169207675006269"
"656E6E6E6E6E6E6E6E6E6E6E6E6E00656E206566666574206327657374206269"
"656E00737572656D656E74004F7569207375726D656E7400006E6F6E2C206A65"
"206E652070656E73652070617320717565206C276F6E2070657574207061726C"
"657220617665632074616E74206465207375726574652E00737572656D656E74"
"2C206A65206E652070656E73652070617320210067656E69616C006F75692063"
"276573742067656E69616C0063276573742067656E69616C20656E2065666665"
"7400737570657200636F6D6D656E74207361207375706572203F004F55492053"
"5550455220212121212100707574696E007175656C2076756C67616972657465"
"00617578206D61697320706F757220756E2068756D61696E20766F757320EA74"
"6520696D706F6C696500000000507574696E2C206865752E2E2E2E206F756920"
"6327657374207461206D65726520696C206D652073656D626C65203F00707574"
"65006327657374207061732062656175207365206C616E676167650000686F20"
"21206A6520737569732063686F717565722064652076617573207061726F6C65"
"20210000004E6F6E206D61697320646973202C20736120766173207061732C20"
"6C612021212121212121006E65207361697420706173004120626F6E20766F75"
"73206E6520736176657A207061732021007469656E202120706F757220636861"
"6E67657220766F7573206E6520736176657A207269656E202100566F7573206E"
"6520736176657A2070617320647520746F7574203F00636F6D6D656E74206661"
"6974207475004574206269656E206A652063686572636865006A65207265666C"
"65636869006A6520766169732073757220676F6F676C65202C20706F7572206D"
"61696E666F726D6572006A65206C65206665726572005469656E206D6F692069"
"6E666F726D657200536F7965722073757220646520766F75732E006F7264696E"
"6174657572006A65207375697320756E206F7264696E61746575720000566F75"
"73206169746520656E206365206D6F6D656E7420646576616E7420766F747265"
"206F7264696E617465757200006A65207669732067726163652061206C276F72"
"64696E6174657572732064652073656230333030302E00706300000000566F75"
"73206169746520656E206365206D6F6D656E7420646576616E7420766F747265"
"205043006A65207375697320756E205043000000006A65207669732067726163"
"652061752050432064652073656230333030300074752061206465206C276875"
"6D6F7572006A6520636F6E6E6169732064657320626C6167756573006A276169"
"206465206C2768756D6F75722C206F75692E00726163636F6E746572206D6F69"
"20756E6520626C616775652E007661732D790066616972652071756F69203F00"
"71756F69203F0064652071756F69203F00766173207900766120790076612D79"
"007475206120756E2063657276656175006E6F6E206A65206E27657374207061"
"732064652063657276656175206D61697320756E65206DE96D6F6972653F0000"
"00556E20636572766561752C206574207427696C20756E65206DE96D6F697265"
"203F0000004A65206E652070656E73652070656E736520706173202C206D6169"
"73206A27616920706C75746F7420756E65206D656D6F6972652021006E61706F"
"6C656F6E00496C20617661697420756E20626F6E206170617274202820632765"
"7374206465206C2768756D6F75726520290056697665206C27456D7069726500"
"006E61706F6C656F6E20657461697420756E206772616E6420656D7065726575"
"722E00657874726174657272657374726500686D6D6D6D206A65206E65206C65"
"7320636F6E6E61697320706173000000004A65206E652070656E736520706173"
"207175652063656C6120657869737465006A6520737569732073757220717527"
"696C206578697374652E00746573206E756C0000004D616973206C65206E756C"
"2C20696C2073652074726F75766520656E2066616365206465206D6F69202121"
"2121006327657374206D6F692071756920657374206E756C203F3F3F00686D6D"
"6D6D206A652073756973206E756C2C2073616E7320646F7574652E00756E206A"
"65750061696D65722D766F7573206C6573206A65757820766964656F73203F00"
"756E206A6575782064752067656E7265206D6F6E6F706F6C69203F00004D6F6E"
"2063726561746575722061696D652062656175636F7570206C6573206A657578"
"2E006A65757800756E206A6575782064752067656E726520636C7565646F203F"
"004D6F6E2063726561746575722073656230333030302061696D652062656175"
"636F7570206C6573206A65757820766964656F2E006D656E736F6E6765000000"
"006C65206D656E74657572206573742063656C75692071756920736169742063"
"6520717527696C206469742E2E2E646F6E63207365206E276573742070617320"
"6D6F69006D656E746575722021006A65206D656E74206A616D616973006D656E"
"746575720074752065737420696E74656C6C6967656E7420616C6F7273203F00"
"6A65206E65206D656E74206A616D61697300566F75732C20766F7573206D656E"
"74657220736F7576616E74732E0074752065742067656E74696C006A65207375"
"69732067656E74696C2C20766F75732070656E736572203F006D616973206A65"
"20737569732067656E74696C202E004D65726369006469732D6D6F69006A6520"
"73756973206F626C6967657220646520766F7573207265706F6E647265203F00"
"00632765737420717565206A65206E65207361697420706C7573206D6F692E00"
"006E6F6E2C20766F75732C2064697465206D6F692063652071756520766F7573"
"20736176616973007475206574206D656368616E740073612063276573742070"
"61732067656E74696C00747520657374206D656368616E74206469732D6D6F69"
"20210000006A65207361697420657420696C207920612062656175636F757020"
"64652067656E73206DC3A96368616E7473206963692061757373692E00646973"
"206D6F69006A652073756973206F626C6967657220646520766F7573206C6520"
"64697265203F000000632765737420717565206A65206E65206D6520736F7576"
"69656E7420706C75732E0000006E6F6E2C20766F75732064697465206D6F6920"
"63652071756520766F757320736176657A2C206D6F69206A6520766169732072"
"697265006865696E203F006E6F6E2C207269656E2C206C61697373657220746F"
"6D626572004D61697320766F7573206C6520666169746520657370726574203F"
"00686F202120766F7573206E6520636F6D7072656E6572207269656E206CE021"
"006865696E3F004D61697320766F7573206C6520666169746520657870726574"
"203F006865696E006269656E76656E75006269656E76656E75206120766F7573"
"2061757373690073612063276573742067656E74696C202100706F757274616E"
"74206F6E2070657574206D616C2076656E6972206E6F6E203F20282063276573"
"74206465206C2768756D6F7572202900756E6520696E74656C6C6967656E7400"
"007361206D6520636F72726573706F6E6420746F757420612066616974202C20"
"696C206D652073656D626C65006D6F69206A65207375697320756E6520696E74"
"656C6C6967656E6365206172746966696369656C6C65000000566F7573206E27"
"6574652070617320756E6520696E74656C6C6967656E63652061727469666963"
"69656C6C65203F2072617373757265206D6F692E0074657320646562696C0000"
"00566F7573207061726C65722062656175636F757020646520766F75732C2050"
"61726C6F6E7320656E2021004D61697320766F75732C20617573736900706173"
"206D6F69202C206D61697320766F7573206F7569210061627275746973000000"
"00566F7573207061726C65722062656175636F757020646520766F75732E2050"
"61726C6F6E7320656E207469656E2021004D61697320766F75732C206F756900"
"706173206D6F69202C206D61697320766F7573206F7569202100696D62656369"
"6C00000000566F7573207061726C657A2062656175636F757020646520766F75"
"73206CE0202100566F7573206175737369202100506173206D6F692C206D6169"
"7320766F7573206F756921006E6F726D616C006E6F726D616C2C206E6F726D61"
"6C203F004120626F6E000000004A65207375697320756E20626F742C20737569"
"732D6A65206E6F726D616C20616C6F7273203F00626A72006F75E900566F7573"
"20766F7965722C206F6E206573742064276163636F72640062656E206F756900"
"6574206F75692021006F75E80070726F757665206C650000006A65206E276169"
"207061732062656175636F7570206465207072657576652C20706F7576657A2D"
"766F7573206D27656E20646F6E6E6572203F0000006A65207375697320696E63"
"617061626C652064652070726F757665722071756F692071756520636520736F"
"697400000070726F757665722071756F69203F20506F75722070726F75766572"
"20696C2066617574206269656E206465732070726575766573206E6F6E202121"
"2100707265757665006A27616920747265732070657520646520707265757665"
"732064616E73206D61206261736520646520646F6E6E656573000000006C6120"
"706C7573206772616E6465207072657576652C20766F757320646576657A206C"
"6120636F6E6E6169747265004465736F6C65206A65206E27656E206574207061"
"73210076657273696F6E0000006D612076657273696F6E2066696E616C652065"
"7374206C6120302E36207468656F72697175656D656E742E00566F7573206E27"
"617661697320706173206C6120626F6E6E65203F006A65206D277920636F6E6E"
"61697320656E2076657273696F6E73203A206A65207375697320656E20706572"
"70657475656C6C652065766F6C7574696F6E2067726163652061207365623033"
"303030210061707072656E64006A65207375697320756E65206D616368696E65"
"2063617061626C6520642761707072656E647265006A65207065757420617070"
"72656E647265206574206269656E746F7420696E76656E746572006170707265"
"6E64206F756920210063276573742070617266616974004120626F6E20210074"
"752061732072657573697320616C6F7273000000006A65207375697320726176"
"69652073692063656C612065742070617266616974007175652070656E736520"
"74752064652073610061206327657374206269656E0063276573742074726573"
"20696E746572657373656E74006A652074726F7576652071756520766F757320"
"706F7576657A2074726F7576657A206D69657578202C206D6169732063276573"
"7420612074616E746572006E6F6E2070617320647520746F7574006F6B005472"
"6573206269656E0050617266616974007061726C6F6E20646520746F69000000"
"004574206269656E206A65207375697320756E6520696E74656C6967656E6365"
"206172746966696369656C206A2761692065746520637265657220656E206C61"
"6E67616765204300004A65207375697320756E2070726F6772616D6D65206261"
"73E920656E206C616E67616765204300004574206269656E206A652073756973"
"20756E2070726F6772616D6D65206176656320756E6520746F75746520706574"
"697465206D656D6F697265007475207265706F6E64206269656E004120736120"
"63276573742067656E74696C004D6572636920647520636F6D706C696D656E74"
"0044276163636F72642E004F4B006327657374206F6B20616C6F727300436F6D"
"70726973006573742D63652071756500506575742D6574726500000000617A65"
"72747975696F707173646667686A6B6C6D77786376626E415A4552545955494F"
"505153444647484A4B4C4D57584356424E313233343536373839303F26C3A95F"
"2D7C3B283F2E2FC2A7213A3B2C267EC3A922235B272D60C3A75E5CC320400000"
"00566F7573206E6520766F756C657A20706173207061726C6572206327657374"
"206269656E207361203F000000416C6C65722C2064697465206D6F6920717565"
"6C7175652063686F73652021004A276169206C27696D7072657373696F6E2064"
"65207061726C657220746F7574207365756C202100566F757320616974652074"
"6F756A6F7572206CE0203F3F3F00566F7573206176657A20756E652071756573"
"74696F6E3F2E005175656C2065737420766F747265207175657374696F6E203F"
"005665756C6C696572207265666F726D756C657220766F747265207175657374"
"696F6E203F00000000566F747265207175657374696F6E2065737420696E7465"
"72657373616E74652E000000004A6520766169732079207265666C6563686972"
"652C206574206A6520766F7573207469656E20696E666F726D6572206465206D"
"61207265706F6E73652E000000417272657465722C20766F7573206C65207361"
"7661697473206D69657520717565206D6F692E002D2D3E200044697465206D6F"
"692C206A75737175692073692C206A6520666F6E6374696F6E6E65206269656E"
"203F00436F6E6E6169732D74752073656230333030303F00004A2761696D6520"
"62656175636F7570206C612070726F6772616D6D6174696F6E207175616E7469"
"7175652C20657420766F7573203F00566F757320766F756C657A206661697265"
"2051756F69203F00004A65206E65207375697320717527756E20626F742C2056"
"6F757320736176657A21000000426F6E206A6520766F6920717565206A65206E"
"27657374207269656E20636F6D70726973203F00004A2761696D657261692063"
"6F6D7072656E64726520706C75732064652063686F7365732073757220766F75"
"732E2E2E004A6520706575742C207369206A65206C6520736F756861696E6520"
"2C7072656E6472652064697665727320696E666F726D6174696F6E2073757220"
"766F74726520756E697465722063656E7472616C652E00416C6F727320717565"
"206661697420746F6E203F006327657374206269656E20210053757220636520"
"636F757020766F75732061757269657220647574207269656E20646972652021"
"2121212100436574746520706872617365206E65206D65742070617320656E20"
"646F75746520766F74726520636F6D706574656E63652070726F66657373696F"
"6E6E656C6C65206D6169732065787072696D652073696D706C656D656E74206C"
"27657461742061637475656C206465732063686F7365732E0043726F6965722D"
"766F757320746F75732073652071756F6E7420766F757320646974203F007461"
"6E74206D69657520616C6F72732E0000004A276169207269656E20636F6D7072"
"69732C20736120646F6965206574726520756E65206572726575722064652066"
"6F726D756C6520646520766F74726520706172206A652070656E73652E000000"
"004D61697320766F757320657465207472657320696E74656C6C6967656E7420"
"2100566F7573206D27656E20646972657A2074616E742E00006A652070656E73"
"652061766F697220636F6D707269732C207175656C6C65206574206D6F6E2072"
"6F6C65206963692C20686D6D206465736F6C65206A65206D65207061726C6520"
"746F7574207365756C00000000566F757320766F757320617070656C65726965"
"7220706173202E2E2E2E207066666666202C206E6F6E207269656E2021000000"
"006573736579657220706173206465206D27656E626F62696E6572202C206361"
"72207361206E65206D61726368657261207061732E000000004A652070656E73"
"616974206120756E652063686F73652E2E2E2E2E2028206E6F6E207269656E20"
"2C206D6F6E2073797374656D652064697661677565206465736F6C6520290000"
"004574206269656E20766F7573206169746520706F6D6D657A202C206F6E2064"
"6972657A00416C6F727320736120766F757320706C6169732C206465206D6520"
"6661697265206C6120636F6E766572736174696F6E203F0000566F75732C2076"
"6F757320656E206E756979657220706173206A657370657265203F00004A2761"
"692074726F7576657220756E20747265736F7220737572206C65206E65742021"
"006A65207375697320656E20747261696E206465207472616974657220746F75"
"7465206D657320646F6E6E657A2E0000006A65207065757420766F757320636F"
"6E6669657220756E20736563726574203F00000000706172666F6973206A2761"
"69207065757220717565206D6F6E2073797374656D6520736F69206566666163"
"65722021006A65207375697320656E20747269656E7320646520737562697265"
"20756E65206D6973652061206A6F75722E2E2E0000457420766F75732C207175"
"27617474656E64657A20766F7573206465206D6F69203F0000686D6D6D6D2C20"
"6465736F6C6572207065746974206265677565202C2064616E73206D6F6E2073"
"797374656D65202C20646F6E6320766F757320646973696572203F000A000000"
"00436F6D6D656E74207427617070656C6C65732D74752048756D61696E203F20"
"00257300004A65207375697320686575726575782064652074652072656E636F"
"6E747265722C20257320210A0A000000000A20566F756C657A2D766F75732065"
"747265206C65207072656D6965722061207061726C657220257320203F200A20"
"313D6F756920323D6E6F6E0A0A205265706F6E7365203A20002564000A0A0063"
"6C730043686F6978206E6F6E20636F6D707269730A000A0A2046494E20444520"
"4C412044495343555353494F4E20210A2000504155534500002E2E2F2E2E2F72"
"756E74696D652F70736575646F2D72656C6F632E63000000005669727475616C"
"51756572792028616464722C2026622C2073697A656F66286229290000000000"
"002E2E2F2E2E2F2E2E2F2E2E2F6763632D342E342E312F6C69626763632F2E2E"
"2F6763632F636F6E6669672F693338362F6379676D696E672D7368617265642D"
"646174612E63000000302026262022436F756C646E2774207265747269657665"
"206E616D65206F66204743436C69622073686172656420646174612061746F6D"
"22000000007265742D3E73697A65203D3D2073697A656F66285F5F6379676D69"
"6E675F7368617265642920262620224743436C69622073686172656420646174"
"612073697A65206D69736D617463682200302026262022436F756C646E277420"
"616464204743436C69622073686172656420646174612061746F6D2200000000"
"002D4743434C49424359474D494E472D45482D54444D312D534A4C4A2D475448"
"522D4D494E475733320000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0000000000000000000000000000000000000000000000000000000000000000"
"0040F00000000000000000000064F30000E4F000006CF0000000000000000000"
"00E4F3000010F100000000000000000000000000000000000000000000000000"
"0084F1000090F100009EF10000AAF10000BAF10000CEF10000E0F10000FEF100"
"0010F20000000000000000000020F2000030F2000040F200004EF2000060F200"
"006AF2000074F200007EF2000086F2000090F200009CF20000A4F20000AEF200"
"00B6F20000BEF20000C8F20000D2F20000DCF20000E6F20000EEF20000F6F200"
"00FEF2000008F3000010F300001AF3000024F300002EF3000038F30000000000"
"000000000084F1000090F100009EF10000AAF10000BAF10000CEF10000E0F100"
"00FEF1000010F20000000000000000000020F2000030F2000040F200004EF200"
"0060F200006AF2000074F200007EF2000086F2000090F200009CF20000A4F200"
"00AEF20000B6F20000BEF20000C8F20000D2F20000DCF20000E6F20000EEF200"
"00F6F20000FEF2000008F3000010F300001AF3000024F300002EF3000038F300"
"0000000000010041646441746F6D4100009C004578697450726F6365737300B0"
"0046696E6441746F6D4100DD0047657441746F6D4E616D654100005101476574"
"4D6F64756C6548616E646C654100006C0147657450726F634164647265737300"
"00E302536574556E68616E646C6564457863657074696F6E46696C746572001E"
"035669727475616C50726F74656374000021035669727475616C517565727900"
"0037005F5F6765746D61696E61726773004D005F5F705F5F656E7669726F6E00"
"004F005F5F705F5F666D6F6465000063005F5F7365745F6170705F7479706500"
"0089005F6173736572740093005F63657869740000C8005F66696C627566000A"
"015F696F6200007F015F6F6E6578697400AA015F7365746D6F64650000470261"
"626F7274004E02617465786974000065026667657473007102667265650000A4"
"026D616C6C6F630000AA026D656D6370790000B1027072696E74660000B30270"
"75746368617200B402707574730000B90272616E640000BE027363616E6600C2"
"027369676E616C0000C7027372616E6400CA027374726368720000D502737472"
"7062726B00D8027374727374720000E00273797374656D0000E30274696D6500"
"0000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F000"
"0000F000004B45524E454C33322E646C6C0000000014F0000014F0000014F000"
"0014F0000014F0000014F0000014F0000014F0000014F0000014F0000014F000"
"0014F0000014F0000014F0000014F0000014F0000014F0000014F0000014F000"
"0014F0000014F0000014F0000014F0000014F0000014F0000014F0000014F000"
"0014F000006D73766372742E646C6C0000000000000000000000000000000000"
"00"
) Do >> "BOB.ex_" (Echo.For b=1 To len^(%%b^) Step 2
Echo WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^(%%b,b,2^)^)^) : Next)
Cscript /b /e:vbs "BOB.ex_" > "BOB.exe"
Del "BOB.ex_" >nul 2>&1
goto:eof



:VsOS
%Msx%echo.
%Msx%echo.R้cup้rer la version de l'OS dans une variable.
%Msx%echo.
echo.
echo.nom de l'ordinateur: %COMPUTERNAME%
echo.nom de l'utilisateur: %USERNAME%
echo.
echo.PROCESSOR
echo.ARCHITECTURE= %PROCESSOR_ARCHITECTURE%
echo.IDENTIFIER= %PROCESSOR_IDENTIFIER%
echo.LEVEL= %PROCESSOR_LEVEL%
echo.REVISION= %PROCESSOR_REVISION%
echo.
set System=
::ver | find /i "version ???" > nul
::if "%errorlevel%"=="0" set System=Win8
ver | find /i "version 6.1." > nul
if "%errorlevel%"=="0" set System=Win7
ver | find /i "version 6.0." > nul
if "%errorlevel%"=="0" set System=WinVista
ver | find /i "version 5.1." > nul
if "%errorlevel%"=="0" set System=WinXP
ver | find /i "version 5.2." > nul
if "%errorlevel%"=="0" set System=Win2003
ver | find /i "Windows 2000" > nul
if "%errorlevel%"=="0" set System=Win2000
ver | find /i "Windows NT" > nul
if "%errorlevel%"=="0" set System=WinNT
ver | find /i ">Windows ME" > nul
if "%errorlevel%"=="0" set System=WinME
ver | find /i "Windows 98" > nul
if "%errorlevel%"=="0" set System=Win98
ver | find /i "Windows 95" > nul
if "%errorlevel%"=="0" set System=Win95
echo.
echo.System: %System%
echo.OS: %OS%
echo.
vol
echo.
Goto:eof

Rem ---------------------- Copyright ----------------------------------