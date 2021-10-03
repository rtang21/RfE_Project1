% cd D:\Runyu\RfE\Project1
% filename = dir('1.3X');
% cd 1.3X
% 
% %%%%%%%% read phantom %%%%%%%%
% cd(filename(3).name)
% cd DICOM
% [phantom1,slice_num1,slices1] = phantomread();
% info1 = dicominfo(slice_num1(3,:));
% cd D:\Runyu\RfE\Project1\1.3X
% 
% cd(filename(4).name)
% cd DICOM
% [phantom2,slice_num2,slices2] = phantomread();
% info2 = dicominfo(slice_num2(3,:));
% cd D:\Runyu\RfE\Project1\1.3X
% 
% %%%% phantom 1 %%%%%
% contrast1 = contrast(phantom1(326:364,388:442,235:260),phantom1(398:450,477:550,235:260));
% contrast2 = contrast(phantom1(488:532,292:341,235:260),phantom1(398:450,477:550,235:260));
% contrast3 = contrast(phantom1(657:704,390:434,235:260),phantom1(398:450,477:550,235:260));
% contrast4 = contrast(phantom1(663:711,584:638,235:260),phantom1(398:450,477:550,235:260));
% contrast5 = contrast(phantom1(497:546,686:744,235:260),phantom1(398:450,477:550,235:260));
% Contrast1 = [contrast1, contrast2, contrast3, contrast4, contrast5];
% figure;
% boxplot(Contrast1);
% xlabel('Phantom1 - Number of inserts')
% ylabel('Phantom1 - Contrast of inserts')
% 
% cnr1 = CNR(contrast1,phantom1(326:364,388:442,235:260),phantom1(398:450,477:550,235:260));
% cnr2 = CNR(contrast2,phantom1(488:532,292:341,235:260),phantom1(398:450,477:550,235:260));
% cnr3 = CNR(contrast3,phantom1(657:704,390:434,235:260),phantom1(398:450,477:550,235:260));
% cnr4 = CNR(contrast4,phantom1(663:711,584:638,235:260),phantom1(398:450,477:550,235:260));
% cnr5 = CNR(contrast5,phantom1(497:546,686:744,235:260),phantom1(398:450,477:550,235:260));
% CNR1 = [cnr1,cnr2,cnr3,cnr4,cnr5];
% figure;
% boxplot(CNR1)
% xlabel('Phantom1 - Number of inserts')
% ylabel('Phantom1 - CNR of inserts')
% 
% %%%% phantom 2 %%%%%
% contrast1 = contrast(phantom2(326:364,388:442,236:261),phantom2(398:450,477:550,236:261));
% contrast2 = contrast(phantom2(488:532,292:341,236:261),phantom2(398:450,477:550,236:261));
% contrast3 = contrast(phantom2(657:704,390:434,236:261),phantom2(398:450,477:550,236:261));
% contrast4 = contrast(phantom2(663:711,584:638,236:261),phantom2(398:450,477:550,236:261));
% contrast5 = contrast(phantom2(497:546,686:744,236:261),phantom2(398:450,477:550,236:261));
% Contrast2 = [contrast1, contrast2, contrast3, contrast4, contrast5];
% figure;
% boxplot(Contrast2);
% xlabel('Phantom2 - Number of inserts')
% ylabel('Phantom2 - Contrast of inserts')
% 
% cnr1 = CNR(contrast1,phantom2(326:364,388:442,236:261),phantom2(398:450,477:550,236:261));
% cnr2 = CNR(contrast2,phantom2(488:532,292:341,236:261),phantom2(398:450,477:550,236:261));
% cnr3 = CNR(contrast3,phantom2(657:704,390:434,236:261),phantom2(398:450,477:550,236:261));
% cnr4 = CNR(contrast4,phantom2(663:711,584:638,236:261),phantom2(398:450,477:550,236:261));
% cnr5 = CNR(contrast5,phantom2(497:546,686:744,236:261),phantom2(398:450,477:550,236:261));
% CNR2 = [cnr1,cnr2,cnr3,cnr4,cnr5];
% figure;
% boxplot(CNR2)
% xlabel('Phantom2 - Number of inserts')
% ylabel('Phantom2 - CNR of inserts')
% 
% %%%% MTF and region of interest %%%%%%%%
% ROI1 = phantom1(519,740:780,235:260);
% ROI2 = phantom2(519,770:810,236:261);
% 
% [mtf1,roi1] = MTF(ROI1,0.224609);
% [mtf2,roi2] = MTF(ROI2,0.224609);
% 
% %%%%%%% plot noise map %%%%%%%%%%
% noisemap1 = noisemap(phantom1(:,:,70));
% noisemap2 = noisemap(phantom2(:,:,70));
% figure; imshow(noisemap1,[0 200]); title('Noise map of 1.3X: phantom 1'); colorbar; colormap(jet)
% figure; imshow(noisemap2,[0 200]); title('Noise map of 1.3X: phantom 2'); colorbar; colormap(jet)
% 
% %%%%%%% plot NPS %%%%%%%%%%
nps1 = NPS(phantom1(401:464,487:550,66:95),0.224609,0.224609);
nps2 = NPS(phantom2(401:464,487:550,66:95),0.224609,0.224609);

figure; imshow(log(1+fftshift(abs(nps1))),[6 11]); title('NPS of phantom 1'); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)

figure; imshow(log(1+fftshift(abs(nps2))),[6 11]); title('NPS of phantom 2'); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)
% 
% figure; imshow(phantom1(:,:,424),[0 80]); colorbar; title('Phantom 1 - Insert Slice')
% figure; imshow(phantom2(:,:,429),[0 80]); colorbar; title('Phantom 2 - Insert Slice')