for k = 1:numfiles
myfilename = sprintf('Data/data_%d.txt', k);
mydata{k} = importdata(myfilename);
end
for k=1:numfiles
mydata{k}(:,3) = mydata{k}(:,1) + mydata{k}(:,2);
end

data = Offset(mydata);
vardat = getvariance(data);
deltaVar = getDeltaVar(vardat);
% Here we plot all the data after offset correction
figure
hold on;
cellfun(@plot,data);
title('Average Time Series');
xlabel('Time')
ylabel('Force')

% Now plot variance data
figure
plot(vardat);
title('Variance Main Plot');
legend('var I','var M', 'var Ftot','var I + var M');
xlabel('Trial')
ylabel('Variance')

% Plotting Evar and varE separately
figure
plot(vardat(:,3:4))
title('Evar and varE plots')
legend('varE','Evar')
xlabel('Trial')
ylabel('Variance')

% Plot delta var
figure
plot(deltaVar)
title('Delta Var plot')
legend('delta var')
xlabel('Trial')
ylabel('Delta var')