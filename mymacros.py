import tkinter as tk


def getClipboardText():
    root = tk.Tk()
    # keep the window from showing
    root.withdraw()
    return root.clipboard_get()


def putClipText():
    f = open("extranotes.txt", "a+")
    for x in getClipboardText():
        f.write(x)
     #   print (x)
    f.close()
    
putClipText()
  
