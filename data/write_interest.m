clc 
clear all
fid = fopen('interest.txt','w');
unused = 0;
point1 = 0;
point2 = 0;
for i = 1:1:256
    fprintf(fid,'%d %d %d %d %d %d\n',0,1,1,1,1,0);
end
for i = 257:1:512
    fprintf(fid,'%d %d %d %d %d %d\n',1,1,1,1,1,0);
end
fclose(fid);