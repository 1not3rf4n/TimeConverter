@echo off
echo Setting up Git for your project...


cd C:\Users\3rf4n\Desktop\mabani
if %ERRORLEVEL% NEQ 0 (
    echo Error: Could not find the project directory!
    pause
    exit /b
)

git --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Error: Git is not installed! Please install Git first.
    pause
    exit /b
)


if not exist .git (
    echo Initializing Git repository...
    git init
) else (
    echo Git repository already exists.
)

echo Adding files to staging...
git add .

echo Committing changes...
git commit -m "Initial commit" >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Nothing to commit or an error occurred.
) else (
    echo Commit successful!
)


set REMOTE_URL=https://github.com/1not3rf4n/TimeConverter
echo Do you want to connect to a remote repository? (Y/N)
set /p choice="Enter your choice: "
if /I "%choice%"=="Y" (
    echo Connecting to remote repository...
    git remote add origin %REMOTE_URL%
    git push -u origin main
    if %ERRORLEVEL% NEQ 0 (
        echo Error: Failed to push to remote. Check your remote URL or credentials.
    ) else (
        echo Successfully pushed to remote!
    )
) else (
    echo Skipping remote setup.
)

echo Git setup completed!
pause