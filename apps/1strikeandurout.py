#from colorama import init
init()
#from colorama import Fore, Style
import time as t
import random as r

print("+----------------------------+")
print("| One Strike and You're Out! |")
print("+----------------------------+")
print()
splash = r.randint(1,6)
if splash == 1:
  print(Fore.YELLOW + "Sponsored by SQNY, Michaelsoft Binbows, and Facecook!")
  print(Style.RESET_ALL)
elif splash == 2:
  print(Fore.YELLOW + "All-natural!")
  print(Style.RESET_ALL)
elif splash == 3:
  print(Fore.YELLOW + "12345678 is a bad password!")
  print(Style.RESET_ALL)
elif splash == 4:
  print(Fore.YELLOW + "[deleted]")
  print(Style.RESET_ALL)
elif splash == 5:
  print(Fore.YELLOW + "May contain very hard riddles.")
  print(Style.RESET_ALL)
elif splash == 6:
  print(Fore.YELLOW + "Made in USA!")
  print(Style.RESET_ALL)
print("For the best experience, please play this in fullscreen.")
print()
print("+------+------------------------------+------------+")
print("| Rank | Username                     | Time (sec) |")
print("+------+------------------------------+------------+")
print("| 1    |                              |            |")
print("| 2    |                              |            |")
print("| 3    |                              |            |")
print("| 4    |                              |            |")
print("| 5    |                              |            |")
print("+------+------------------------------+------------+")
print()
print("If you want to be on the leaderboard, please comment a screenshot of you finishing the game. The leaderboard will be cleared whenever new questions are added.")
print()
print("What's New")
print(Fore.GREEN + "Version 1.0: Added Splash Text and What's New")
print(Style.RESET_ALL)
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
    else:
      q4 = input("If there are 3 apples in a bowl and you take 2, how many apples do you have? ")
      if q4 != "2":
        print("Strikes: 1")
        t.sleep(1)
        print("You're out!")
        t.sleep(1)
        quit()
      else:
        q5 = input("Who made this Repl? ")
        if q5.strip() != "Vargskelethor":
          print("Strikes: 1")
          t.sleep(1)
          print("You're out!")
          t.sleep(1)
          quit()
        else:
          q6 = input("What is the product of the atomic numbers for Bohrium and Rutherfordium? ")
          if q6 != "11128":
            print("Strikes: 1")
            t.sleep(1)
            print("You're out!")
            t.sleep(1)
            quit()
          else:
            q7 = input("Stop! ")
            if q7.lower() != "hammer time!":
              print("Strikes: 1")
              t.sleep(1)
              print("You're out!")
              t.sleep(1)
              quit()
            else:
              q8 = input("How many times can you subtract 20 from 200? ")
              if q8 != "1":
                print("Strikes: 1")
                t.sleep(1)
                print("You're out!")
                t.sleep(1)
                quit()
              else:
                q9 = input("What time is it? ")
                if q9.lower().strip() != "it's showtime!":
                  print("Strikes: 1")
                  t.sleep(1)
                  print("You're out!")
                  t.sleep(1)
                  quit()
                else:
                  q10 = input("Never gonna ")
                  if q10.lower() != "give you up":
                    print("Strikes: 1")
                    t.sleep(1)
                    print("You're out!")
                    t.sleep(1)
                    quit()
                  else:
                    q11 = input("What is the 25th island of Greece? ")
                  if q11.lower().strip() != "amorgos":
                    print("Strikes: 1")
                    t.sleep(1)
                    print("You're out!")
                    t.sleep(1)
                    quit()
                  else:  
                    print("You finished the game in",round(t.time()-start_time,2),'seconds!')
