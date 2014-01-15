%resultpath = '\\mellon\saltpond\manualclassify\';
resultpath = '\\queenrose\IFCB014_OkeanosExplorerAug2013\data\Manual_fromClass\';
urlbase = 'http://ifcb-data.whoi.edu/saltpond/';
urlbase = 'http://ifcb-data.whoi.edu/OkeanosExplorerAug2013_IFCB014/';
filelist = dir([resultpath 'D*.mat']);

%calculate date
matdate = IFCB_file2date({filelist.name});

load([resultpath filelist(1).name]) %read first file to get classes
numclass1 = length(class2use_manual);
numclass2 = length(class2use_sub4);
numclass = numclass1 + numclass2;
class2use_manual_first = class2use_manual;
class2use_first_sub = class2use_sub4;
class2use_here = [class2use_manual_first class2use_sub4];
classcount = NaN(length(filelist),numclass);  %initialize output
ml_analyzed = NaN(length(filelist),1);


for filecount = 1:length(filelist),
    filename = filelist(filecount).name;
    disp(filename)
    hdrname = [urlbase regexprep(filename, 'mat', 'hdr')]; 
    ml_analyzed(filecount) = IFCB_volume_analyzed(hdrname);
    load([resultpath filename])
%     if ~isequal(class2use_manual, class2use_manual_first)
%             disp('class2use_manual does not match previous files!!!')
%     end;
    temp = zeros(1,numclass);
    for classnum = 1:numclass1,
                temp(classnum) = size(find(classlist(:,2) == classnum | (isnan(classlist(:,2)) & classlist(:,3) == classnum)),1);
    end;
       
% if exist('class2use_sub4', 'var'),
%              if ~isequal(class2use_sub4, class2use_first_sub)
%                 disp('class2use_sub4 does not match previous files!!!')
%                 keyboard
%             end;
            for classnum = 1:numclass2,
                temp(classnum+numclass1) = size(find(classlist(:,4) == classnum),1);
            end;
       
        classcount((filecount),:) = temp;
        
    end;

clear class2use_manual class2use_auto class2use_sub* classlist
class2use = class2use_here;
if ~exist([resultpath 'summary\'], 'dir')
    mkdir([resultpath 'summary\'])
end;
datestr = date; datestr = regexprep(datestr,'-','');
save([resultpath 'summary\count_manual_' datestr], 'matdate', 'ml_analyzed', 'classcount', 'filelist', 'class2use')


% figure %example
% classnum = 1;
% plot(matdate, classcount(:,classnum)./ml_analyzed, '.-')
% datetick('x')
% ylabel([class2use{classnum} ' (mL^{-1})'])

