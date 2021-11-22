#!/bin/python3

import math
import os
import random
import re
import sys



#
# Complete the 'getMaxArea' function below.
#
# The function is expected to return a LONG_INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER w
#  2. INTEGER h
#  3. BOOLEAN_ARRAY isVertical
#  4. INTEGER_ARRAY distance
#

def getMaxArea(w, h, isVertical, distance):
    # Write your code here
    n = len(isVertical)
    area = []
    x, y = 0, 0 #start index
    for i in range(n):
        # horizontal
        if isVertical[i] == 0 :
            h2 = h - distance[i] # second part
            h1 = distance[i]  # first part
            if h1 >= h2 :
                h = h1
                a = (w - x) * (h -y)
            else :
                y = distance[i]
                a = (w - x) * (h -y)
            #print(x,y, " ",w, h)
            area.append(a)
        else :
            #vertical
            w2 = w - distance[i] # second part
            w1 = distance[i]  # first part
            if w1 >= w2 :
                w = w1
                a = (w - x) * (h -y)
            else :
                x = distance[i]
                a = (w - x) * (h -y)
            #print(x,y, " ",w, h)
            area.append(a)
    return area         

    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    w = int(input().strip())

    h = int(input().strip())

    isVertical_count = int(input().strip())

    isVertical = []

    for _ in range(isVertical_count):
        isVertical_item = int(input().strip()) != 0
        isVertical.append(isVertical_item)

    distance_count = int(input().strip())

    distance = []

    for _ in range(distance_count):
        distance_item = int(input().strip())
        distance.append(distance_item)

    result = getMaxArea(w, h, isVertical, distance)
    fptr.write('\n'.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
