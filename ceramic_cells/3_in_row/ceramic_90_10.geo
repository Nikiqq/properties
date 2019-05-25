algebraic3d
solid box_1 = plane (0, 0, 0; 0, 0, -1) -bc = 18;
solid box_2 = plane (0, 0, 0; 0, -1, 0) -bc = 14;
solid box_3 = plane (0, 0, 0; -1, 0, 0) -bc = 16;
solid box_4 = plane (1, 1, 1; 0, 0, 1) -bc = 22;
solid box_5 = plane (1, 1, 1; 0, 1, 0) -bc = 15;
solid box_6 = plane (1, 1, 1; 1, 0, 0) -bc = 19;
solid cube = box_1 and box_2 and box_3 and box_4 and box_5 and box_6;

solid element0 =
plane (0.184413,0.202719,0.076701; 0.226285,0.974061,0)
   and plane (0.184413,0.202719,0.076701; 0.593167,-0,0.80508)
   and plane (0.184413,0.202719,0.076701; 1,0,-0)
   and plane (0.000000,0.245561,0.000000; 0,0,-1)
   and plane (0.000000,0.245561,0.000000; -1,-0,-0)
   and plane (0.000000,0.245561,0.191564; 8.76059e-16,0,1)
   and plane (0.184413,0.000000,0.076701; 0,-1,0)
;

solid element1 =
plane (0.675393,0.000000,0.000000; 1,-0,0)
   and plane (0.675393,0.000000,0.000000; 0,-1,0)
   and plane (0.675393,0.000000,0.000000; -0,0,-1)
   and plane (0.225393,0.000000,0.000000; -1,0,0)
   and plane (0.564026,0.392085,0.000000; 0.675203,0.737632,-0)
   and plane (0.564026,0.392085,0.000000; -0.488076,0.872801,-3.21431e-16)
   and plane (0.564026,0.392085,0.173065; 0.0412662,0.690949,0.721725)
   and plane (0.225393,0.000000,0.076701; -0.515555,-9.21611e-17,0.856857)
   and plane (0.642539,0.225884,0.327690; 0.664776,0,0.747043)
;

solid element2 =
plane (1.000000,0.000000,0.000000; -0,-0,-1)
   and plane (1.000000,0.000000,0.000000; 1,-0,0)
   and plane (1.000000,0.000000,0.000000; 0,-1,0)
   and plane (0.734413,0.290143,0.000000; -1,0,0)
   and plane (0.734413,0.290143,0.000000; 0,1,-0)
   and plane (0.734413,0.000000,0.298453; 0,0,1)
   and plane (0.734413,0.254460,0.298453; -0.526713,0.587837,0.614021)
;

solid element3 =
plane (0.177436,0.791733,0.266559; 0.721262,0.692662,-0)
   and plane (0.177436,0.791733,0.266559; -0,1,0)
   and plane (0.177436,0.791733,0.266559; 0,-0.20664,0.978417)
   and plane (0.000000,0.791733,0.000000; 0,0,-1)
   and plane (0.000000,0.791733,0.000000; -1,0,-0)
   and plane (0.000000,0.511871,0.000000; 0.75773,-0.652568,0)
;

solid element4 =
plane (0.535074,0.443860,0.000000; 0.989737,0.1429,-3.0537e-16)
   and plane (0.535074,0.443860,0.000000; 0.488076,-0.872801,7.94784e-17)
   and plane (0.535074,0.443860,0.000000; -0,0,-1)
   and plane (0.222986,0.746468,0.259187; 0.494032,0.869444,-1.52427e-16)
   and plane (0.222986,0.746468,0.259187; -0.75773,0.652568,0)
   and plane (0.222986,0.746468,0.259187; -0.238159,-1.45909e-05,0.971226)
   and plane (0.535074,0.443860,0.173065; 0.447277,0.136723,0.883883)
   and plane (0.040542,0.290710,0.191564; -0.176623,-0.760286,0.625116)
   and plane (0.040542,0.290710,0.191564; -0.226285,-0.974061,-3.68484e-17)
   and plane (0.040542,0.290710,0.191564; 0.17245,-0.847859,0.501394)
   and plane (0.012028,0.501513,0.000000; -1,6.53537e-17,-5.37347e-17)
;

solid element5 =
plane (1.000000,0.354619,0.000000; 0,-1,0)
   and plane (1.000000,0.354619,0.000000; -0,0,-1)
   and plane (1.000000,0.354619,0.000000; 1,0,0)
   and plane (0.727436,0.804619,0.110196; -0.86259,0.505903,-3.05163e-16)
   and plane (0.727436,0.804619,0.110196; -0.427162,0.562211,0.708132)
   and plane (0.727436,0.804619,0.110196; 0,1,0)
   and plane (0.603342,0.593033,0.161926; -0.650749,-0.0320358,0.758617)
   and plane (0.603342,0.593033,0.161926; -0.989737,-0.1429,4.1252e-17)
   and plane (1.000000,0.804619,0.255589; -3.80887e-16,0.53027,0.847829)
   and plane (1.000000,0.668514,0.340716; 2.7746e-16,-0.00470171,0.999989)
   and plane (0.623046,0.456561,0.173065; -0.675203,-0.737632,-0)
   and plane (0.819940,0.396778,0.339439; 1.58672e-16,-0.697054,0.717019)
;

solid element6 =
plane (0.000000,1.000000,0.347864; 0,0,1)
   and plane (0.000000,1.000000,0.347864; 0,1,0)
   and plane (0.000000,1.000000,0.347864; -1,0,-0)
   and plane (0.000000,1.000000,0.000000; 0,0,-1)
   and plane (0.177436,0.829599,0.000000; 1,2.84816e-16,1.75546e-17)
   and plane (0.177436,0.829599,0.000000; 0,-1,0)
   and plane (0.000000,0.829599,0.266559; 0,-0.701091,0.713072)
;

solid element7 =
plane (0.666866,0.840143,0.110196; 0.86259,-0.505903,0)
   and plane (0.666866,0.840143,0.110196; 1,0,0)
   and plane (0.666866,0.840143,0.110196; 0.600244,-3.20932e-16,0.799817)
   and plane (0.216866,1.000000,0.000000; -1,-0,-3.07238e-16)
   and plane (0.216866,1.000000,0.000000; 0,1,-0)
   and plane (0.216866,1.000000,0.000000; 0,0,-1)
   and plane (0.216866,0.912294,0.347864; -0.454377,2.42941e-16,0.890809)
   and plane (0.216866,0.912294,0.347864; -0.497311,-0.608247,0.618642)
   and plane (0.216866,0.829599,0.266559; -0.721262,-0.692662,-6.67576e-17)
   and plane (0.250389,0.794693,0.000000; -0.494032,-0.869444,1.5351e-15)
   and plane (0.228285,0.908882,0.353688; 0.0696859,-0.508796,0.858062)
;

solid element8 =
plane (1.000000,0.840143,0.000000; 0,-1,0)
   and plane (1.000000,0.840143,0.000000; -0,-0,-1)
   and plane (1.000000,0.840143,0.000000; 1,0,-4.55114e-26)
   and plane (0.727436,1.000000,0.000000; -1,-0,-0)
   and plane (0.727436,1.000000,0.000000; -7.37683e-25,1,-4.55114e-26)
   and plane (1.000000,0.840143,0.255589; 0,0,1)
   and plane (0.727436,1.000000,0.110196; -0.516524,0,0.856273)
;

solid element9 =
plane (0.051073,0.238936,0.222182; -0.17245,0.847859,-0.501394)
   and plane (0.051073,0.238936,0.222182; -0.593167,9.92058e-17,-0.80508)
   and plane (0.051073,0.238936,0.222182; -0.883637,2.27297e-15,0.468174)
   and plane (0.206971,0.202719,0.107319; 0.515555,1.37718e-16,-0.856857)
   and plane (0.262865,0.210577,0.621921; 0.299487,0.836447,0.458982)
   and plane (0.262865,0.210577,0.621921; -0.379729,0.871514,0.310274)
   and plane (0.274870,0.000000,0.644581; 0.354463,1.14737e-16,0.93507)
   and plane (0.274870,0.000000,0.644581; 0,-1,-0)
   and plane (0.624117,0.225884,0.358308; 0.908124,2.93953e-16,0.418701)
;

solid element10 =
plane (0.240306,0.210577,0.633873; 0.563233,0.778643,0.276558)
   and plane (0.240306,0.210577,0.633873; 0.883637,4.89461e-17,-0.468174)
   and plane (0.240306,0.210577,0.633873; 0,0.992258,0.124198)
   and plane (0.028514,0.000000,0.234134; 2.36323e-17,1.01727e-16,-1)
   and plane (0.028514,0.000000,0.234134; 0,-1,0)
   and plane (0.000000,0.000000,0.234134; -1,0,0)
   and plane (0.000000,0.000000,0.684134; -0,0,1)
   and plane (0.252311,0.000000,0.656533; 0.647988,-0,0.761651)
   and plane (0.042446,0.257319,0.260428; 0.176623,0.760286,-0.625116)
;

solid element11 =
plane (0.240306,0.262351,0.640354; 0.379729,-0.871514,-0.310274)
   and plane (0.240306,0.262351,0.640354; 0.924667,0.206558,0.319881)
   and plane (0.240306,0.262351,0.640354; -1.89166e-17,-0.992258,-0.124198)
   and plane (0.248641,0.725055,0.317477; 0.497311,0.608247,-0.618642)
   and plane (0.248641,0.725055,0.317477; 0.238159,1.45909e-05,-0.971226)
   and plane (0.000000,0.864068,0.396915; 1.03762e-16,0.701091,-0.713072)
   and plane (0.000000,0.864068,0.396915; -1,-0,0)
   and plane (0.000000,0.864068,0.396915; -1.85998e-15,0.862834,0.505488)
   and plane (0.219869,0.256060,0.690614; 0.558125,-0.591415,0.582)
   and plane (0.219869,0.256060,0.690614; 2.85965e-16,-0.712757,0.701411)
   and plane (0.186785,0.321354,0.756965; -1.0265e-16,0.157625,0.987499)
   and plane (0.000000,0.501512,0.256504; 3.55051e-16,0.20664,-0.978417)
;

solid element12 =
plane (0.740859,0.895725,0.749540; -0.404647,-2.38592e-14,0.914473)
   and plane (0.740859,0.895725,0.749540; 0.494978,-0.657994,0.567486)
   and plane (0.740859,0.895725,0.749540; 0.913082,0,0.407776)
   and plane (0.329813,0.976640,0.433091; -0.913297,0,0.407295)
   and plane (0.329813,0.976640,0.433091; -0.600244,0,-0.799817)
   and plane (0.329813,0.976640,0.433091; -0.549864,-0.742078,0.383366)
   and plane (0.419896,1.000000,0.607517; 0,1,0)
   and plane (0.700445,0.840143,0.154940; 0.427162,-0.562211,-0.708132)
   and plane (0.700445,0.840143,0.154940; 0.516524,0,-0.856273)
   and plane (0.705477,0.855606,0.733884; -0.207255,-0.576906,0.790079)
;

solid element13 =
plane (1.000000,0.000000,0.364777; -0,0,-1)
   and plane (1.000000,0.000000,0.364777; 1,-0,0)
   and plane (1.000000,0.000000,0.364777; 0,-1,0)
   and plane (0.819249,0.272563,0.814777; -0.518018,0.744866,0.420515)
   and plane (0.819249,0.272563,0.814777; 0,0,1)
   and plane (0.819249,0.272563,0.814777; -0,0.989502,0.144522)
   and plane (1.000000,0.290143,0.364777; 0,0.697054,-0.717019)
   and plane (0.769869,0.000000,0.814777; -0.835177,-4.48366e-16,0.549982)
   and plane (0.759323,0.287107,0.715193; -0.667164,0.744587,-0.0219454)
   and plane (0.734413,0.254460,0.364777; -0.664776,1.47033e-16,-0.747043)
   and plane (0.615583,0.154344,0.580486; -0.908124,2.00855e-16,-0.418701)
;

solid element14 =
plane (0.703992,0.348860,0.713373; 0.667164,-0.744587,0.0219454)
   and plane (0.703992,0.348860,0.713373; 0.979312,0.0419122,0.197967)
   and plane (0.703992,0.348860,0.713373; 0.362839,-0.0550246,0.930226)
   and plane (0.391555,0.961752,0.627276; 0.549864,0.742078,-0.383366)
   and plane (0.391555,0.961752,0.627276; -0,1,0)
   and plane (0.391555,0.961752,0.627276; 0.0743462,0.730943,0.678377)
   and plane (0.169904,0.697339,0.713995; -0.742212,0.63552,0.212688)
   and plane (0.169904,0.697339,0.713995; -0.924667,-0.206558,-0.319881)
   and plane (0.169904,0.697339,0.713995; -0.78249,-0.0323335,0.621823)
   and plane (0.658970,0.308968,0.728574; 0.0587374,-0.865474,0.497499)
   and plane (0.560252,0.216096,0.578666; -0.299487,-0.836447,-0.458982)
   and plane (0.572649,0.632319,0.249339; 0.650749,0.0320358,-0.758617)
   and plane (0.572649,0.632319,0.249339; -0.0696859,0.508796,-0.858062)
   and plane (0.293310,0.735033,0.332930; -0.447277,-0.136723,-0.883883)
   and plane (0.270645,0.266689,0.700870; -0.563233,-0.778643,-0.276558)
   and plane (0.264538,0.273788,0.713943; -0.531293,-0.734487,0.422204)
   and plane (0.567715,0.453837,0.237568; -0.0412662,-0.690949,-0.721725)
   and plane (0.718905,0.351895,0.362956; 0.526713,-0.587837,-0.614021)
;

solid element15 =
plane (0.767850,1.000000,0.761594; -0.765764,0,0.643122)
   and plane (0.767850,1.000000,0.761594; 0,1,-2.58494e-26)
   and plane (0.767850,1.000000,0.761594; -0.913082,-3.89547e-17,-0.407776)
   and plane (0.767850,0.895725,0.761594; 0,-0.884852,0.465872)
   and plane (0.930446,0.704038,0.397513; -0,-0.53027,-0.847829)
   and plane (1.000000,1.000000,0.312387; 0,0,-1)
   and plane (1.000000,1.000000,0.312387; 1,6.42932e-26,-3.38502e-26)
   and plane (1.000000,0.896143,0.762387; 0,0,1)
;

solid element16 =
plane (0.819940,0.396422,0.415127; 7.19971e-16,0.00470171,-0.999989)
   and plane (0.819940,0.396422,0.415127; 2.93473e-16,-0.989502,-0.144522)
   and plane (0.819940,0.396422,0.415127; -0.979312,-0.0419122,-0.197967)
   and plane (0.767850,0.859846,0.780484; -0.764751,0.533406,0.361434)
   and plane (0.767850,0.859846,0.780484; 6.52422e-16,0.884852,-0.465872)
   and plane (0.767850,0.859846,0.780484; -0.494978,0.657994,-0.567486)
   and plane (0.845417,0.354882,0.872140; 2.09451e-16,-0.935044,0.354531)
   and plane (0.845417,0.354882,0.872140; -2.43172e-18,0.0202867,0.999794)
   and plane (0.845417,0.354882,0.872140; -0.859063,-0.0925165,0.503439)
   and plane (1.000000,0.336684,0.824142; 1,-2.62098e-26,-1.77596e-26)
   and plane (1.000000,0.860263,0.781277; -9.92324e-17,0.827851,0.560948)
;

solid element17 =
plane (0.177436,1.000000,0.425168; 0.454377,3.42336e-15,-0.890809)
   and plane (0.177436,1.000000,0.425168; 0,0,-1)
   and plane (0.177436,1.000000,0.425168; 5.81546e-25,1,-1.66647e-25)
   and plane (0.312764,1.000000,0.591134; 0.913297,-1.95324e-15,-0.407295)
   and plane (0.312764,1.000000,0.591134; 0.742212,-0.63552,-0.212688)
   and plane (0.327401,1.000000,0.642212; 0.905926,-0,0.423436)
   and plane (0.000000,0.819580,0.875168; -8.25437e-16,-0.870234,0.492638)
   and plane (0.000000,0.819580,0.875168; -0,0,1)
   and plane (0.000000,0.819580,0.875168; -1,0,0)
   and plane (0.125235,0.735586,0.726795; 6.07362e-17,-0.862834,-0.505488)
;

solid element18 =
plane (0.219869,0.000000,0.741564; -0,-0,-1)
   and plane (0.219869,0.000000,0.741564; 1,0,-1.66031e-16)
   and plane (0.219869,0.000000,0.741564; 0,-1,0)
   and plane (0.219869,0.269580,0.849546; 0.531293,0.734487,-0.422204)
   and plane (0.219869,0.269580,0.849546; 0,1,0)
   and plane (0.219869,0.204286,0.741564; 0,0.712757,-0.701411)
   and plane (0.000000,0.000000,1.000000; -0,0,1)
   and plane (0.000000,0.000000,1.000000; -1,0,0)
;

solid element19 =
plane (0.718729,0.000000,0.848453; 0.835177,-1.27767e-16,-0.549982)
   and plane (0.718729,0.000000,0.848453; 1,-0,0)
   and plane (0.718729,0.000000,0.848453; 0,-1,0)
   and plane (0.311160,0.304187,1.000000; -0.632038,0.774938,0)
   and plane (0.311160,0.304187,1.000000; 0,0,1)
   and plane (0.311160,0.304187,1.000000; 0.159771,0.987154,-5.54547e-17)
   and plane (0.268729,0.000000,1.000000; -1,-1.2228e-16,3.29223e-15)
   and plane (0.663161,0.247216,0.764071; -0.0587374,0.865474,-0.497499)
   and plane (0.268729,0.000000,0.741564; -0.647988,2.50512e-16,-0.761651)
   and plane (0.268729,0.204286,0.741564; -0.558125,0.591415,-0.582)
   and plane (0.564443,0.000000,0.614163; -0.354463,1.37035e-16,-0.93507)
;

solid element20 =
plane (1.000000,0.000000,0.848453; -0,0,-1)
   and plane (1.000000,0.000000,0.848453; 1,-0,0)
   and plane (1.000000,0.000000,0.848453; 0,-1,0)
   and plane (1.000000,0.272563,0.848453; 2.86453e-17,0.935044,-0.354531)
   and plane (0.769869,0.238222,1.000000; -0.570953,0.820983,-6.08403e-17)
   and plane (0.769869,0.238222,1.000000; -1,0,0)
   and plane (0.769869,0.238222,1.000000; -0,0,1)
   and plane (0.845417,0.290762,0.896451; 0,1,-0)
;

solid element21 =
plane (0.263865,0.724561,0.925453; 0.78249,0.0323335,-0.621823)
   and plane (0.263865,0.724561,0.925453; 0.771122,0.636687,0)
   and plane (0.263865,0.724561,0.925453; 0.999991,-0.0043399,0)
   and plane (0.218516,0.779486,0.897864; 0,0.870234,-0.492638)
   and plane (0.218516,0.779486,0.897864; 0,1,0)
   and plane (0.000000,0.779486,0.897864; -1,-0,-0)
   and plane (0.125235,0.695493,0.749492; 0,-0.157625,-0.987499)
   and plane (0.000000,0.779486,1.000000; 0,0,1)
   and plane (0.000000,0.329486,0.807915; 0,-1,-0)
   and plane (0.219869,0.329486,0.849546; 0.632038,-0.774938,0)
;

solid element22 =
plane (0.777763,0.332216,0.848453; 0.518018,-0.744866,-0.420515)
   and plane (0.777763,0.332216,0.848453; 0.859063,0.0925165,-0.503439)
   and plane (0.777763,0.332216,0.848453; 0.570953,-0.820983,2.70652e-16)
   and plane (0.322379,0.724307,1.000000; -0.999991,0.0043399,2.27613e-18)
   and plane (0.322379,0.724307,1.000000; -5.7447e-25,-6.86985e-26,1)
   and plane (0.322379,0.724307,1.000000; -0.23956,0.970882,7.32687e-15)
   and plane (0.803931,0.350415,1.000000; 0.992925,0.11874,0)
   and plane (0.320815,0.363840,1.000000; -0.159771,-0.987154,3.25433e-16)
   and plane (0.322379,0.724307,0.925453; -0.362839,0.0550246,-0.930226)
   and plane (0.750118,0.800415,0.887321; 0.716872,0.697205,1.21231e-16)
   and plane (0.690124,0.812990,0.787259; 0.207255,0.576906,-0.790079)
;

solid element23 =
plane (1.000000,0.355376,0.896451; 0,-1,0)
   and plane (1.000000,0.355376,0.896451; -0,-0.0202867,-0.999794)
   and plane (1.000000,0.355376,0.896451; 1,-0,0)
   and plane (0.791603,0.805376,0.887321; -0.992925,-0.11874,-0)
   and plane (0.791603,0.805376,0.887321; 0,1,-0)
   and plane (0.845417,0.355376,1.000000; -0,0,1)
;

solid element24 =
plane (0.218516,0.819580,0.897864; 1,-0,0)
   and plane (0.218516,0.819580,0.897864; 0,-1,0)
   and plane (0.218516,0.819580,0.897864; -0,-0,-1)
   and plane (0.000000,1.000000,0.897864; -1,-0,-0)
   and plane (0.000000,1.000000,0.897864; 0,1,-0)
   and plane (0.000000,0.819580,1.000000; -0,0,1)
;

solid element25 =
plane (0.312424,0.764655,0.925453; -0.0743462,-0.730943,-0.678377)
   and plane (0.312424,0.764655,0.925453; 0.23956,-0.970882,1.64187e-16)
   and plane (0.312424,0.764655,0.925453; -0.771122,-0.636687,0)
   and plane (0.717075,0.864501,0.852287; 0.764751,-0.533406,-0.361434)
   and plane (0.717075,0.864501,0.852287; 1,-0,0)
   and plane (0.678481,0.854978,0.788014; 0.404647,-2.1907e-16,-0.914473)
   and plane (0.267074,0.819580,0.897864; -1,0,0)
   and plane (0.267074,0.819580,0.897864; -0.905926,-1.14984e-16,-0.423436)
   and plane (0.717075,0.864501,1.000000; 0,-0,1)
   and plane (0.267074,1.000000,1.000000; 0,1,0)
   and plane (0.717075,0.896143,0.805589; 0.765764,-1.54066e-16,-0.643122)
;

solid element26 =
plane (1.000000,0.840762,0.887321; -0,-0.827851,-0.560948)
   and plane (1.000000,0.840762,0.887321; 1,-0,0)
   and plane (1.000000,0.840762,0.887321; 0,-1,0)
   and plane (0.768516,1.000000,0.805589; -1,-0,-0)
   and plane (0.768516,1.000000,0.805589; 0,1,-0)
   and plane (0.768516,1.000000,0.805589; 0,0,-1)
   and plane (0.768516,0.864501,1.000000; -0.716872,-0.697205,-0)
   and plane (0.768516,0.864501,1.000000; -0,0,1)
;

solid rest = cube and not element0 and not element1 and not element2 and not element3 and not element4 and not element5 and not element6 and not element7 and not element8 and not element9 and not element10 and not element11 and not element12 and not element13 and not element14 and not element15 and not element16 and not element17 and not element18 and not element19 and not element20 and not element21 and not element22 and not element23 and not element24 and not element25 and not element26;

solid allElem = element0 or element1 or element2 or element3 or element4 or element5 or element6 or element7 or element8 or element9 or element10 or element11 or element12 or element13 or element14 or element15 or element16 or element17 or element18 or element19 or element20 or element21 or element22 or element23 or element24 or element25 or element26;

tlo rest -transparent -col=[0,0,1];

tlo allElem  -col=[1,0,0];