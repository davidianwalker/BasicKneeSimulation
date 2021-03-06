dataDictionary = Simulink.data.dictionary.open('Data.sldd');
dataSection = getSection(dataDictionary, 'Design Data');

hipAngleStart = getEntry(dataSection, 'HipAngleStart_rad');
kneeActuatorSineAmplitude = getEntry(dataSection, 'KneeActuatorSineAmplitude');
kneeActuatorSineBias = getEntry(dataSection, 'KneeActuatorSineBias');
kneeActuatorSineFreq = getEntry(dataSection, 'KneeActuatorSineFreq');

setValue(hipAngleStart, 0);
setValue(kneeActuatorSineAmplitude, pi/4);
setValue(kneeActuatorSineBias, -pi/4);
setValue(kneeActuatorSineFreq, 2);

sim('LegWithSensors');
save_sim_data('seated_flexion.mat');
