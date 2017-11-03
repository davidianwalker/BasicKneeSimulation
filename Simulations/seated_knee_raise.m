dataDictionary = Simulink.data.dictionary.open('Data.sldd');
dataSection = getSection(dataDictionary, 'Design Data');
kneeAngleInitial = getEntry(dataSection, 'KneeAngleStart_deg');
KneeActuatorSineAmplitude = getEntry(dataSection, 'KneeActuatorSineAmplitude');

setValue(kneeAngleInitial, -90);
setValue(KneeActuatorSineAmplitude, 0.1);
