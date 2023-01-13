% https://la.mathworks.com/help/deeplearning/ref/feedforwardnet.html?s_tid=doc_ta

x = -1:0.05:1;
y = -0.5*x.^3+1*cos(x*5)+exp(x)-2;

figure; hold on;
plot(x,y,'x');

netconf = [10];
net = feedforwardnet(netconf);
% net = trainlm(net,x,y);  % Levenberg Marquardt
% net = traingd(net,x,y);  % Gradient Descent
net = traingdm(net,x,y); % Gradient Descent Momentum

net.trainparam.lr=0.5;
net.trainParam.epochs=5000;

y_pred = net(x);
plot(x,y_pred,'linewidth',0.5);
perf = perform(net,y_pred,y)
