function [Eabs,Egap,Labs,Lgap] = import_data_from_ntuples(filename)
    data_out = readmatrix(filename);
    Eabs = data_out(:,1);
    Egap = data_out(:,2);
    Labs = data_out(:,3);
    Lgap = data_out(:,4);
end