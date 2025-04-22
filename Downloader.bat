@echo off
cd C:\Users\%USERNAME%\Downloads
mkdir SS
SET filepath=C:\Users\%Username%\Downloads\SS\winprefetchview.zip
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --output "%filepath%" --url "https://www.nirsoft.net/utils/winprefetchview-x64.zip" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\everything.zip
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --output "%filepath%" --url "https://www.voidtools.com/Everything-1.4.1.1026.x64.zip" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\sysinformersetup.exe
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --location --request GET "https://sourceforge.net/projects/systeminformer/files/systeminformer-3.2.25011-release-setup.exe/download" --output "%filepath%" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\timelineexplorer.zip
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --output "%filepath%" --url "https://download.ericzimmermanstools.com/net9/TimelineExplorer.zip" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\bamparser.exe
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --location --request GET "https://github.com/spokwn/BAM-parser/releases/download/v1.2.7/BAMParser.exe" --output "%filepath%" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\spokwnjournal.exe
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --location --request GET "https://github.com/spokwn/JournalTrace/releases/download/1.2/JournalTrace.exe" --output "%filepath%" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\pathsparser.exe
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --location --request GET "https://github.com/spokwn/PathsParser/releases/download/v1.1/PathsParser.exe" --output "%filepath%" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\newmaceta.exe
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --location --request GET "https://github.com/RRancio/Exec/raw/refs/heads/main/Files/newmaceta.exe" --output "%filepath%" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\bstrings.zip
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --output "%filepath%" --url "https://download.ericzimmermanstools.com/bstrings.zip" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\WxTCmd.zip
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --output "%filepath%" --url "https://download.ericzimmermanstools.com/WxTCmd.zip" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\SrumECmd.zip
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --output "%filepath%" --url "https://download.ericzimmermanstools.com/SrumECmd.zip" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.
SET filepath=C:\Users\%Username%\Downloads\SS\hayabusa.zip
IF EXIST "%filepath%" GOTO :ALREADYEXISTS
curl.exe --location --request GET "https://github.com/Yamato-Security/hayabusa/releases/download/v3.0.1/hayabusa-3.0.1-win-x64.zip" --output "%filepath%" >NUL 2>&1
IF NOT EXIST "%filepath%" GOTO :FAILED
echo Successfully downloaded %filepath%.





GOTO :END

:ALREADYEXISTS
echo ERROR: %filepath% already exists!
GOTO :END

:FAILED
echo ERROR: Failed to download %filepath%!
GOTO :END

:END
echo Successfully completed all downloads.
