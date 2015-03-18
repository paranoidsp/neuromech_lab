function deltaVar = getDeltaVar( vardat )
%GETDELTAVAR Summary of this function goes here
%   Detailed explanation goes here
deltaVar = (vardat(:,4) - vardat(:,3))./vardat(:,4)
end

