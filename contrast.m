function contrast = contrast(A,B)
for i = 1:size(A,3)
    u_in = mean(A(:,:,i),'all');
    u_b = mean(B(:,:,i),'all');
    contrast(i,1) = abs(u_in - u_b); 
end
end