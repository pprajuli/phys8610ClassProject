function [est_pdf,bins] = scale_histograms(data)
b = data;
bmin = min(b);
bmax = max(b);

% Calculate histogram
[counts,bins] = hist(b,100);

% Scale histogram to get the pdf
est_pdf = counts / sum(counts * mean(diff(bins)));

% Estimate pdf using fitdist
% pd = fitdist(b,'Normal');
% x_pdf = linspace(bmin,bmax,1000);
% y_pdf = pdf(pd,x_pdf);

% Plot everything
% figure;
% hold on;
% bar(bins,est_pdf);
% plot(x_pdf, y_pdf, '-r');
% hold off;

end