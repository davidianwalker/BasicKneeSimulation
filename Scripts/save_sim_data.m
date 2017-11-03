% Stores the variables in "keys" to the simData struct and then writes the
% simData struct to a file.
simData = Simulink.SimulationData.Dataset;

keys = { ...
    'Goniometer' ...
    'FN_Acc_X', 'FN_Acc_Y', 'FN_Acc_Z' ... 
    'FN_Gyr_X', 'FN_Gyr_Y', 'FN_Gyr_Z' ...
    'SN_Acc_X', 'SN_Acc_Y', 'SN_Acc_Z' ...
    'SN_Gyr_X', 'SN_Gyr_Y', 'SN_Gyr_Z' ...
};

for key = keys
    varName = key{1};
    variable = eval(varName);
    
    simData = addElement(simData, variable, varName);
end

dataFile = 'seated-knee-raise';
saveFilename = strcat(dataFile, '.mat');
fprintf('Saving \"%s\"...\n', saveFilename);
save(saveFilename, 'simData');
