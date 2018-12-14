@echo off
@setlocal

set startTime=%time%

clean.pl || exit /b
compile.pl -DskipTests=true || exit /b
assemble.pl -DskipTests=true -Dopennms.home=/mnt/c/git/opennms/target/opennms || exit /b

rem Get elapsed time:
set "endTime=%time: =0%"
set "end=!endTime:%time:~8,1%=%%100)*100+1!"  &  set "start=!startTime:%time:~8,1%=%%100)*100+1!"
set /A "elap=((((10!end:%time:~2,1%=%%100)*60+1!%%100)-((((10!start:%time:~2,1%=%%100)*60+1!%%100)"

rem Convert elapsed time to HH:MM:SS:CC format:
set /A "cc=elap%%100+100,elap/=100,ss=elap%%60+100,elap/=60,mm=elap%%60+100,hh=elap/60+100"

echo
echo Start:    %startTime%
echo Finish:   %time%
echo
echo Elapsed:  %hh:~1%%time:~2,1%%mm:~1%%time:~2,1%%ss:~1%%time:~8,1%%cc:~1%
echo

