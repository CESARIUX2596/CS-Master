x = 0:0.01:10;
y = x.^3;

network = newff(minmax(x),[20,1],{'logsig','purelin','trainln'});

network.trainparam.epochs = 4000;

network.trainparam.goal = 1e-25;
network.trainparam.lr = 0.01;

network = train(network,x,y);