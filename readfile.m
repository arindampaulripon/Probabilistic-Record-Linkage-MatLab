function [a3] = readfile(filename, startRow, endRow)
delimiter = ',';
if nargin<=2
    startRow = 2;
    endRow = inf;
end

formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';


fileID = fopen(filename,'r');


dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines', startRow(block)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end


fclose(fileID);

a3 = [dataArray{1:end-1}];
end