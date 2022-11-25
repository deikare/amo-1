function [r, theta, fi] = rThetaFiRelativeTo(x, y, z, R)
[r, theta, fi] = rThetaFi(x, y, z);
r = r - R;
end
