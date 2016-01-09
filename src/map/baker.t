/* Ben Scott * bescott@andrew.cmu.edu * 2015-09-20 * Baker Hall */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"
#pragma newline_spacing(preserve)


bh_entrance : OutdoorRoom 'Baker Hall (Outside)' 'Baker'
"You are at the entrance to Baker Hall. A walkway is east and a hallway leads west. There is a staircase leading up and down." {
    east = cut_walkway_3;
    west = bh_1_east;
    up = bh_entry;
    down = bh_bookstore_entrance;
}

bh_entry : Room 'Baker Hall (Entry)' 'Baker'
"This is a place, for sure. " {
    down = bh_entrance;
}

bh_1_east : Room 'Baker Hall (First Floor)' 'Baker'
"This is BH 1st floor east.  There is a hallway leading east-west." {
    east = bh_entrance;
    west = bh_1_west;
    north = mall_east;
}

bh_1_west : Room 'Baker Hall (First Floor)' 'Baker'
"This is BH 1st floor west.  There is a hallway leading east-west." {
    east = bh_1_east;
    west = ph_1_main;
}

bh_bookstore_entrance : Room 'Baker Hall (near the Bookstore)' 'Baker'
"You are at the entrance to the CMU Bookstore, which is to the east. A staircase leads up." {
    in = bh_bookstore;
    east asExit(in);
    up = bh_entrance;
}

ph_1_main : Room 'Porter Hall (A Level)' 'Porter'
"This is the First Floor of Porter Hall.  There is a hallway to the east and some stairs leading down." {
    east = bh_1_west;
}

bh_bookstore : DeadEndConnector
'Bookstore (Baker Hall)' 'the bookstore'
"""
You bump your head against the doors, which are locked and have a big sign across them:
> <b>CLOSED FOR THE SUMMER</b>.
""" {  }





