# NBA Player Age and Measurements
This repository contains an AWK script that will take in a csv file of NBA players with information on many things such as their height, weight, age and their teams. This file was found on Kaggle. (https://www.kaggle.com/justinas/nba-players-data).

# Report creation and format
The AWK file does several things but mainly it creates a report on several players that have been drafted later than the year 2015. After it has read the file and checked if they have been drafted, it lists out their age, height and weight. This is continued throughout the file and at the end of the file it produces the average height and weight of the players and prints it at the end of the report

## Setup
This repo makes use of LinuxOs system and would be setup there along with makefile so it would be best to ssh or make use of your Linux machine. Clone this repo into your repository and you can build the program using this command in the terminal while in your repo copy:

```bash
make -f MakeFile
```

The file will then be produced in the same repository and you would be able to read the file through:

```bash
vim playerReport.txt
```

Have fun.

