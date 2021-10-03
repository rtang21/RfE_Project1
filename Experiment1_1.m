cd D:\Runyu\RfE\Project1
filename = dir('1.1');
cd 1.1

%%%%%% read phantom %%%%%%%%
cd(filename(3).name)
cd DICOM
[phantom1,slice_num1,slices1] = phantomread();
info1 = dicominfo(slice_num1(3,:));
cd D:\Runyu\RfE\Project1\1.1

cd(filename(4).name)
[phantom2,slice_num2,slices2] = phantomread();
info2 = dicominfo(slice_num2(3,:));
cd D:\Runyu\RfE\Project1\1.1

cd(filename(5).name)
cd DICOM
[phantom3,slice_num3,slices3] = phantomread();
info3 = dicominfo(slice_num3(3,:));
cd D:\Runyu\RfE\Project1\1.1

% %%%%%%%% calculation of contrast and CNR %%%%%%%%%
% %%%% phantom 1 %%%%%
% contrast1 = contrast(phantom1(326:364,388:442,158:167),phantom1(398:450,477:550,158:167));
% contrast2 = contrast(phantom1(488:532,292:341,158:167),phantom1(398:450,477:550,158:167));
% contrast3 = contrast(phantom1(657:704,390:434,158:167),phantom1(398:450,477:550,158:167));
% contrast4 = contrast(phantom1(663:711,584:638,158:167),phantom1(398:450,477:550,158:167));
% contrast5 = contrast(phantom1(497:546,686:744,158:167),phantom1(398:450,477:550,158:167));
% Contrast1 = [contrast1, contrast2, contrast3, contrast4, contrast5];
% figure(1)
% boxplot(Contrast1);
% xlabel('Phantom1 - Number of inserts')
% ylabel('Phantom1 - Contrast of inserts')
% 
% cnr1 = CNR(contrast1,phantom1(326:364,388:442,158:167),phantom1(398:450,477:550,158:167));
% cnr2 = CNR(contrast2,phantom1(488:532,292:341,158:167),phantom1(398:450,477:550,158:167));
% cnr3 = CNR(contrast3,phantom1(657:704,390:434,158:167),phantom1(398:450,477:550,158:167));
% cnr4 = CNR(contrast4,phantom1(663:711,584:638,158:167),phantom1(398:450,477:550,158:167));
% cnr5 = CNR(contrast5,phantom1(497:546,686:744,158:167),phantom1(398:450,477:550,158:167));
% CNR1 = [cnr1,cnr2,cnr3,cnr4,cnr5];
% figure(2)
% boxplot(CNR1)
% xlabel('Phantom1 - Number of inserts')
% ylabel('Phantom1 - CNR of inserts')
% 
% %%%% phantom 2 %%%%%
% contrast1 = contrast(phantom2(326:364,388:442,247:256),phantom2(398:450,477:550,247:256));
% contrast2 = contrast(phantom2(488:532,292:341,247:256),phantom2(398:450,477:550,247:256));
% contrast3 = contrast(phantom2(657:704,390:434,247:256),phantom2(398:450,477:550,247:256));
% contrast4 = contrast(phantom2(663:711,584:638,247:256),phantom2(398:450,477:550,247:256));
% contrast5 = contrast(phantom2(497:546,686:744,247:256),phantom2(398:450,477:550,247:256));
% Contrast2 = [contrast1, contrast2, contrast3, contrast4, contrast5];
% figure(3)
% boxplot(Contrast2);
% xlabel('Phantom2 - Number of inserts')
% ylabel('Phantom2 - Contrast of inserts')
% 
% cnr1 = CNR(contrast1,phantom2(326:364,388:442,247:256),phantom2(398:450,477:550,247:256));
% cnr2 = CNR(contrast2,phantom2(488:532,292:341,247:256),phantom2(398:450,477:550,247:256));
% cnr3 = CNR(contrast3,phantom2(657:704,390:434,247:256),phantom2(398:450,477:550,247:256));
% cnr4 = CNR(contrast4,phantom2(663:711,584:638,247:256),phantom2(398:450,477:550,247:256));
% cnr5 = CNR(contrast5,phantom2(497:546,686:744,247:256),phantom2(398:450,477:550,247:256));
% CNR2 = [cnr1,cnr2,cnr3,cnr4,cnr5];
% figure(4)
% boxplot(CNR2)
% xlabel('Phantom2 - Number of inserts')
% ylabel('Phantom2 - CNR of inserts')
% 
% %%%%%% phantom 3 %%%%%
% contrast1 = contrast(phantom3(326:364,388:442,143:150),phantom3(398:450,477:550,143:150));
% contrast2 = contrast(phantom3(488:532,292:341,143:150),phantom3(398:450,477:550,143:150));
% contrast3 = contrast(phantom3(657:704,390:434,143:150),phantom3(398:450,477:550,143:150));
% contrast4 = contrast(phantom3(663:711,584:638,143:150),phantom3(398:450,477:550,143:150));
% contrast5 = contrast(phantom3(497:546,686:744,143:150),phantom3(398:450,477:550,143:150));
% Contrast3 = [contrast1, contrast2, contrast3, contrast4, contrast5];
% figure(5)
% boxplot(Contrast3);
% xlabel('Phantom3 - Number of inserts')
% ylabel('Phantom3 - Contrast of inserts')
% 
% cnr1 = CNR(contrast1,phantom3(326:364,388:442,143:150),phantom3(398:450,477:550,143:150));
% cnr2 = CNR(contrast2,phantom3(488:532,292:341,143:150),phantom3(398:450,477:550,143:150));
% cnr3 = CNR(contrast3,phantom3(657:704,390:434,143:150),phantom3(398:450,477:550,143:150));
% cnr4 = CNR(contrast4,phantom3(663:711,584:638,143:150),phantom3(398:450,477:550,143:150));
% cnr5 = CNR(contrast5,phantom3(497:546,686:744,143:150),phantom3(398:450,477:550,143:150));
% CNR3 = [cnr1,cnr2,cnr3,cnr4,cnr5];
% figure(6)
% boxplot(CNR3)
% xlabel('Phantom3 - Number of inserts')
% ylabel('Phantom3 - CNR of inserts')
% 
% %%%%%%%% plot noise map %%%%%%%%%%
% noisemap1 = noisemap(phantom1(:,:,50));
% noisemap2 = noisemap(phantom2(:,:,70));
% noisemap3 = noisemap(phantom3(:,:,50));
% figure(7); imshow(noisemap1,[0 200]); title('Noise map of phantom 1'); colorbar; colormap(jet)
% figure(8); imshow(noisemap2,[0 200]); title('Noise map of phantom 2'); colorbar; colormap(jet)
% figure(9); imshow(noisemap3,[0 200]); title('Noise map of phantom 3'); colorbar; colormap(jet)
% 
% %%%%%%%% plot NSP %%%%%%%%%%
% nps1 = NPS(phantom1(:,:,50:99),0.224609,0.224609);
% nps2 = NPS(phantom2(:,:,70:99),0.224609,0.224609);
% nps3 = NPS(phantom3(:,:,50:89),0.224609,0.224609);
% figure(10); imshow(log(1+fftshift(abs(nps1))),[13 29]); title('NPS of phantom 1'); colorbar; colormap(hot)
% figure(11); imshow(log(1+fftshift(abs(nps2))),[13 29]); title('NPS of phantom 2'); colorbar; colormap(hot)
% figure(12); imshow(log(1+fftshift(abs(nps3))),[13 29]); title('NPS of phantom 3'); colorbar; colormap(hot)

%%%%%%% plot slice %%%%%%%%%
figure; imshow(phantom1(:,:,247),[])
figure; imshow(phantom2(:,:,247),[])
figure; imshow(phantom3(:,:,247),[])