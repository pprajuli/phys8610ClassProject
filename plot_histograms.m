function [Egap] = plot_histograms(filename)
    % The output from geant4 are the following
    % Energy deposited in gap, energy deposited in absorbing material
    % Track length gap and track length in absorbing material
    [Eabs,Egap,Lgap,Labs] = import_data_from_ntuples(filename);
    Eabs_std = std(Eabs);
    Eabs_mean = mean(Eabs);
    
    figure(1);
    subplot(2,2,1);
    dn1 = 'Energy Deposited in Gap';
    %[f,x]=histogram(Egap,100,'DisplayName',dn1);
    [est_pdf,bins] = scale_histograms(Egap);
    %histogram(est_pdf);
    hold on;
    fit_normal_distribution(Egap);
    
    h1 = fitdist(Egap,'normal');
    %y = pdf(h1,f);
    %plot(x,y)
    xlabel('Energy (MeV)');
    legend();
    grid on;
   
    hold off;
    
    subplot(2,2,2);
     histogram(Lgap,100,'DisplayName','Gap');
    
    h3 = fitdist(Lgap,'normal');
    xlabel('Track Length (cm)');
    legend();
    grid on;
    
    
    subplot(2,2,3);
    dn2= 'Energy Deposited in Material';
    histogram(Eabs,100,'Normalization','pdf','DisplayName',dn2);
    h2 = fitdist(Eabs,'normal');
    legend();
    xlabel('Energy (MeV)');
    grid on;
    subplot(2,2,4);
    histogram(Labs,100,'DisplayName','Material');
    %h4 = fitdist(Labs,'normal');
    %set(gca,'YScale','log');
    legend();
    grid on;
    xlabel('Track length (cm)');
    
    
   
end