function varData = getvariance( mudata )
%getvariance Outputs a variance cell
varData = zeros(30,3)
for i=1:30
    mdata = mudata{i};
    varData(i,:) = var(mdata);
end
varData(:,4) = varData(:,1) + varData(:,2);

