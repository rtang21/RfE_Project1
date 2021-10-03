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

%%%% region of interest %%%%%%%%
ROI1 = phantom1(519,740:780,250:280);
ROI2 = phantom2(519,740:780,250:280);
ROI3 = phantom3(519,740:780,250:280);
% 
[mtf1,roi1] = MTF(ROI1,0.224609);
[mtf2,roi2] = MTF(ROI2,0.224609);
[mtf3,roi3] = MTF(ROI3,0.224609);

%%%%%%%%% plot NPS %%%%%%%%%
nps1 = NPS(phantom1(401:464,487:550,80:119),0.224609,0.224609);
nps2 = NPS(phantom2(401:464,487:550,80:119),0.224609,0.224609);
nps3 = NPS(phantom3(401:464,487:550,80:119),0.224609,0.224609);

figure; imshow(log(1+fftshift(abs(nps1))),[4 12]); title('NPS of phantom 1'); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)

figure; imshow(log(1+fftshift(abs(nps2))),[4 12]); title('NPS of phantom 2'); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)

figure; imshow(log(1+fftshift(abs(nps3))),[4 12]); title('NPS of phantom 3'); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)
