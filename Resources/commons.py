# Commons library
import random


def get_random_num(start, end):
    start = int(start)
    end = int(end)
    r = random.randint(start, end)
    return r
