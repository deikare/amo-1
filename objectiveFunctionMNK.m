function f = objectiveFunctionMNK(x, satellitesXYZt, c)
f = 0;
[nSat, nFields] = size(satellitesXYZt);
for i = 1:nSat
    tmp = 0;
    for j = 1:nFields - 1
        tmp = tmp + (satellitesXYZt(i, j) - x(j))^2;
        f = f + tmp;
    end
    tmp = tmp - c^2 * (satellitesXYZt(i, 4))^2;
    f = f + tmp^2;
end
end
