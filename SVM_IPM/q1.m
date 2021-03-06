function result = q1(qn,C,ktype,kparam)
if qn == 'c'||qn == 'C'
    X= [-4.1627    2.8184
        -4.1511   15.1401
        -4.1107    7.5747
        -3.3916   -4.0829
        -2.6292    4.1026
        -1.8524    1.6038
        -1.6818   -1.9233
        -1.6249   -2.9506
        -1.5317    3.5494
        -1.4500    8.7706
        -1.1684    2.7350
        -0.7541    5.4540
        -0.4331   -4.3886
        -0.2014   12.6219
        0.0219    6.8061
        0.3577    3.3452
        4.4348    2.9846
        4.5012    9.5554
        4.6212    3.1468
        5.3644   12.8893
        5.4637    6.7232
        6.0807   13.8015
        6.3564    5.2710
        7.2699    8.0992
        7.7127   14.2844
        8.5131    2.9139
        8.9444    6.7403
        9.1075    0.5015
        12.9001    4.0976
        15.0565   14.0021]';
    Y =[ 1        -1        1        -1        1        1        1        1        1        1        1        1        1        1        1        1        -1        -1        -1        -1        -1        -1        -1        -1        -1        -1        -1        -1        -1        -1]';
elseif qn == 'a'||qn == 'A'
    X =[-15.6738    1.4885
        -15.0079   -2.6139
        -14.3576   -5.5521
        -13.9617    0.9660
        -13.1034    2.6069
        -12.4349    2.7076
        -11.7355   -0.2656
        -11.4862    0.0170
        -11.4615    1.3360
        -10.8039    2.5671
        -10.3526    1.3873
        -10.2719   -0.6463
        -10.1338    3.1736
        -10.1126    1.6368
        -9.4429    0.7760
        -9.0523   -0.1393
        -7.2429    0.5406
        -0.8606   14.6276
        -0.7727   10.0132
        2.1016   13.2808
        2.4757    9.8281
        3.4253    7.1400
        3.5665   13.7207
        3.8459   10.3861
        4.0317    4.2259
        4.1311   10.2018
        4.6003   12.1438
        6.6906   10.7475
        7.5823   12.4356
        9.3363    4.8559]';
    Y =[ -1    -1    -1    -1    -1    -1    -1    -1    -1    -1    -1    -1    -1    -1    -1    -1    -1     1     1     1     1     1     1     1   1     1     1     1     1     1]';
elseif qn == 'b' || qn == 'B'
    X=[-5.7372    0.5140
        -3.5954   -0.4023
        -3.3839   -0.4994
        -3.3800    1.9377
        -3.1856   -0.6786
        -2.8691   -0.0204
        -2.5845   -2.0836
        -2.5223   -4.3480
        -2.1030   -0.4279
        -1.9484   -0.7373
        -1.4579   -3.8079
        -1.3814    1.6893
        -0.7327   -0.3319
        -0.5018   -2.8760
        -0.1997   -1.0326
        0.3933    6.0639
        0.4188    0.7826
        0.4391   -3.0660
        1.0676    3.4055
        1.2403    2.6078
        1.3319   -3.1586
        1.9367    2.7786
        2.2560   -0.8004
        2.5231    6.1439
        3.4704    2.8516
        3.7011    4.4503
        3.9058    3.4989
        4.4085    1.1587
        4.9095    5.5029
        7.1229    4.9865]';
    Y =[-1    -1    -1    -1    -1     1    -1    -1    -1    -1    -1    -1    -1    -1    -1     1     1    -1     1     1     1     1     1     1     1     1     1     1     1     1]';
else
    disp('Please input homework number a,b,or c.')
end
    [R,IA,IC] = unique(X','rows');
    X = R';
    Y = Y(IA,:);
    sol = svm(X,Y,C,ktype,kparam);
    alpha = sol{1};
    b = sol{2};
    supvec = sol{3};
    ay = sol{4};
end