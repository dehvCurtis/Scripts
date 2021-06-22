with open('example.txt') as f:
    try:
        while True:
            line = next(f, None)
            if line is None:
                break
            print(line, end='')
    except StopIteration:
        pass