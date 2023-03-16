# Artist git helper

This is a group of shell scripts to help artist to interact with engineers by git.


## Requirements

- Make sure you are logged in github on your computer;
- Make sure you have permissions to access the destination repository;
- You must have internet connection;
- You must have the [git](https://git-scm.com/) installed on your computer;

## How to use

### Setting environment

Let get start coping and paste these '.sh' files to the same destination folder you want create your project;

```
-- DestinationFolder
-- -- ProjectFolder [Future path]
-- -- file-settings.txt
-- -- import-project-[OS].sh
-- -- send-updates.sh
-- -- get-updates.sh
```

This scripts is using dynamically path project, so you MUST change the URL inside of `file-settings.txt` file, to your repository path;

Now we need provide access to the main script to execute commands, so we should follow these steps:

1. Copy the path of your `DestinationFolder`;
2. Open a terminal;
3. By windows run: `chmod +x import-project-windows.sh`, and accept the admin permissions; Case not use windows jump this step;
4. By MacOS run `sudo chmod +x import-project-mac.sh`, and use the OS password to enable sudo no next commands;
5. Open your file manager and double click on `import-project-[OS].sh`;


### Running commands

After you done the `Setting environment` process you will decide which process/file you wanna work.

1. If you are STARTING your work day on project or some of your folks send updates to same project, you only will run the `get-updates.sh` file;
2. If you are FINISHING your updates of this project you must run `set-updates.sh` and follow the team process to open a PR;

## Helper

Please, follow the steps on these tutorial to get help to some settings to execute this scripts.
`https://www.macinstruct.com/tutorials/how-to-make-a-bash-script-executable-on-a-mac/`