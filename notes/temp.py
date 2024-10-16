# temp.py

import math
import statistics


# MATH
radius = 3.5
areaCircle = math.pi * math.pow(radius,2)
print("area = " + str(areaCircle))


# STATISTICS
data = [0,0,0,0,0,1,1,1,2,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,4,4,5,5,5,5,5,5,6,6,6,6,6,7,7,7,7,8,8,8,9,9,9,9,9,9,9]
print('mean =', statistics.mean(data))
print('median =', statistics.median(data))
print('mode =', statistics.multimode(data))