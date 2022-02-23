                                                                                                                      disp('Enter a system of three linear equations a11x+a12y+a13z = b1 a21x+a22y+a23z = b2 a31x+a32y+a33z = b3 in the form: gaussian(a11,a12,a13,b1,a21,a22,a23,b2,a31,a32,a33,b3)')

function [f] = gaussian(a11,a12,a13,b1,a21,a22,a23,b2,a31,a32,a33,b3)
    
    matrix = [a11 a12 a13 b1 ; a21 a22 a23 b2 ; a31 a32 a33 b3]
    disp(matrix)
    
    matrix(1,:) = matrix(1,:)/matrix(1,1)
    
    disp(matrix)
    
    matrix(2,:) = matrix(2,:)-matrix(1,:)*matrix(2,1)
    
    disp(matrix)
    
    
    matrix(3,:) = matrix(3,:)-matrix(1,:)*matrix(3,1)
    disp(matrix)
    
    matrix(2,:) = matrix(2,:)/matrix(2,2)
    
    disp(matrix)
    
    matrix(3,:) = matrix(3,:)-matrix(2,:)*matrix(3,2)
    disp(matrix)    
    
    matrix(3,:) = matrix(3,:)/matrix(3,3)
    disp(matrix)
    
    
    z = matrix(3,4);
    disp('z =', z)
    
    y = matrix(2,4)-z*matrix(2,3);
    disp('y =', y)
    
    x = matrix(1,4)-y*matrix(1,2)-z*matrix(1,3);
    disp('x =', x) 
    
    
    
    
    f = 'End';
endfunction
