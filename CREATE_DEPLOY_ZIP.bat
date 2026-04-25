@echo off
echo Creating deployable ZIP file...
powershell -Command "Compress-Archive -Path 'Index.html','Script.js','Styles.css','images' -DestinationPath 'Birthday-Website-Deploy.zip' -Force"
echo.
echo ✅ ZIP created: Birthday-Website-Deploy.zip
echo.
echo Ab is ZIP ko upload kar de:
