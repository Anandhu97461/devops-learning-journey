class CountDown:
    def __init__(self, start):
        self.n = start

    def __iter__(self):
        return self

    def __next__(self):
        if self.n == 0:
            raise StopIteration
        val = self.n
        self.n -= 1
        return val

for i in CountDown(3):
    print(i)