cd D:\Runyu\RfE\Project1
filename = dir('1.1X');
cd 1.1X

%%%%%%%% read phantom %%%%%%%%
cd(filename(3).name)
cd DICOM
[phantom1,slice_num1,slices1] = phantomread();
info1 = dicominfo(slice_num1(3,:));
cd D:\Runyu\RfE\Project1\1.1X

cd(filename(4).name)
cd DICOM
[phantom2,slice_num2,slices2] = phantomread();
info2 = dicominfo(slice_num2(3,:));
cd D:\Runyu\RfE\Project1\1.1X

cd(filename(5).name)
cd DICOM
[phantom3,slice_num3,slices3] = phantomread();
info3 = dicominfo(slice_num3(3,:));
cd D:\Runyu\RfE\Project1\1.1X

figure; imshow(phantom1(:,:,247),[0 80]); colorbar; title('Phantom 1 - Insert Slice: #247')
figure; imshow(phantom1(:,:,322),[0 80]); colorbar; title('Phantom 1 - Insert Slice: #322')
figure; imshow(phantom2(:,:,247),[0 80]); colorbar; title('Phantom 2 - Insert Slice: #247')
figure; imshow(phantom3(:,:,247),[0 80]); colorbar; title('Phantom 3 - Insert Slice: #247')