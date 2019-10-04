@echo off
echo Starting time: %Time%
ECHO Starting time: %Time% > transform_duration.txt
setlocal ENABLEDELAYEDEXPANSION
FOR %%i IN (data_before_transform.*) DO (
set temp=%%i
echo start processing %%i ....
java DataTransformer %%i	data_after_transform.json.!temp:~-3!
echo Finished processing %%i - File data_after_transform.json.!temp:~-3! created....
)
ECHO Stopping time: %Time%
ECHO Stopping time: %Time% >> transform_duration.txt
