function [N,edges] = scale_histograms(data)
[N,edges] = hist(data,25);
normalizedN = N/sum(N);
area(edges,normalizedN);

end