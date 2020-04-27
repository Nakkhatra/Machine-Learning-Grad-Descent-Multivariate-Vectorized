%Assumption of values for X,y,theta,num_iters and alpha

X=[1 1 3;1 3 2;1 2 5;1 4 1;1 1 6];
y=[7;9;15;11;12];
theta=[0;50;5.5]
num_iters=100;
alpha=0.01;


%main code

n=size(X,2)-1;
m = length(y); 
J_history = zeros(num_iters, 1);
J=0;

for iter = 1:num_iters
   delta=X'*((X*theta)-y);
   theta=theta-(alpha*(1/m)*delta);
   J=computeCostMulti(X,y,theta);
   J_history(iter)=J;
end;

iter=1:1:num_iters;
plot(iter',J_history)
    xlabel('No. of iterations')
    ylabel('Cost Function')
    title('Cost function vs iterations')
    print -dpng 'Costfunction_vs_iteration.png'

theta
J
