function [x, y, z] = xyz(r, theta, fi)
    x = r * cosd(theta) * cosd(fi);
    y = r * cos(theta) * sin(fi);
    z = r * sin(theta);
end

