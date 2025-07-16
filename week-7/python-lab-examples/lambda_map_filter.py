nums = [1, 2, 3, 4]
doubles = list(map(lambda x: x * 2, nums))
evens = list(filter(lambda x: x % 2 == 0, nums))
print(doubles)  # [2, 4, 6, 8]
print(evens)    # [2, 4]