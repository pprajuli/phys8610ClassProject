function [Egap] = plot_histograms(filename)
    % The output from geant4 are the following
    % Energy deposited in gap, energy deposited in absorbing material
    % Track length gap and track length in absorbing material
    [Eabs,Egap,Lgap,Labs] = import_data_from_ntuples(filename);
    Eabs_std = std(Eabs);
    Eabs_mean = mean(Eabs);
    
    figure(1);
    %subplot(2,2,1);
    dn1 = 'Energy Deposited in Material';
    h = histogram(Eabs,100,'DisplayName',dn1);
    
    xlabel('Energy (MeV)');
    legend();
    grid on;
   
    figure(2);
    dn2 = 'Energy Deposited in Gap';
    histogram(Egap,100,'DisplayName',dn2);
    xlabel('Energy (MeV)');
    grid on;
    figure(3);
    dn3 = 'Track Length in gap';
    h3 = histogram(Lgap,100,'DisplayName',dn3);
    xlabel('Track Length (mm)','FontSize',16);
    legend();
    grid on;
    
    
    figure(4);
    dn4= 'Track Length in Material';
    histogram(Labs,100,'DisplayName',dn4);
    
    legend();
    xlabel('Track Length (mm)','FontSize',16);
    grid on;
    
    legend();
    grid on;
    
    
    
   
end