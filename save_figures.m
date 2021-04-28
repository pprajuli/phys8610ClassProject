function [] = save_figures(gca,gcf)
%fileTitle = input('Enter File title: ');
filename = input('Enter filename: ');
%xlabel(input('Enter xlabel: '));
%ylabel(input('Enter ylabel: '));
set(gcf,'PaperSize',[8 6]);
set(gcf,'PaperUnits','inches','PaperPosition',[0 0 8 6]);
%set(gca,'LineWidth',1);
%title(fileTitle);
print(filename,'-dpng');
print(filename,'-dpdf');
end 