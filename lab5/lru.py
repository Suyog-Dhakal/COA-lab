
frameSize= 3
frame = []

while (True):
    Input = input("Enter element: ")

    if (Input in frame):
        frame.remove(Input)
        frame.append(Input)
    else:
        frame.append(Input)
        if len(frame) > frameSize: 
            frame = frame[1:]

    print(frame)
