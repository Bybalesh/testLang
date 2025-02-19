AttachSpec("SpecField.spec");

F<x> := PolynomialRing(RationalField());
R<y> := PolynomialRing(F);
f := y^2 + x*y + 1;
K<a> := NumberField(f);

M := Matrix(K, [[a, 1], [1, a]]);
det_M := Determinant(M);
print det_M;
