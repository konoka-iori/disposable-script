@echo off
setlocal enabledelayedexpansion
chcp 65001

set json_path=%1
for %%a in (%json_path%) do (
  set json_name=%%~na
  set json_ext=%%~xa
)
set txt_path=%~dp1%json_name%.txt


(
  set output=
  for /f "usebackq delims=" %%a in ("%json_path%") do (
    set line=%%a
    rem ダブルクォーテーションをエスケープ
    set line=!line:"=\"!
    rem 改行とインデントを削除
    set line=!line: =!

    set output=!output!!line!
  )
  echo !output!
) > "%txt_path%"
pause
