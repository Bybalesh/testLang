PROGRAM ExampleProgram
VAR
    input1 AT %IX0.0 : BOOL;
    output1 AT %QX0.0 : BOOL;
END_VAR

IF input1 THEN
    output1 := TRUE;
ELSE
    output1 := FALSE;
END_IF

Object subclass: #Point
    instanceVariableNames: 'x y'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Geometry'.

Point class >> newX: anInteger Y: anotherInteger
    ^ self basicNew setX: anInteger setY: anotherInteger.

Point >> setX: anInteger
    x := anInteger.

Point >> setY: anInteger
    y := anInteger.

Point >> printOn: aStream
    aStream nextPutAll: '('.
    x printOn: aStream.
    aStream nextPutAll: ', '.
    y printOn: aStream.
    aStream nextPutAll: ')'.
