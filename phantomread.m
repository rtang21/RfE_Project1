function [phantom,slice_num,slices] = phantomread()
slice_num = ls('*.*');
slices = length(slice_num)-3;
for j = 1:slices
    info = dicominfo(slice_num(j+2,:));
    stack = info.InStackPositionNumber;
    phantom(:,:,stack) = dicomread(slice_num(j+2,:));
end
phantom = double(phantom);
end