clear;

const;

%% f celu
f = @(x) objectiveFunctionMNK(x, satellitesXYZt, c);
options = optimoptions('lsqnonlin','Algorithm','levenberg-marquardt','FunctionTolerance',1e-6,'StepTolerance',1e-6);
x0 = [0 0 0];

[optim, resnorm] = lsqnonlin(f,x0,[],[],options);
[r, theta, fi] = rThetaFiRelativeTo(optim(1), optim(2), optim(3), R)