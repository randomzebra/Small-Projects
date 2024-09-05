from subprocess import Popen
from time import sleep

gamePath = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Monster Hunter World\\MonsterHunterWorld.exe"
fertPath = "A:\\(A)Library\\(A)Documents\\Vincent's Stuff\\MHW Backup\\0-MHW_FertilzerCounter-305-13-10-1609931631\\MHW_FertilizerCounter.exe"
ovlyPath = "A:\\(A)Library\\(A)Documents\\Vincent's Stuff\\MHW Backup\\0-Hello World Overlay\\helloworld v10.4.exe"

Popen(fertPath, stdin= None, stdout=None)
Popen(ovlyPath, stdin= None, stdout=None)
sleep(5)
Popen(gamePath, stdin= None, stdout=None)

