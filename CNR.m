function cnr = CNR(contrast,A,B)
for i = 1:size(A,3)
    sigma_in = std(A(:,:,i),0,'all');
    sigma_b = std(B(:,:,i),0,'all');
    cnr(i,1) = 2*contrast(i,1)/(sigma_in+sigma_b);
end
end