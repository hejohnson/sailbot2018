dx = 4.7; %in
m_boat = 85; %lbf

keel_length = 43; %in
keel_mass = 27; %lbf

rightingMomentHull = dx*m_boat;
rightingMomentKeel = keel_length*keel_mass*sind(25);

newKeelLength = (rightingMomentHull+rightingMomentKeel)/keel_mass/sind(25)