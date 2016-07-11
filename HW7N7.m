clc; clear;

counter = 0;
for i = 1:size(A,1)-2
    for j = 2:size(A,2)
        if A(i,j) == 1
            if A(i+1,j-1) == 1
                if A(i+1,j) == 1
                    if A(i+2,j) == 1
                        counter = counter + 1;
                    end
                end
            end
        end
    end
end
counter