s=[1 2] ; %start nodes
t= [2 3]; %end node
G=graph(s,t); % create a graph object
plot(G); %plot the graph
title('Graph'); %add a title



%directed graph
G=digraph([1 2],[2 3]);
plot(GH);
title('Directed Graph-02');