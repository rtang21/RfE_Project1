cd D:\Runyu\RfE\Project1
filename = dir('1.3');
cd 1.3

%%%%%%%% read phantom %%%%%%%%
cd(filename(3).name)
cd DICOM
[phantom1,slice_num1,slices1] = phantomread();
info1 = dicominfo(slice_num1(3,:));
cd D:\Runyu\RfE\Project1\1.3

cd(filename(4).name)
cd DICOM
[phantom2,slice_num2,slices2] = phantomread();
info2 = dicominfo(slice_num2(3,:));
cd D:\Runyu\RfE\Project1\1.3

cd(filename(5).name)
cd DICOM
[phantom3,slice_num3,slices3] = phantomread();
info3 = dicominfo(slice_num3(3,:));
cd D:\Runyu\RfE\Project1\1.3
% 
cd(filename(9).name)
cd DICOM
[phantom4,slice_num4,slices4] = phantomread();
info4 = dicominfo(slice_num4(3,:));
cd D:\Runyu\RfE\Project1\1.3

cd(filename(10).name)
cd DICOM
[phantom5,slice_num5,slices5] = phantomread();
info5 = dicominfo(slice_num5(3,:));
cd D:\Runyu\RfE\Project1\1.3

%%%%% region of interest %%%%%%%%
ROI1 = phantom1(519,740:780,235:265);
ROI2 = phantom2(519,740:780,235:265);
ROI3 = phantom3(519,740:780,235:265);
ROI4 = phantom4(519,740:780,235:265);
ROI5 = phantom5(519,740:780,235:265);

[mtf1,roi1] = MTF(ROI1,0.224609);
[mtf2,roi2] = MTF(ROI2,0.224609);
[mtf3,roi3] = MTF(ROI3,0.224609);
[mtf4,roi4] = MTF(ROI4,0.224609);
[mtf5,roi5] = MTF(ROI5,0.224609);

%%%%%%%% calculation of contrast and CNR %%%%%%%%%
%%%% phantom 1 %%%%%
contrast1 = contrast(phantom1(326:364,388:442,235:260),phantom1(398:450,477:550,235:260));
contrast2 = contrast(phantom1(488:532,292:341,235:260),phantom1(398:450,477:550,235:260));
contrast3 = contrast(phantom1(657:704,390:434,235:260),phantom1(398:450,477:550,235:260));
contrast4 = contrast(phantom1(663:711,584:638,235:260),phantom1(398:450,477:550,235:260));
contrast5 = contrast(phantom1(497:546,686:744,235:260),phantom1(398:450,477:550,235:260));

cnr1 = CNR(contrast1,phantom1(326:364,388:442,235:260),phantom1(398:450,477:550,235:260));
cnr2 = CNR(contrast2,phantom1(488:532,292:341,235:260),phantom1(398:450,477:550,235:260));
cnr3 = CNR(contrast3,phantom1(657:704,390:434,235:260),phantom1(398:450,477:550,235:260));
cnr4 = CNR(contrast4,phantom1(663:711,584:638,235:260),phantom1(398:450,477:550,235:260));
cnr5 = CNR(contrast5,phantom1(497:546,686:744,235:260),phantom1(398:450,477:550,235:260));
CNR1 = [cnr1,cnr2,cnr3,cnr4,cnr5];
figure
boxplot(CNR1)
xlabel('Phantom1 - Number of inserts')
ylabel('Phantom1 - CNR of inserts')

%%%% phantom 2 %%%%%
contrast1 = contrast(phantom2(326:364,388:442,235:260),phantom2(398:450,477:550,235:260));
contrast2 = contrast(phantom2(488:532,292:341,235:260),phantom2(398:450,477:550,235:260));
contrast3 = contrast(phantom2(657:704,390:434,235:260),phantom2(398:450,477:550,235:260));
contrast4 = contrast(phantom2(663:711,584:638,235:260),phantom2(398:450,477:550,235:260));
contrast5 = contrast(phantom2(497:546,686:744,235:260),phantom2(398:450,477:550,235:260));

cnr1 = CNR(contrast1,phantom2(326:364,388:442,235:260),phantom2(398:450,477:550,235:260));
cnr2 = CNR(contrast2,phantom2(488:532,292:341,235:260),phantom2(398:450,477:550,235:260));
cnr3 = CNR(contrast3,phantom2(657:704,390:434,235:260),phantom2(398:450,477:550,235:260));
cnr4 = CNR(contrast4,phantom2(663:711,584:638,235:260),phantom2(398:450,477:550,235:260));
cnr5 = CNR(contrast5,phantom2(497:546,686:744,235:260),phantom2(398:450,477:550,235:260));
CNR2 = [cnr1,cnr2,cnr3,cnr4,cnr5];
figure
boxplot(CNR2)
xlabel('Phantom2 - Number of inserts')
ylabel('Phantom2 - CNR of inserts')

%%%%%% phantom 3 %%%%%
contrast1 = contrast(phantom3(326:364,388:442,235:260),phantom3(398:450,477:550,235:260));
contrast2 = contrast(phantom3(488:532,292:341,235:260),phantom3(398:450,477:550,235:260));
contrast3 = contrast(phantom3(657:704,390:434,235:260),phantom3(398:450,477:550,235:260));
contrast4 = contrast(phantom3(663:711,584:638,235:260),phantom3(398:450,477:550,235:260));
contrast5 = contrast(phantom3(497:546,686:744,235:260),phantom3(398:450,477:550,235:260));

cnr1 = CNR(contrast1,phantom3(326:364,388:442,235:260),phantom3(398:450,477:550,235:260));
cnr2 = CNR(contrast2,phantom3(488:532,292:341,235:260),phantom3(398:450,477:550,235:260));
cnr3 = CNR(contrast3,phantom3(657:704,390:434,235:260),phantom3(398:450,477:550,235:260));
cnr4 = CNR(contrast4,phantom3(663:711,584:638,235:260),phantom3(398:450,477:550,235:260));
cnr5 = CNR(contrast5,phantom3(497:546,686:744,235:260),phantom3(398:450,477:550,235:260));
CNR3 = [cnr1,cnr2,cnr3,cnr4,cnr5];
figure
boxplot(CNR3)
xlabel('Phantom3 - Number of inserts')
ylabel('Phantom3 - CNR of inserts')

%%%%%% phantom 4 %%%%%
contrast1 = contrast(phantom4(326:364,388:442,235:260),phantom4(398:450,477:550,235:260));
contrast2 = contrast(phantom4(488:532,292:341,235:260),phantom4(398:450,477:550,235:260));
contrast3 = contrast(phantom4(657:704,390:434,235:260),phantom4(398:450,477:550,235:260));
contrast4 = contrast(phantom4(663:711,584:638,235:260),phantom4(398:450,477:550,235:260));
contrast5 = contrast(phantom4(497:546,686:744,235:260),phantom4(398:450,477:550,235:260));

cnr1 = CNR(contrast1,phantom4(326:364,388:442,235:260),phantom4(398:450,477:550,235:260));
cnr2 = CNR(contrast2,phantom4(488:532,292:341,235:260),phantom4(398:450,477:550,235:260));
cnr3 = CNR(contrast3,phantom4(657:704,390:434,235:260),phantom4(398:450,477:550,235:260));
cnr4 = CNR(contrast4,phantom4(663:711,584:638,235:260),phantom4(398:450,477:550,235:260));
cnr5 = CNR(contrast5,phantom4(497:546,686:744,235:260),phantom4(398:450,477:550,235:260));
CNR4 = [cnr1,cnr2,cnr3,cnr4,cnr5];
figure
boxplot(CNR4)
xlabel('Phantom4 - Number of inserts')
ylabel('Phantom4 - CNR of inserts')

%%%%%% phantom 5 %%%%%
contrast1 = contrast(phantom5(326:364,388:442,235:260),phantom5(398:450,477:550,235:260));
contrast2 = contrast(phantom5(488:532,292:341,235:260),phantom5(398:450,477:550,235:260));
contrast3 = contrast(phantom5(657:704,390:434,235:260),phantom5(398:450,477:550,235:260));
contrast4 = contrast(phantom5(663:711,584:638,235:260),phantom5(398:450,477:550,235:260));
contrast5 = contrast(phantom5(497:546,686:744,235:260),phantom5(398:450,477:550,235:260));

cnr1 = CNR(contrast1,phantom5(326:364,388:442,235:260),phantom5(398:450,477:550,235:260));
cnr2 = CNR(contrast2,phantom5(488:532,292:341,235:260),phantom5(398:450,477:550,235:260));
cnr3 = CNR(contrast3,phantom5(657:704,390:434,235:260),phantom5(398:450,477:550,235:260));
cnr4 = CNR(contrast4,phantom5(663:711,584:638,235:260),phantom5(398:450,477:550,235:260));
cnr5 = CNR(contrast5,phantom5(497:546,686:744,235:260),phantom5(398:450,477:550,235:260));
CNR5 = [cnr1,cnr2,cnr3,cnr4,cnr5];
figure
boxplot(CNR5)
xlabel('Phantom5 - Number of inserts')
ylabel('Phantom5 - CNR of inserts')

%%%%%%% plot NPS %%%%%%%%%%
nps1 = NPS(phantom1(401:464,487:550,70:99),0.224609,0.224609);
nps2 = NPS(phantom2(401:464,487:550,70:99),0.224609,0.224609);
nps3 = NPS(phantom3(401:464,487:550,70:99),0.224609,0.224609);
nps4 = NPS(phantom4(401:464,487:550,70:99),0.224609,0.224609);
nps5 = NPS(phantom5(401:464,487:550,70:99),0.224609,0.224609);

figure; imshow(log(1+fftshift(abs(nps1))),[1 11]); title('NPS of phantom 1'); colorbar; colormap(hot); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)

figure; imshow(log(1+fftshift(abs(nps2))),[1 11]); title('NPS of phantom 2'); colorbar; colormap(hot); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)

figure; imshow(log(1+fftshift(abs(nps3))),[1 11]); title('NPS of phantom 3'); colorbar; colormap(hot); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)

figure; imshow(log(1+fftshift(abs(nps4))),[1 11]); title('NPS of phantom 4'); colorbar; colormap(hot); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)

figure; imshow(log(1+fftshift(abs(nps5))),[1 11]); title('NPS of phantom 5'); colorbar; colormap(hot); axis on
set(gca, 'XTick', [1 16 33 48 64]); set(gca,'XTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
xlabel('fx (/mm)')
set(gca, 'YTick', [1 16 33 48 64]); set(gca,'YTickLabel',{'-2.23','-1.18','0','1.18','2.23'});
ylabel('fy (/mm)')
colorbar; colormap(hot)
