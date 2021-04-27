function [] = plot_histograms(filename)
    % The output from geant4 are the following
    % Energy deposited in gap, energy deposited in absorbing material
    % Track length gap and track length in absorbing material
    [Eabs,Egap,Lgap,Labs] = import_data_from_ntuples(filename);
    Eabs_std = std(Eabs);
    Eabs_mean = mean(Eabs);
    figure(3);
    dn1 = 'Energy Deposited in Gap';
    histogram(Egap,100,'DisplayName',dn1);
    hold on;
    %figure(4);
    dn2= 'Energy Deposited in Metal';
    histogram(Eabs,100,'DisplayName',dn2);
    legend();
    xlabel('Energy (MeV)');
    hold off;
    figure(4);
    histogram(Lgap,100,'DisplayName','Track Length in Gap');
    figure(5);
    histogram(Labs,100,'DisplayName','Track Length in Material');
    legend();
    % Generate a normal distribution
    figure(6);
    dn2= 'Energy Deposited in Metal';
    histogram(Eabs,100,'DisplayName',dn2);
    legend();
    xlabel('Energy (MeV)');
    pd = fitdist(Eabs,'Normal')
    figure(7);
    histfit(Eabs,100);
    
    
    

end