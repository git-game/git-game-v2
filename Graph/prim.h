//
//  prim.h
//  Prim's (NEW)
//
//  Created by Juan Ruelas on 3/9/15.
//  Copyright (c) 2015 Juan Ruelas. All rights reserved.
//

#ifndef Prim_s__NEW__prim_h
#define Prim_s__NEW__prim_h

#include <iostream>
#include <set>
#include <map>
#include <queue>
#include <vector>

#define each(I) for(typeof((I).end()) it = (I).begin(); it!=(I).end(); ++it)
#define each2(I) for(typeof((I).end()) iit = (I).begin(); iit!=(I).end(); ++iit)

using namespace std;

struct Edge {
    int end1, end2;
    float weight;
    Edge(){}
    Edge(int one, int two, float wht) : end1(one), end2(two), weight(wht){}
    bool operator<( const Edge& rhs ) const{
        return (
                (weight < rhs.weight) ||
                (weight == rhs.weight && end1 < rhs.end1) ||
                (weight == rhs.weight && end1 == rhs.end1 && end2 < rhs.end2) );
    }
};

typedef set<Edge> Graph;
void printGraph(const Graph & g){
    
    float TW = 0.0;
    float PW = 0.0;
    std::vector<float> weights;
    Graph::iterator it = g.begin();
    
    int i = 1;
    while (it != g.end()){
        weights.push_back(it->weight);
        TW = TW + it->weight;
        std::cout << i << ") ";
        std::cout << "End1:  "  << it->end1;
        std::cout << "  End2:  "  << it->end2;
        std::cout << "  Weight: " << it->weight;
        std::cout << "\n";
        //std::cout << "Total weight so far: " << TW << "\n\n";
        it++;
        i++;
    }
    /*for (int k = 0; k < weights.size(); k++){
     std::cout << weights.at(k) << " ";
     }
     std::cout << "\n";*/
    std::cout << "\nTotal Edges : " << i - 1  << "\n";
    std::cout << "Total weight: " << TW << "\n";
}
//===============used to change the node (vertex) data type=====================
//==============================================================================
typedef int Node;
//==============================================================================

typedef std::set<Node> V;
bool linkExists(Graph & edgeSet, Node top, Node bottom){
    Graph::iterator it = edgeSet.begin();
    while (it != edgeSet.end()){
        if (top == it->end2 && bottom == it->end1){
            return true;
        }
        it++;
    }
    return false;
}
void printNodes( const V  & setOfVerticies){
    
    V::iterator it = setOfVerticies.begin();
    std::cout << "Set contains: ";
    while (it != setOfVerticies.end()){
        std::cout << *it << " ";
        ++it;
    }
    std::cout << "\n";
}
// checks to see if a vertex (node) is unique
bool uniqueNode(const Node node, const std::vector<Node> & v){
    for (int i = 0; i < v.size(); i++){
        if (node == v.at(i)){
            std::cout << "Error: node already in set! \n";
            return false;
        }
    }
    return true;
}
void buildGraphNodes(V & vertexSet){
    int numOfNodes;
    Node node;
    // vector to keep track of unique nodes already
    // admitted to set. Prevents duplicates
    std::vector<Node> nodesInGraph;
    
    std::cout << "How many nodes are there? \n";
    std::cin >> numOfNodes;
    for (int i = 0; i < numOfNodes; i++){
        std::cout << "Enter a UNIQUE node \n";
        std::cin >> node;
        if (uniqueNode(node, nodesInGraph)){
            vertexSet.insert(node);
            nodesInGraph.push_back(node);
        }
        else {
            // decrement so FULL number of nodes
            // will be inputted
            i--;
        }
    }
}
void userGeneratedGraph(Graph & g/*, V & vertexSet*/){
    
    // set of Edges used to store all computed combinations
    // of links and used to compare whether or not a new
    // prompt should be made
    V vertexSet;
    Graph promptedNodes;
    
    // builds vertex set V
    buildGraphNodes(vertexSet);
    // clears the screen after every entry;
    std::cout << "\033[2J\033[1;1H";
    //printNodes(vertexSet);
    //printMatrix(vertexSet);
    
    //========================Now link verticies===========================
    V::iterator top = vertexSet.begin();
    char linkPrompt;
    bool invald = false;
    while (top != vertexSet.end()){
        
        V::iterator bottom = vertexSet.begin();
        while (bottom != vertexSet.end()){
            
            if (invald == true){
                std::cout << "\033[2J\033[1;1H";
                std::cout << "\nError: not a float number!\n" << endl;
            }
            // prints the set to be seen every turn of the loop
            printNodes(vertexSet);
            
            if (*top == *bottom){
                std::cout << "\033[2J\033[1;1H";
                bottom++;
                invald = false;
                continue;
            }
            else if (linkExists(promptedNodes, *top, *bottom)){
                // do not link since the nodes are already linked
                std::cout << "\033[2J\033[1;1H";/*
                                                 std::cout << "Link already exists! \n";
                                                 std::cout << "TOP: "<< *top <<" Bottom: "<<*bottom <<"\n";*/
                ++bottom;
                invald = false;
                continue;
            }
            // if the node is not linked then link
            // create an edge object; fill in data; insert to set
            std::cout << "Link ";
            std::cout << *top << " to " << *bottom << "? ";
            std::cout << "'Y' or 'y' for yes and 'N' or 'n' for no \n";
            std::cin >> linkPrompt;
            
            if (linkPrompt == 'Y' || linkPrompt == 'y' ){
                
                float linkWeight;
                std::cout << "What is the weight of the link? \n";
                
                if(!(cin >> linkWeight)) {
                    cin.clear();
                    cin.ignore();
                    //std::cout << "\033[2J\033[1;1H";
                    //std::cout << "WE ARE IN";
                    //--bottom;
                    invald = true;
                    continue;
                }
                
                //std::cin >> linkWeight;
                // clears the screen after every entry;
                std::cout << "\033[2J\033[1;1H";
                struct Edge genEdge;
                genEdge.end1 = *top;
                genEdge.end2 = *bottom;
                genEdge.weight = linkWeight;
                g.insert(genEdge);
                promptedNodes.insert(genEdge);
                bottom++;
                continue;
            }
            else if (linkPrompt == 'N' || linkPrompt == 'n'){
                // do nothing and continue
                // clears the screen after every entry;
                std::cout << "\033[2J\033[1;1H";
                /*std::cout << "Promted nodes before denied 'N': \n";
                 printEdgeSet(promptedNodes);*/
                Edge * newEdge = new Edge;
                // struct Edge deniedEdge;
                newEdge->end1 = *top;
                newEdge->end2 = *bottom;
                // link weight 0 since link is nonexistent
                newEdge->weight = 0.0;
                promptedNodes.insert(*newEdge);
                bottom++;
                invald = false;
                continue;
            }
            else {
                std::cout << "\033[2J\033[1;1H";
                std::cout << "\nInvalid input! \n";
                // decrements to stay on same nodes
                // to ask whether to link or not again
                --bottom;
            }
            ++bottom;
        }
        ++top;
    }
    //=======================END OF EMPTY GRAPH GENERATOR===================
    //printEdgeSet(promptedNodes);
    //std::cout << "\n\n";
    std::cout << "Edges in generated graph: \n";
    //printEdgeSet(g);
    std::cout << "\n";
}


void calculatePrim(const Graph & g, Graph & MST){
    
    map<Node, map<Node, float> > v;
    set<Node> visited;
    
    int x = 0;
    
    
    // for each Edge in the graph
    Graph::iterator kit = g.begin();
    while (kit != g.end()){
        // map end1 to end1 with weight
        v[kit->end1][kit->end2] = kit->weight;
        v[kit->end2][kit->end1] = kit->weight;
        kit++;
    }
    /*
     // for each Edge in the graph
     each(g){
     // map end1 to end1 with weight
     v[it->end1][it->end2] = it->weight;
     v[it->end2][it->end1] = it->weight;
     }*/
    
    // insert root beginning vertex
    visited.insert(g.begin()->end1);
    
    map<Node, map<Node, float> >::iterator iter = v.begin();
    while (iter != v.end()){
        cout <<"First:    " <<iter->first << " ";
        cout << "Second:  " <<iter->second.begin()->first << " ";
        cout << "Weight:  " <<iter->second.begin()->second << " ";
        cout << "\n";
        iter++;
    }
    
    
    
    map<Node, map<Node, float> >::iterator kiit = v.begin();
    while (kiit != v.end()){
        kiit->second.erase(g.begin()->end1);
        kiit++;
    }
    /*each(v){
     std::cout << "End1: " << it->first;
     std::cout << " End2: " << it->second.begin()->first;
     std::cout << " Weight to erase: " << it->second.begin()->second << " \n";
     it->second.erase(g.begin()->end1);
     }*/
    
    bool done = false;
    while(!done){
        Graph potentials;
        
        //set<Node> visited;
        //map<Node, map<Node, float> > v;
        
        set<Node>::iterator its = visited.begin();
        while (its != visited.end()){
            map<Node, float>::iterator itss = v[*its].begin();
            while (itss != v[*its].end()){
                potentials.insert( Edge (*its, itss->first, itss->second));
                itss++;
            }
            its++;
        }
        
        /*each(visited){
         each2(v[*it]){
         potentials.insert( Edge (*it, iit->first, iit->second) );
         }
         }*/
        
        
        if(potentials.empty())
        break;
        MST.insert( *(potentials.begin()) );
        visited.insert(potentials.begin()->end2);
        
        map<Node, map<Node, float> >::iterator next = v.begin();
        while (next != v.end()){
            next->second.erase(potentials.begin()->end2);
            next++;
        }
        /*each(v)
         it->second.erase(potentials.begin()->end2);*/
    }
    // find potentials -> set
    // take top one, cleanup
}


Graph prim(const Graph& g) {
    
    Graph parent;
    
    if (g.empty()){
        Graph USRGeneratedGraph;
        // generate graph
        userGeneratedGraph(USRGeneratedGraph);
        calculatePrim(USRGeneratedGraph,parent);
        std::cout << "\n==========Graph before==========\n";
        printGraph(USRGeneratedGraph);
        std::cout << "\n===============MST==============\n";
        printGraph(parent);
    }
    else {
        
        calculatePrim(g,parent);
        std::cout << "\n==========Graph before==========\n";
        printGraph(g);
        std::cout << "\n===============MST==============\n";
        printGraph(parent);
    }
    
    return parent;
}


#endif
