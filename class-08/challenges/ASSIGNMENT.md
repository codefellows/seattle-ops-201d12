# Ops Challenge - Windows Batch Scripting

It could be said that batch scripts are to Windows as bash scripts are to Linux. If you're using basic Windows terminal commands (non-Powershell), then a .bat file is the way to go!

## Objectives

- Students will learn how to use the `ROBOCOPY` command to perform recursive file copy operations.

## Resources

- [How to Use Windows Batch File Commands to Automate Repetitive Tasks](https://www.makeuseof.com/tag/use-windows-batch-file-commands-automate-repetitive-tasks/){:target="_blank"}
- [Wikibooks: Windows Batch Scripting](https://en.wikibooks.org/wiki/Windows_Batch_Scripting){:target="_blank"}

## Tasks

### Part 1: A Batch File. Your job is to document every single line of the batch file in detail. Explain what is happening.

```batch
@echo off
setlocal enabledelayedexpansion

set /p sourcePath=Enter the source folder path:

set /p destinationPath=Enter the destination folder path:

if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)

if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)

robocopy "!sourcePath!" "!destinationPath!" /E

if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)

:end
endlocal
```

### Part 2: Push to GitHub

Since your Ops Challenge repository is stored locally on your Ubuntu, the most convenient way to submit the assignment is by logging in to GitHub on your Windows VM.

Once you have successfully logged into your GitHub profile on the Windows VM, create a new file in your Ops Challenge repository. Copy and paste your batch script into the new file and save it with the appropriate file extension.

Before you can ACP changes from your Ubuntu Server again, make sure to synchronize the changes you made while using the Windows VM to avoid conflicts. To achieve this, run `git pull` from the terminal before you begin any new tasks in your local repository on your Ubuntu. Help your team with this today as it may be a little confusing.


