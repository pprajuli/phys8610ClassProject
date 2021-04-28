function [] = fit_normal_distribution(data)
    data = sort(data);
    data_mean = mean(data);
    data_std = std(data);
    f = exp(-(data-data_mean).^2./(2*data_std^2))./(data_std*sqrt(2*pi));
    plot(data,f);

end