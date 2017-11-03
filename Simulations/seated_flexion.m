dataDictionary = Simulink.data.dictionary.open('Data.sldd');
dataSection = getSection(dataDictionary, 'Design Data');

kneeAngleStart = getEntry(dataSection, 'KneeAngleStart_deg');
hipAngleStart = getEntry(dataSection, 'HipAngleStart_deg');
kneeActuatorSineAmplitude = getEntry(dataSection, 'KneeActuatorSineAmplitude');

setValue(kneeAngleStart, -90);
setValue(hipAngleStart, 0);
setValue(kneeActuatorSineAmplitude, 5);
