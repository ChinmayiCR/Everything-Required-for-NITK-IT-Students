#!/usr/bin/env python3
'''
Assignment 4: Girvan Newman Technique
to split graph into components based on betweenness measure
181IT113
'''
import networkx as nx
import csv
import sys
import matplotlib.pyplot as plt
import random

_DEBUG_ = False


def buildGraph(G, file_, delimiter_):
    read = csv.reader(open(file_), delimiter=delimiter_)
    for line in read:
        if len(line) > 2:
            if float(line[2]) != 0.0:
                G.add_edge(int(line[0]), int(line[1]))
        else:
            G.add_edge(int(line[0]), int(line[1]))


# Calculates modularity of a component
def _GirvanNewmanModularity(G, deg_, m_):
    newArray = nx.adj_matrix(G)
    newDeg = {}
    newDeg = UpdateDegree(newArray, G.nodes())
    comps = nx.connected_components(G)
    print('No of communities in G: {}'.format(
        nx.number_connected_components(G)))
    Mod = 0
    for c in comps:
        EWC = 0  # edges within community
        RE = 0  # random edges
        for u in c:
            EWC += newDeg[u]
            RE += deg_[u]
        Mod += (float(EWC) - float(RE*RE)/float(2*m_))
    Mod = Mod/float(2*m_)
    if _DEBUG_:
        print("Modularity: {}".format(Mod))
    return Mod


def UpdateDegree(A, nodes):
    degree_dict = {}
    B = A.sum(axis=1)
    i = 0
    for node_id in list(nodes):
        degree_dict[node_id] = B[i, 0]
        i += 1
    return degree_dict


def edge_to_remove(graph):
    G_dict = nx.edge_betweenness_centrality(graph)
    edge = ()
    for key, value in sorted(G_dict.items(),
                             key=lambda item: item[1], reverse=True):
        edge = key
        break

    return edge

# Girvan Newman algorithm


def GirvanNewman(G, Orig_deg, m_):
    seg = nx.connected_components(G)
    seg_count = nx.number_connected_components(G)
    BestQ = 0.0
    Q = 0.0
    while(seg_count == 1):

        G.remove_edge(edge_to_remove(G)[0], edge_to_remove(G)[1])
        seg = nx.connected_components(G)
        seg_count = nx.number_connected_components(G)
        Q = _GirvanNewmanModularity(G, Orig_deg, m_)
        print("Modularity of G: {}".format(Q))
        if Q > BestQ:
            BestQ = Q
            Bestcomps = list(nx.connected_components(G))
            print("Components: {}".format(Bestcomps))
        if G.number_of_edges() == 0:
            break
        if BestQ > 0.0:
            print("Max modularity found (Q): {} and Number of communities: {}".
                  format(
                      BestQ, len(Bestcomps)))
            print("Graph communities: {}".format(Bestcomps))
        else:
            print("Max modularity (Q):", BestQ)

    return seg


def makeGraph(G, seg):
    node_groups = []

    for i in seg:
        node_groups.append(list(i))
    pos = nx.spring_layout(G)
    color_map = []
    colors = []
    for i in range(len(node_groups)):
        r = random.random()
        b = random.random()
        g = random.random()
        color = (r, g, b)
        colors.append(color)
    for node in G:
        for i in range(len(node_groups)):
            if node in node_groups[i]:
                color_map.append(colors[i])

    nx.draw(G, pos, node_color=color_map, with_labels=True)
    plt.savefig('components.jpg')


def main(argv):
    if len(argv) < 2:
        G = nx.karate_club_graph()
        if _DEBUG_:
            print('G nodes: {} & G no of nodes: {}'.format(
                G.nodes(), G.number_of_nodes()))

        n = G.number_of_nodes()
        A = nx.adj_matrix(G)

        m_ = 0.0
        for i in range(0, n):
            for j in range(0, n):
                m_ += A[i, j]
        m_ = m_/2.0
        if _DEBUG_:
            print("m: {}".format(m_))
        Orig_deg = {}
        Orig_deg = UpdateDegree(A, G.nodes())
        seg = GirvanNewman(G, Orig_deg, m_)
        makeGraph(G, seg)
        print("If you want to give custom graph:")
        print("usage: python girvanNewman.py input.txt")
        return 1

    graph_fn = argv[1]
    G = nx.Graph()
    buildGraph(G, graph_fn, ',')

    if _DEBUG_:
        print('G nodes: {} & G no of nodes: {}'.format(
            G.nodes(), G.number_of_nodes()))

    n = G.number_of_nodes()
    A = nx.adj_matrix(G)

    m_ = 0.0
    for i in range(0, n):
        for j in range(0, n):
            m_ += A[i, j]
    m_ = m_/2.0
    if _DEBUG_:
        print("m: {}".format(m_))
    Orig_deg = {}
    Orig_deg = UpdateDegree(A, G.nodes())
    seg = GirvanNewman(G, Orig_deg, m_)
    makeGraph(G, seg)


if __name__ == "__main__":
    sys.exit(main(sys.argv))
