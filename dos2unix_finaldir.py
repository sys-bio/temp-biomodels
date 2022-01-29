from os import walk
from os import system

for root, dirs, files in walk("final/"):
    for dir in dirs:
        command = "C:/Users/Lucian/Desktop/dos2unix-7.3.4-win32/bin/dos2unix.exe final/" + dir + "/*.*"
        print(command)
        system(command)
