

load '/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/Manual_fromClass/D20140511T121935_IFCB014.mat'
IFCB_14_adcdata=load('/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/D20140511T121935_IFCB014.adc');

ciliate_sensitivity_ind=find(classlist(:,4)==1 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
mesodinium_sensitivity_ind=find(classlist(:,4)==6 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
tintinnid_sensitivity_ind=find(classlist(:,4)==19 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
laboea_sensitivity_ind=find(classlist(:,4)==4 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
proto_sensitivity_ind=find(classlist(:,2)==31 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
gyro_sensitivity_ind=find(classlist(:,2)==36 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);

load '/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/Manual_fromClass/D20140511T131409_IFCB014.mat'
IFCB_14_adcdata=load('/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/D20140511T131409_IFCB014.adc');

ciliate_sensitivity_ind_2=find(classlist(:,4)==1 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
mesodinium_sensitivity_ind_2=find(classlist(:,4)==6 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
tintinnid_sensitivity_ind_2=find(classlist(:,4)==19 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
laboea_sensitivity_ind_2=find(classlist(:,4)==4 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
proto_sensitivity_ind_2=find(classlist(:,2)==31 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
gyro_sensitivity_ind_2=find(classlist(:,2)==36 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);

ciliate_sensitivity_ind=[ciliate_sensitivity_ind_2; ciliate_sensitivity_ind];
mesodinium_sensitivity_ind=[mesodinium_sensitivity_ind_2; mesodinium_sensitivity_ind];
tintinnid_sensitivity_ind=[tintinnid_sensitivity_ind_2; tintinnid_sensitivity_ind];
laboea_sensitivity_ind=[laboea_sensitivity_ind_2; laboea_sensitivity_ind];
proto_sensitivity_ind=[proto_sensitivity_ind_2; proto_sensitivity_ind];
gyro_sensitivity_ind=[gyro_sensitivity_ind_2; gyro_sensitivity_ind];

load '/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/Manual_fromClass/D20140511T140453_IFCB014.mat'
IFCB_14_adcdata=load('/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/D20140511T140453_IFCB014.adc');

ciliate_sensitivity_ind_2=find(classlist(:,4)==1 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
mesodinium_sensitivity_ind_2=find(classlist(:,4)==6 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
tintinnid_sensitivity_ind_2=find(classlist(:,4)==19 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
laboea_sensitivity_ind_2=find(classlist(:,4)==4 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
proto_sensitivity_ind_2=find(classlist(:,2)==31 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
gyro_sensitivity_ind_2=find(classlist(:,2)==36 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);

ciliate_sensitivity_ind=[ciliate_sensitivity_ind_2; ciliate_sensitivity_ind];
mesodinium_sensitivity_ind=[mesodinium_sensitivity_ind_2; mesodinium_sensitivity_ind];
tintinnid_sensitivity_ind=[tintinnid_sensitivity_ind_2; tintinnid_sensitivity_ind];
laboea_sensitivity_ind=[laboea_sensitivity_ind_2; laboea_sensitivity_ind];
proto_sensitivity_ind=[proto_sensitivity_ind_2; proto_sensitivity_ind];
gyro_sensitivity_ind=[gyro_sensitivity_ind_2; gyro_sensitivity_ind];


load '/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/Manual_fromClass/D20140511T145608_IFCB014.mat'
IFCB_14_adcdata=load('/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/D20140511T145608_IFCB014.adc');

ciliate_sensitivity_ind_2=find(classlist(:,4)==1 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
mesodinium_sensitivity_ind_2=find(classlist(:,4)==6 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
tintinnid_sensitivity_ind_2=find(classlist(:,4)==19 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
laboea_sensitivity_ind_2=find(classlist(:,4)==4 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
proto_sensitivity_ind_2=find(classlist(:,2)==31 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
gyro_sensitivity_ind_2=find(classlist(:,2)==36 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);

ciliate_sensitivity_ind=[ciliate_sensitivity_ind_2; ciliate_sensitivity_ind];
mesodinium_sensitivity_ind=[mesodinium_sensitivity_ind_2; mesodinium_sensitivity_ind];
tintinnid_sensitivity_ind=[tintinnid_sensitivity_ind_2; tintinnid_sensitivity_ind];
laboea_sensitivity_ind=[laboea_sensitivity_ind_2; laboea_sensitivity_ind];
proto_sensitivity_ind=[proto_sensitivity_ind_2; proto_sensitivity_ind];
gyro_sensitivity_ind=[gyro_sensitivity_ind_2; gyro_sensitivity_ind];

load '/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/Manual_fromClass/D20140511T154719_IFCB014.mat'
IFCB_14_adcdata=load('/Users/markmiller/Documents/Experiments/IFCB_14/Microscopy_vs_Imager/5-11-14/D20140511T154719_IFCB014.adc');

ciliate_sensitivity_ind_2=find(classlist(:,4)==1 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
mesodinium_sensitivity_ind_2=find(classlist(:,4)==6 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
tintinnid_sensitivity_ind_2=find(classlist(:,4)==19 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
laboea_sensitivity_ind_2=find(classlist(:,4)==4 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
proto_sensitivity_ind_2=find(classlist(:,2)==31 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);
gyro_sensitivity_ind_2=find(classlist(:,2)==36 & IFCB_14_adcdata(:,9)> 0.012 & IFCB_14_adcdata(:,8)> 0.012);

ciliate_sensitivity_ind=[ciliate_sensitivity_ind_2; ciliate_sensitivity_ind];
mesodinium_sensitivity_ind=[mesodinium_sensitivity_ind_2; mesodinium_sensitivity_ind];
tintinnid_sensitivity_ind=[tintinnid_sensitivity_ind_2; tintinnid_sensitivity_ind];
laboea_sensitivity_ind=[laboea_sensitivity_ind_2; laboea_sensitivity_ind];
proto_sensitivity_ind=[proto_sensitivity_ind_2; proto_sensitivity_ind];
gyro_sensitivity_ind=[gyro_sensitivity_ind_2; gyro_sensitivity_ind];




