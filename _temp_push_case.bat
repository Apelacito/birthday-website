@echo off
cd /d "c:\Users\Apela\OneDrive\Desktop\Love website"
"C:\Program Files\Git\bin\git.exe" add -A
"C:\Program Files\Git\bin\git.exe" commit -m "Fix filename case: Index.html to index.html"
"C:\Program Files\Git\bin\git.exe" push origin master
echo "Done!"
pause

