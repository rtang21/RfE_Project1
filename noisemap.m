function noisemap = noisemap(phantom)
for i = 1:size(phantom,1)-4
    for j = 1:size(phantom,2)-4
        noisemap(i,j) = std(double(phantom(i:i+4,j:j+4)),0,'all');
    end
end
end