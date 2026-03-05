@echo off
echo ========================================
echo   HomeSync 一鍵部屬工具
echo ========================================
echo.
echo 正在準備上傳到 GitHub...
cd /d "c:\Users\yyutingliu\Downloads\社團工具1\homesync-app"

:: 確保 Git 初始化
if not exist .git (
    git init
)

:: 加入檔案
git add .
git commit -m "HomeSync Deployment"

:: 建立 GitHub 儲存庫 (如果還沒建立的話)
echo 正在建立 GitHub 儲存庫...
gh repo create homesync-app --public --source=. --push

:: 推送到主分支
git push -u origin master

echo.
echo ========================================
echo   部屬完成！
echo   請過 2 分鐘後查看你的 GitHub Pages。
echo ========================================
pause
