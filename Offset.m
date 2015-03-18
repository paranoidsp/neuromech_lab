function offsetData = Offset( mudata )
%OFFSET Corrects the input data with the offset
%   This function basically just subtracts the average of the first 400
%   rows from all the other rows, and then returns the remaining 2000 rows.

for i=1:30
    mdata = mudata{i}
    offsetdata = zeros(2000,3)
    mean_data = mean(mdata(1:400,:));
    for k=401:2400
        arr = mdata(k,:) - mean_data;
        offsetdata(k - 400,:) = mdata(k,:) - mean_data;
    end
    offsetData{i} = offsetdata
end


end

