%%
%Creating the Transfer function
num = [1 0];
den = [1 3 2];

G = tf(num, den);

%%
%Plotting the system from the transfer function
subplot(3,1,1);

%Making a plot due to a step input
step(G);

%%
%Making a plot due to an impulse input
subplot(3,1,2);
impulse(G);

%%
%Plot due to an arbitrary function
%A sinusoidal input signal u
subplot(3,1,3);
t = 0: 0.01: 4;
u = sin(10*t);
lsim(G, u,t);