@ECHO OFF
rem Kill hanging latexmk, lualatex, and (maybe) clear latexmk cache.
taskkill /IM latexmk.exe /F & taskkill /IM lualatex.exe /F
rem & latexmk -c