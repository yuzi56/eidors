% Distmesh models $Id: common_models04.m 3886 2013-04-18 10:05:56Z aadler $
models = {'a2c2', 'a2d0c', 'a2d1c', 'a2d2c', 'a2d4c',  ...
          'b2c2', 'b2d0c', 'b2d1c', 'b2d2c', 'b2d4c',  ...
          'c2c2', 'c2d0c', 'c2d1c', 'c2d2c', 'c2d4c',  ...
          'd2c2', 'd2d0c', 'd2d1c', 'd2d2c', 'd2d4c',  ...
          'e2c2', 'e2d0c', 'e2d1c', 'e2d2c', 'e2d4c',  ...
          'f2c2', 'f2d0c', 'f2d1c', 'f2d2c', 'f2d4c',  ...
          'g2c2', 'g2d0c', 'g2d1c', 'g2d2c', 'g2d4c',  ...
          'h2c2', 'h2d0c', 'h2d1c', 'h2d2c', 'h2d4c',  ...
          'i2c2', 'i2d0c', 'i2d1c', 'i2d2c', 'i2d4c',  ...
          'j2c2', 'j2d0c', 'j2d1c', 'j2d2c', 'j2d4c'};

for i= 1:length(models);
   imdl=mk_common_model(models{i},8);
   clf; show_fem(imdl.fwd_model);
   axis image
   axis([0,1.05,-0.15,0.15]);
   print_convert(sprintf('common_models04_%s.png',models{i}), '-density 50');
end
