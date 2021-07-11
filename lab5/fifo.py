
from queue import Queue 

def PageMiss(pages,length,frameSize):
    frame=set()
    index=Queue()
    PageMiss=0

    for i in range(length):
        if(len(frame)<frameSize):
            if(pages[i] not in frame):
                frame.add(pages[i])
                PageMiss = PageMiss+1
                index.put(pages[i])
                print(frame)
        
        else:
            if(pages[i] not in frame):
                num = index.queue[0]
                index.get()
                frame.remove(num)
                frame.add(pages[i])
                index.put(pages[i])
                print(frame)
                PageMiss = PageMiss+1
    return PageMiss
            
if __name__ == '__main__':
    pages = [5,6,7,5,3]
    length = len(pages)
    frameSize = 3
    res = PageMiss(pages,length,frameSize)
    print("PageMiss",res)
    
    



