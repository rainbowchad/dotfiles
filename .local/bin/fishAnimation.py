#!/usr/bin/env python3
import re
import time

if __name__=="__main__" :
    max = 12
    with open( "/home/devuser/.local/bin/.space.txt", 'r+' ) as file:
        time.sleep(0.9)
        line = file.read( )
        line = line.strip( )
        output = int(line)*'󰗣' + '󰈺 '
        print( output )
        file.close( )
