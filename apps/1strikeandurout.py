import os
import time as t
import random as r

os.clear()

print("+----------------------------+")
print("| One Strike and You're Out! |")
print("+----------------------------+")
print()
splash = r.randint(1,6)
if splash == 1:
  print("Sponsored by SQNY, Michaelsoft Binbows, and Facecook!")
elif splash == 2:
  print("All-natural!")
elif splash == 3:
  print("12345678 is a bad password!")
elif splash == 4:
  print("[deleted]")
elif splash == 5:
  print("May contain very hard riddles.")
elif splash == 6:
  print("Made in USA!")
print("For the best experience, please play this in fullscreen.")
print()
print("+------+------------------------------+------------+")
print("| Rank | Username                     | Time (sec) |")
print("+------+------------------------------+------------+")
print("| 1    | flaryx32                     | 99.90      |")
print("| 2    |                              |            |")
print("| 3    |                              |            |")
print("| 4    |                              |            |")
print("| 5    |                              |            |")
print("+------+------------------------------+------------+")
print()
print("If you want to be on the leaderboard, please comment a screenshot of you finishing the game. The leaderboard will be cleared whenever new questions are added.")
print()
print("What's New")
print("Version 1.0: Added Splash Text and What's New")
print("Press Enter to Start")
input()
start_time=t.time()
q1 = input("How many letters are in the alphabet? ")
if q1 != "11":
  print("Strikes: 1")
  t.sleep(1)
  print("You're out!")
  t.sleep(1)
  quit()
else:
  q2 = input("What can you put in a 20 pound sack of sand to make it weigh 16 pounds? ")
  if q2.lower() != "a hole":
    print("Strikes: 1")
    t.sleep(1)
    print("You're out!")
    t.sleep(1)
    quit()
  else:
    q3 = input("Enter password: ")
    if q3.lower().strip() != "password":
      print("Strikes: 1")
      t.sleep(1)
      print("You're out!")
      t.sleep(1)
      quit()
