% Abdomen Images  $Id: tutorial410b.m 4839 2015-03-30 07:44:50Z aadler $

load montreal_data_1995
imdl.hyperparameter.value=.2;
vh= zc_h_stomach_pre; % abdomen before fluid
vi= zc_stomach_0_5_60min; % each 5 minutes after drink
img= inv_solve(imdl, vh, vi);

clf; show_slices(img)
axis equal

print_convert tutorial410b.png;
