@echo off
set _file=%1
set _pos=0
:loop
SET /a _pos-=1
call set _ext=%%_file:~%_pos%%%
set _letter=%_ext:~0,1%
if not "%_letter%" == "." (goto :loop)
call set _base=%%_file:~0,%_pos%%%
call g++ %_file% -o %_base% -include "sleutelWoorden.h"