Set i /i1*i3/;
Alias (i,j);

Parameters
   c(i) /i1 2, i2 3, i3 4/
   A(i,j) /
      i1.i1 1, i1.i2 2, i1.i3 3
      i2.i1 4, i2.i2 5, i2.i3 6
      i3.i1 7, i3.i2 8, i3.i3 9
   /;

Variables
   x(i)  'decision variables'
   z     'objective function';

Equations
   obj   'objective function definition'
   con(i)'constraints';

obj.. z =e= sum(i, c(i)*x(i));
con(i).. sum(j, A(i,j)*x(j)) =g= 1;

Model simplemodel /all/;
Solve simplemodel using lp minimizing z;
Display x.l, z.l;
