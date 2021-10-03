function [mtf,roi] = MTF(ROI,ax)
for i = 1:size(ROI,3)
    roi(i,:) = ROI(1,:,i);
end
  
diffim = diff(roi,1,2);
absdiff = abs(diffim);

%Find the position of the edge
[~,maxdiff] = max(absdiff,[],2);

%Fitting the edge then find the new edge position
coeffs = polyfit(1:size(maxdiff),maxdiff', 1);
fittedY = 1:size(maxdiff);
fittedX = polyval(coeffs,fittedY);
shift_x = repmat(-6:0.1:6,1)+ fittedX';
shift_y = repmat(fittedY',1,size(shift_x,2));

newedge = interpolation(shift_x,shift_y,roi);

%Find the ESF
esf = sum(newedge,1);
figure;
normal_esf = esf/max(esf);
plot(linspace(0,12,121),normal_esf); hold on

% Find the LSF
lsf = diff(esf);
plot(linspace(0,12,120),-lsf/max(abs(lsf)))
title('Nomalized oversampled ESF and LSF')
ylim([0 1.2])
xlabel('Pixels')
legend('ESF','LSF')

% apply fft to filt out the big frequency signal
mtf = fft(-lsf);
samples = linspace(0,12*ax,120);
frequency = 1./samples;
frequency = sort(frequency);
figure;
plot([0,frequency(1:end-5)],abs(mtf(1:116))/abs(mtf(1)));
xlabel('Frequency: fx (/mm)')
title('MTF')

function value = interpolation(x, y, im)
value=zeros(size(x));
[~, col2] = size(im);
if (size(x)==size(y))
    for i=1:size(x,1)
         for j=1:size(x,2)
            if (x(i,j) <= 1)
                x(i,j) = 1;
            elseif (x(i,j) >= col2 )
                x(i,j) = col2-1;
            end

            x0 = floor(x(i,j));
            x1 = x0 + 1;

            value(i,j) = im(y(i,j),x0)*(x1-x(i,j)) + im(y(i,j),x1)*(x(i,j)-x0);
         end
    end
end
end
end