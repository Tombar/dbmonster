rem Batch file to run dbmonster under Windows
rem Contributed by Peter De Bruycker

@echo off

cd ..

rem Add all jars....
for %%i in (".\lib\*.jar") do call ".\bin\cpappend.bat" %%i
for %%i in (".\*.jar") do call ".\bin\cpappend.bat" %%i
call ".\bin\cpappend.bat" .\log4j.properties

java -classpath %CLASSPATH% pl.kernelpanic.dbmonster.Launcher %*

cd bin
