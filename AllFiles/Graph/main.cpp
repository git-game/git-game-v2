//
//  main.cpp
//  Prim's (NEW)
//
//  Created by Juan Ruelas on 3/9/15.
//  Copyright (c) 2015 Juan Ruelas. All rights reserved.
//

#include <iostream>
#include "prim.h"

void hardCodedGraph (Graph & g){
    
    Edge one;
    one.end1 = 1;//A
    one.end2 = 2;//B
    one.weight = 4;
    g.insert(one);
    
    Edge two;
    two.end1 = 1;//A
    two.end2 = 3;//C
    two.weight = 8;
    g.insert(two);
    
    Edge three;
    three.end1 = 2;//B
    three.end2 = 3;//C
    three.weight = 9;
    g.insert(three);
    
    Edge four;
    four.end1 = 2;//B
    four.end2 = 4;//D
    four.weight = 8;
    g.insert(four);
    
    Edge five;
    five.end1 = 3;//C
    five.end2 = 4;//D
    five.weight = 2;
    g.insert(five);
    
    Edge six;
    six.end1 = 2;//B
    six.end2 = 5;//E
    six.weight = 10;
    g.insert(six);
    
    Edge seven;
    seven.end1 = 3;//C
    seven.end2 = 6;//F
    seven.weight = 1;
    g.insert(seven);
    
    Edge eight;
    eight.end1 = 4;//D
    eight.end2 = 5;//E
    eight.weight = 7;
    g.insert(eight);
    
    Edge nine;
    nine.end1 = 4;//D
    nine.end2 = 6;//F
    nine.weight = 9;
    g.insert(nine);
    
    Edge ten;
    ten.end1 = 5;//E
    ten.end2 = 6;//F
    ten.weight = 5;
    g.insert(ten);
    
    Edge eleven;
    eleven.end1 = 5;//E
    eleven.end2 = 7;//G
    eleven.weight = 6;
    g.insert(eleven);
    
    Edge twelve;
    twelve.end1 = 6;//F
    twelve.end2 = 7;//G
    twelve.weight = 2;
    g.insert(twelve);
    
    //==================HARD CODED GRAPH===============
    //
    //          (B)--------10-------(E)
    //        -    -               - - -
    //       4   -    -           7  -   -
    //      -    -     8        -    -     6
    //     -     -       -    -      -       -
    //   (A)     9       (D)-        5        (G)
    //     -     -      -    -       -       -
    //      -    -    2        -     -     2
    //        8  -   -           9   -   -
    //         - - -               - - -
    //          (C)--------1--------(F)
    //
    //==================HARD CODED GRAPH===============
    
    //=============MINIMAL SPANNING TREE===============
    //
    //          (B)                 (E)
    //        -                      -
    //       4                       -
    //      -                        -
    //     -                         -
    //   (A)             (D)         5        (G)
    //     -            -            -        -
    //      -         2              -     2
    //        8      -               -   -
    //         - - -                 - -
    //          (C)--------1--------(F)
    //
    //              TOTAL: 22
    //
    //=============MINIMAL SPANNING TREE===============
}

int main(int argc, const char * argv[]) {
    
    
    Graph graph;
    hardCodedGraph(graph);
    prim(graph);
    
    
    return 0;
}
