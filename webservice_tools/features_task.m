function [ r ] = features_task( w, features_pid )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

r = 0;
function log(msg)
    w.log(features_pid, msg, 240);
end

features_tempdir = tempname;
c = onCleanup(@()cleanup(features_tempdir));

mkdir(features_tempdir);

bin_lid = strrep(lid(features_pid),'_features','');
upstream_lid = [bin_lid '.zip'];
namespace = regexprep(features_pid,'/[^/]+$','/');
features_file = [features_tempdir filesep bin_lid '_fea_v2.csv'];

bin_features(namespace, upstream_lid, [features_tempdir filesep]);

if exist(features_file,'file')
    log(['DEPOSITING ' features_pid]);
    r = w.deposit_product(features_pid, features_file);
    log(['DEPOSITED ' features_pid]);
else
    throw MException('ProductNotFound','bin_features produced no output')
end

end

function cleanup(features_tempdir)
    if exist(features_tempdir,'dir')
        rmdir(features_tempdir,'s');
    end
end
