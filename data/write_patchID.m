clc 
clear all
fid = fopen('m50_256_256.txt','w');
unused = 0;
point1 = 0;
point2 = 0;
for i = 0:1:255
    patch_id1 = i;
    patch_id2 = i+256;
    fprintf(fid,'%d %d %d %d %d %d\n',patch_id1,point1,unused,patch_id2,point2,unused);
end
fclose(fid);

 