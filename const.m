R = 6378137;
c = physconst('LightSpeed');

%szerokość, długość, wysokość, czas
satellites = [52.885907, 13.395837, 20000000, 6.678346135930244e-02; ...
    50.312052, 12.373351, 20000000, 6.679806645887922e-02; ...
    47.796902, 19.381854, 20000000, 6.675816131237221e-02; ...
    50.619584, 26.244260, 20000000, 6.679364602782675e-02; ...
    55.488272, 28.787526, 20000000, 6.692965535583094e-02];

[nSat, nFields] = size(satellites);


% x, y, z, czas
satellitesXYZt = zeros(nSat, nFields);
satellitesXYZt(:, 4) = satellites(:, 4);

for i = 1:nSat
    r = R + satellites(i, 3);
    theta = satellites(i, 1);
    fi = satellites(i, 2);

    satellitesXYZt(i, 1:3) = xyz(r, theta, fi);
end