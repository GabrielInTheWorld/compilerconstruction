@echo off
set cc=mtiger.exe

rem get file name and extension from first parameter
for %%I in (%1) do (
	set nameext=%%~nxI
	set name=%%~nI
)

rem compile m-tiger file to assembly
%cc% %1 %nameext%.s

rem concatenate runtime and assembly
copy mt_runtime.s + %nameext%.s %name%.s 1> NUL
