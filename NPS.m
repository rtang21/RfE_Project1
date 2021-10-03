function NPS = NPS(roi,ax,ay)
Nx = 64;
Ny = 64;
for i = 1:30
    mean_roi(:,:,i) = roi(:,:,i) - mean(roi(:,:,i),'all');
    FT = fft2(mean_roi(:,:,i));
    NPS(:,:,i) = (ax*ay)/(Nx*Ny)*(abs(FT))^2;
end
NPS = mean(NPS,3);
end