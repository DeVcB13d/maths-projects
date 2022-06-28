V = input("Enter a matrix : ");
%V = [2,1,0,-1;1,0,2,-1;0,-2,1,0];
V = V';
[m,n] = size(V);
V1 = zeros(m,n);
V2 = zeros(m,n);
for i = 1:n
    r = V(:,i);
    for j = 1:i-1
        %Subtracting the dot pdt of rows before it
        f = sum(V(:,i).*V(:,j))/(sum(V(:,i).*V(:,i)));
        r = r - f*V1(:,j);
    end
    V1(:,i) = r;
    % Getting Normal vector from orthogonal
    V2(:,i) = V1(:,i)/sqrt(sum(V1(:,i).*V1(:,i)));
end
disp("Input Matrix")
disp(V)
disp("Orthonormal Matrix : ")
disp(V2)
disp("Orthogonal Matrix : ")
disp(V1)

