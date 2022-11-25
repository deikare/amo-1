function [r, theta, fi] = rThetaFi(x, y, z)
r = sqrt(x^2+y^2+z^2);
theta = atand(y/x);
fi = asind(z/r);
end
