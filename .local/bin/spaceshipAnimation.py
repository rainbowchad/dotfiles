#!/usr/bin/env python3
import re
import time

if __name__=="__main__" :
    max = 12
    with open( "/home/l0vfamenppl/.local/bin/.space.txt", 'r+' ) as file:
        time.sleep(0.9)
        line = file.read( )
        line = line.strip( )

        output = '󰄛 ' + int(line)*'󰏩'
        print( output )
        int_line = int( line )
        int_line = int_line+1

        if int_line > max :
            int_line = 0

        file.seek( 0 )
        file.write( str( int_line ) )
        file.truncate( )
        file.close( )
