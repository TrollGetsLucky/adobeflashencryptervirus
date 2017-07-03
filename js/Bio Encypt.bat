@echo off
title Adobe Bio Encrypt
color 4
@echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
title Encrypt
color a
:mainmenu
set savefile=on
::set Encrypt=Nothing
(set CHAR[a]=UDFM45) & (set CHAR[b]=H21DGF) & (set CHAR[c]=FDH56D) & (set CHAR[d]=FGS546) & (set CHAR[e]=JUK4JH)
(set CHAR[f]=ERG54S) & (set CHAR[g]=T5H4FD) & (set CHAR[h]=RG641G) & (set CHAR[i]=RG4F4D) & (set CHAR[j]=RT56F6)
(set CHAR[k]=VCBC3B) & (set CHAR[l]=F8G9GF) & (set CHAR[m]=FD4CJS) & (set CHAR[n]=G423FG) & (set CHAR[o]=F45GC2)
(set CHAR[p]=TH5DF5) & (set CHAR[q]=CV4F6R) & (set CHAR[r]=XF64TS) & (set CHAR[s]=X78DGT) & (set CHAR[t]=TH74SJ)
(set CHAR[u]=BCX6DF) & (set CHAR[v]=FG65SD) & (set CHAR[w]=4KL45D) & (set CHAR[x]=GFH3F2) & (set CHAR[y]=GH56GF)
(set CHAR[z]=45T1FG) & (set CHAR[1]=D4G23D) & (set CHAR[2]=GB56FG) & (set CHAR[3]=SF45GF) & (set CHAR[4]=P4FF12)
(set CHAR[5]=F6DFG1) & (set CHAR[6]=56FG4G) & (set CHAR[7]=USGFDG) & (set CHAR[8]=FKHFDG) & (set CHAR[9]=IFGJH6)
(set CHAR[0]=87H8G7) & (set CHAR[@]=G25GHF) & (set CHAR[#]=45FGFH) & (set CHAR[$]=75FG45) & (set CHAR[*]=54GDH5)
(set CHAR[(]=45F465) & (set CHAR[.]=HG56FG) & (set CHAR[,]=DF56H4) & (set CHAR[-]=F5JHFH) & (set CHAR[ ]=SGF4HF)
(set CHAR[\]=45GH45) & (set CHAR[/]=56H45G)
echo Enter a string to encrypt:
set /p Encrypt=
cls
set Encrypt2=%Encrypt%
set "EncryptOut="
:encrypt2
set char=%Encrypt2:~0,1%
set Encrypt2=%Encrypt2:~1%
set EncryptOut=%EncryptOut%!CHAR[%char%]!
if not "%Encrypt2%"=="" goto encrypt2
echo Input string: %Encrypt%
echo.
echo Output string: %EncryptOut%
set string=%EncryptOut%
set temp_str=%string%
set str_len=0
:lengthloop
if defined temp_str (
set temp_str=%temp_str:~1%
set /A str_len += 1
goto lengthloop )
echo.
echo Output string is %str_len% characters long!
if "%savefile%"=="on" echo.%EncryptOut%>>%~d0%~p0encrypted.txt
echo.
start http://forum.imgburn.com/index.php?/topic/21566-batch-encryption-working/
pause
cls
goto mainmenu
@ECHO OFF
ECHO Make EXE From BAT
ECHO Written by: Jason Faulkner
ECHO SysadminGeek.com
ECHO.
ECHO.

REM Usage:
REM MakeExeFromBat BatFileToConvert [IncludeFile1] [IncludeFile2] [...]
REM
REM Required Parameters:
REM  BatFileToConvert
REM      Source batch file to use to produce the output Exe file.
REM
REM Optional Parameters:
REM  IncludeFile
REM      Additional files to include in the Exe file.
REM      You can include external tools used by the batch file so they are available on the executing machine.

SETLOCAL

REM Configuration (no quotes needed):
SET PathTo7Zip=


REM ---- Do not modify anything below this line ----

SET OutputFile="%~n1.exe"
SET SourceFiles="%TEMP%MakeEXE_files.txt"
SET Config="%TEMP%MakeEXE_config.txt"
SET Source7ZFile="%Temp%MakeEXE.7z"

REM Remove existing files
IF EXIST %OutputFile% DEL %OutputFile%

REM Build source archive
ECHO "%~dpnx1" > %SourceFiles%
:AddInclude
IF {%2}=={} GOTO EndInclude
ECHO "%~dpnx2" >> %SourceFiles%
SHIFT /2
GOTO AddInclude
:EndInclude
"%PathTo7Zip%7za.exe" a %Source7ZFile% @%SourceFiles%

REM Build config file
ECHO ;!@Install@!UTF-8! > %Config%
ECHO RunProgram="%~nx1" >> %Config%
ECHO ;!@InstallEnd@! >> %Config%

REM Build EXE
COPY /B "%PathTo7Zip%7zsd.sfx" + %Config% + %Source7ZFile% %OutputFile%

REM Clean up
IF EXIST %SourceFiles% DEL %SourceFiles%
IF EXIST %Config% DEL %Config%
IF EXIST %Source7ZFile% DEL %Source7ZFile%

ENDLOCAL
@set @junk=1 /*
@echo off
cscript //nologo //E:jscript %0 %*
goto :eof
*/
@set @junk=1 /*
@echo off
cscript //nologo //E:jscript %0 %*
goto :eof
*/
x = WScript.Arguments
Yr = x(0) ; Mo = x(1)

YS = "JanFebMarAprMayJunJulAugSepOctNovDec"
MN = Mo<1 || Mo>12 ? Mo : YS.substr(3*Mo-3, 3) // Month Name
WScript.echo(" ", Yr, "         ", MN)
WScript.echo(" Mo Tu We Th Fr Sa Su")
WD = new Date(Yr, Mo-1, 1).getDay() ;
if (WD==0) WD = 7 // Week Day Number of 1st
LD = new Date(Yr, Mo, 0).getDate() // Last Day of month
Wk = "" ; for (D=1 ; D < WD ; D++) Wk += "   "

for (D=1 ; D<=LD ; D++) {
  Wk = Wk + " " + (D<10 ? "0"+D : D) ; WD++
  if ((WD==8) || (D==LD)) { WScript.echo(Wk) ; WD = WD-7 ; Wk = "" }
  }

WScript.echo("        ------       ")
Just put this in cal

