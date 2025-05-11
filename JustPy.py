sec = int(input("Enter seconds: "))
h = sec // 3600
sec %= 3600
min = sec // 60
sec %= 60
print(f"{h} hours\n{min} minutes\n{sec} seconds")
