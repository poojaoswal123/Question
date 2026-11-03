readings = ["31.5", "error", None, "42", "", "37.2", "180"]
valid = []
rejected = []

for reading in readings:
    try:
        temp = float(reading)

        if -20 <= temp <= 150:
            valid.append(temp)
        else:
            rejected.append(reading)

    except:
        rejected.append(reading)

print(valid)
print(rejected)
print(len(rejected))

# I used a for loop to check reading, float() to convert values, and if to check the temperature range.
# I used try except to handle error and seperate valid and rejected reading