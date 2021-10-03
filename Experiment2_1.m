cd D:\Runyu\RfE\Project1
filename = dir('1.2');
cd 1.2

%%%%%%%% read phantom %%%%%%%%
cd(filename(3).name)
cd DICOM
[phantom1,slice_num1,slices1] = phantomread();
info1 = dicominfo(slice_num1(3,:));
cd D:\Runyu\RfE\Project1\1.2

cd(filename(4).name)
cd DICOM
[phantom2,slice_num2,slices2] = phantomread();
info2 = dicominfo(slice_num2(3,:));
cd D:\Runyu\RfE\Project1\1.2

cd(filename(5).name)
cd DICOM
[phantom3,slice_num3,slices3] = phantomread();
info3 = dicominfo(slice_num3(3,:));
cd D:\Runyu\RfE\Project1\1.2

%%%%% region of interest %%%%%%%%
% ROI1 = phantom1(519,740:780,250:280);
% ROI2 = phantom2(519,740:780,250:280);
% ROI3 = phantom3(519,740:780,250:280);
% 
% 
% [mtf1,roi1] = MTF(ROI1,0.224609);
% [mtf2,roi2] = MTF(ROI2,0.224609);
% [mtf3,roi3] = MTF(ROI3,0.224609);
