agnes<-read.csv(file="/Users/aneesha/Desktop/irina/agnes.csv", row.names=1, header=TRUE)
> libray(FactoMineR)
Error: could not find function "libray"
> library(FactoMineR)
> res.mca<-MCA(agnes)
> plot.MCA(res.mca, invisible=c("ind", "var"))
> plot.MCA(res.mca, invisible=c("ind"))
> dimdesc(res.mca)
$`Dim 1`
$`Dim 1`$quali
                                 R2       p.value
Work.Experience          0.75067763 5.770226e-306
Age.Group                0.72494689 8.107189e-280
Time.of.First.implant    0.48906439 6.743240e-147
Professional.Setting     0.23286074  7.825342e-58
Setting.of.first.implant 0.21207565  5.734574e-51
Continent                0.14796272  1.448438e-31
Post.Graduate.Training   0.11068405  1.176302e-27
Practice.Type            0.10748978  1.023948e-25
Gender                   0.03525291  1.659005e-09

$`Dim 1`$category
                                        Estimate       p.value
0-3yrs                               0.611576320 2.818275e-173
0-2yrs                               0.586237336 9.552539e-117
Age.Group_<25                        0.970833499  3.757772e-68
Age.Group_25-30                      0.442369957  1.937710e-65
Professional.Setting_University      0.215498564  3.753948e-40
No PG training                       0.187499635  1.176302e-27
Post-Graduate Student                0.389808847  1.003557e-26
No.Information                       0.399021122  2.969021e-20
Continent_Africa                     0.305211089  8.168131e-16
at.University                        0.122142858  2.096148e-15
Female                               0.113606477  1.659005e-09
Professional.Setting_No Information  0.348502681  5.039736e-05
Continent_No information             1.325358050  1.973629e-04
3-5yrs                               0.065792652  3.360390e-03
Continent_Asia                      -0.098276732  4.810791e-03
Professional.Setting_Public         -0.115737388  1.966002e-04
3-9yrs                              -0.008443673  9.522280e-05
G.P.                                -0.209128528  2.622065e-06
Continent_Australasia               -0.677698622  2.767982e-08
Male                                -0.113606477  1.659005e-09
Continent_Europe                    -0.381728744  1.694824e-13
6-10yrs                             -0.221952317  2.750513e-22
PG training                         -0.187499635  1.176302e-27
Age.Group_>45                       -0.569959700  5.410060e-36
at.Private                          -0.345899782  1.977653e-42
>10                                 -0.430077672  1.518878e-49
Professional.Setting_Private        -0.448263857  5.231502e-50
Age.Group_36-45                     -0.422605441  1.150212e-67
>10yrs                              -0.603132648 4.538756e-191


$`Dim 2`
$`Dim 2`$quali
                                R2       p.value
Practice.Type            0.3713748 9.688467e-103
Post.Graduate.Training   0.3484093  2.543641e-96
Age.Group                0.3519220  1.660603e-92
Work.Experience          0.3110670  1.310818e-82
Time.of.First.implant    0.2251005  1.246927e-55
Setting.of.first.implant 0.1879460  2.100202e-44
Continent                0.1478684  1.529080e-31
Professional.Setting     0.1264844  1.865994e-29

$`Dim 2`$category
                                       Estimate      p.value
No PG training                       0.28567517 2.543641e-96
G.P.                                 0.29800446 5.371559e-87
>10                                  0.39907718 6.434025e-37
Age.Group_>45                        0.34177781 5.272433e-36
0-3yrs                               0.29353071 1.602904e-34
Continent_North America              0.66010944 1.174417e-23
Age.Group_<25                        0.30212031 6.332631e-21
Professional.Setting_No Information  0.78430489 2.715878e-14
No.Information                       0.23675530 7.594079e-13
at.Private                           0.03629704 1.236030e-10
>10yrs                               0.08509317 5.369543e-09
Continent_Australasia                0.31946895 2.195070e-08
0-2yrs                               0.02868041 8.742633e-04
Other                                0.10878339 9.486175e-03
Continent_No information             0.69961308 1.273067e-02
Age.Group_25-30                     -0.21610486 1.839115e-02
Continent_No Information            -0.97810971 1.394107e-02
6-10yrs                             -0.12622334 5.256086e-03
Professional.Setting_Public         -0.31796149 3.125622e-06
Continent_Asia                      -0.21455762 6.843737e-08
Professional.Setting_University     -0.37981382 3.119340e-11
Professional.Setting_Private        -0.08652958 3.743697e-13
3-5yrs                              -0.30153425 1.993338e-30
at.University                       -0.35607613 1.078266e-42
Age.Group_30-35                     -0.56236667 3.890377e-45
3-9yrs                              -0.37862387 7.849229e-75
Specialty                           -0.33795149 3.019053e-95
PG training                         -0.28567517 2.543641e-96


$`Dim 3`
$`Dim 3`$quali
                                 R2      p.value
Professional.Setting     0.31675993 3.409901e-83
Age.Group                0.28818212 4.416262e-72
Setting.of.first.implant 0.27190531 3.513428e-68
Work.Experience          0.25551848 1.439083e-65
Time.of.First.implant    0.18437604 1.984068e-44
Practice.Type            0.16719398 6.240103e-41
Continent                0.13889225 2.562809e-29
Post.Graduate.Training   0.08318535 6.761028e-21
Gender                   0.02521400 3.677519e-07

$`Dim 3`$category
                                         Estimate      p.value
Professional.Setting_University      0.1810460028 4.151622e-57
>10yrs                               0.2219370528 4.193337e-41
at.University                        0.1664105606 1.469187e-40
Specialty                            0.2032960294 1.272906e-38
>10                                  0.3345207544 5.924903e-32
PG training                          0.1275636192 6.761028e-21
Age.Group_<25                        0.1845795646 2.344139e-16
Other                                0.4399946537 1.602209e-15
Age.Group_>45                        0.0611771954 4.166264e-11
Professional.Setting_No Information  0.4011326995 1.744708e-08
Female                               0.0754001124 3.677519e-07
Continent_No information             1.2136988364 7.823648e-07
Continent_North America              0.0268874375 6.945392e-06
Continent_No Information             0.8751289621 1.268380e-04
Age.Group_No Information             0.5759928939 2.485856e-03
0-3yrs                               0.0661056401 3.030742e-02
0-2yrs                               0.0003565042 4.649552e-02
at.CE                               -0.1661423380 2.844654e-02
Continent_Africa                    -0.4139339232 1.787977e-02
Professional.Setting_Public         -0.1566648994 1.005391e-03
Continent_Australasia               -0.6236800853 3.615048e-05
Male                                -0.0754001124 3.677519e-07
Age.Group_30-35                     -0.3661709528 3.841580e-11
Continent_Asia                      -0.2283684553 5.783203e-12
Continent_Europe                    -0.4974430756 2.231816e-13
Age.Group_36-45                     -0.0123535586 5.178872e-17
No PG training                      -0.1275636192 6.761028e-21
3-5yrs                              -0.2559534095 5.019068e-25
Age.Group_25-30                     -0.4432251425 1.215797e-36
G.P.                                -0.1864748667 9.725213e-37
at.Private                          -0.2980548318 5.514888e-43
3-9yrs                              -0.2880426930 3.460415e-61
Professional.Setting_Private        -0.4255138029 1.562883e-65








> res.hcpc1 <- HCPC(res.mca, nb.clust=5)
> res.hcpc1$desc.axes
$quanti.var
            Eta2       P-value
Dim.1 0.77302761 2.470328e-323
Dim.2 0.64153235 3.229128e-223
Dim.5 0.50182545 3.830287e-151
Dim.3 0.45144037 4.654062e-130
Dim.4 0.04703603  6.718207e-10

$quanti
$quanti$`1`
          v.test Mean in category  Overall mean sd in category
Dim.5  15.839119        0.5093195  1.115974e-16      0.3758583
Dim.2  13.960174        0.5666067 -3.087808e-17      0.3545666
Dim.3   6.995748        0.2594782  2.842212e-18      0.3193057
Dim.1 -12.532876       -0.5923412 -2.597812e-19      0.2404415
      Overall sd      p.value
Dim.5  0.3802318 1.671449e-56
Dim.2  0.4799323 2.727681e-44
Dim.3  0.4385871 2.638472e-12
Dim.1  0.5588694 4.934019e-36

$quanti$`2`
          v.test Mean in category  Overall mean sd in category
Dim.3   3.253445        0.0792275  2.842212e-18      0.3103531
Dim.1 -17.026566       -0.5283406 -2.597812e-19      0.2103439
Dim.5 -17.345880       -0.3662026  1.115974e-16      0.2285301
      Overall sd      p.value
Dim.3  0.4385871 1.140147e-03
Dim.1  0.5588694 5.217764e-65
Dim.5  0.3802318 2.119088e-67

$quanti$`3`
          v.test Mean in category  Overall mean sd in category
Dim.4   6.195625        0.1394364  7.360184e-18      0.3729173
Dim.5   4.906756        0.1073370  1.115974e-16      0.2330683
Dim.2  -6.077974       -0.1678206 -3.087808e-17      0.2704470
Dim.3 -20.381654       -0.5142824  2.842212e-18      0.2213164
      Overall sd      p.value
Dim.4  0.3911872 5.805421e-10
Dim.5  0.3802318 9.259495e-07
Dim.2  0.4799323 1.217102e-09
Dim.3  0.4385871 2.432927e-92

$quanti$`4`
          v.test Mean in category  Overall mean sd in category
Dim.3  10.184919        0.2831772  2.842212e-18      0.3447958
Dim.5   5.423760        0.1307355  1.115974e-16      0.2487135
Dim.1   3.152439        0.1116868 -2.597812e-19      0.3103572
Dim.2 -19.884475       -0.6049771 -3.087808e-17      0.2172917
      Overall sd      p.value
Dim.3  0.4385871 2.315523e-24
Dim.5  0.3802318 5.835830e-08
Dim.1  0.5588694 1.619125e-03
Dim.2  0.4799323 5.546011e-88

$quanti$`5`
         v.test Mean in category  Overall mean sd in category
Dim.1 22.929682        0.7808844 -2.597812e-19      0.3031396
Dim.2 12.901748        0.3773175 -3.087808e-17      0.3080591
Dim.3  2.070496        0.0553361  2.842212e-18      0.4092733
Dim.4 -4.422760       -0.1054281  7.360184e-18      0.3434674
Dim.5 -4.805683       -0.1113479  1.115974e-16      0.2895064
      Overall sd       p.value
Dim.1  0.5588694 2.350422e-116
Dim.2  0.4799323  4.400026e-38
Dim.3  0.4385871  3.840596e-02
Dim.4  0.3911872  9.744795e-06
Dim.5  0.3802318  1.542243e-06
> res.hcpc$desc.var$test.chi2
                               p.value df
Work.Experience           0.000000e+00  4
Age.Group                9.390282e-230 10
Time.of.First.implant    3.904975e-120  6
Post.Graduate.Training    1.532073e-33  2
Setting.of.first.implant  1.182865e-19  8
Professional.Setting      2.803592e-19  6
Practice.Type             1.081294e-14  4
Continent                 4.136552e-11 14
Gender                    4.334080e-03  2



> res.hcpc$desc.var$category
$`1`
                                                        Cla/Mod
Work.Experience=>10yrs                               90.3981265
Age.Group=Age.Group_36-45                            87.2909699
Time.of.First.implant=>10                            96.1538462
Age.Group=Age.Group_>45                              94.0170940
Professional.Setting=Professional.Setting_Private    47.8260870
Setting.of.first.implant=at.Private                  51.5662651
Time.of.First.implant=6-10yrs                        61.9883041
Post.Graduate.Training=PG training                   47.2949389
Continent=Continent_Europe                           51.5695067
Practice.Type=G.P.                                   44.3243243
Gender=Male                                          42.5925926
Continent=Continent_Australasia                      65.6250000
Setting.of.first.implant=Other                       61.9047619
Continent=Continent_North America                    57.5757576
Setting.of.first.implant=at.CE                       30.3571429
Professional.Setting=Professional.Setting_Public     30.8900524
Gender=Female                                        32.5878594
Time.of.First.implant=3-5yrs                         32.0422535
Setting.of.first.implant=No.Information              22.1153846
Setting.of.first.implant=at.University               30.4093567
Continent=Continent_Africa                           13.3333333
Professional.Setting=Professional.Setting_University 21.6931217
Practice.Type=Post-Graduate Student                  15.4545455
Post.Graduate.Training=No PG training                29.4117647
Age.Group=Age.Group_<25                               1.2048193
Age.Group=Age.Group_30-35                            12.0772947
Time.of.First.implant=0-2yrs                         13.3663366
Work.Experience=0-3yrs                                1.1952191
Work.Experience=3-9yrs                                3.5608309
Age.Group=Age.Group_25-30                             0.3267974
                                                        Mod/Cla
Work.Experience=>10yrs                               96.2593516
Age.Group=Age.Group_36-45                            65.0872818
Time.of.First.implant=>10                            37.4064838
Age.Group=Age.Group_>45                              27.4314214
Professional.Setting=Professional.Setting_Private    74.0648379
Setting.of.first.implant=at.Private                  53.3665835
Time.of.First.implant=6-10yrs                        26.4339152
Post.Graduate.Training=PG training                   67.5810474
Continent=Continent_Europe                           28.6783042
Practice.Type=G.P.                                   61.3466334
Gender=Male                                          74.5635910
Continent=Continent_Australasia                       5.2369077
Setting.of.first.implant=Other                        6.4837905
Continent=Continent_North America                     4.7381546
Setting.of.first.implant=at.CE                        8.4788030
Professional.Setting=Professional.Setting_Public     14.7132170
Gender=Female                                        25.4364090
Time.of.First.implant=3-5yrs                         22.6932668
Setting.of.first.implant=No.Information               5.7356608
Setting.of.first.implant=at.University               25.9351621
Continent=Continent_Africa                            2.9925187
Professional.Setting=Professional.Setting_University 10.2244389
Practice.Type=Post-Graduate Student                   4.2394015
Post.Graduate.Training=No PG training                32.4189526
Age.Group=Age.Group_<25                               0.2493766
Age.Group=Age.Group_30-35                             6.2344140
Time.of.First.implant=0-2yrs                         13.4663342
Work.Experience=0-3yrs                                0.7481297
Work.Experience=3-9yrs                                2.9925187
Age.Group=Age.Group_25-30                             0.2493766
                                                        Global
Work.Experience=>10yrs                               42.068966
Age.Group=Age.Group_36-45                            29.458128
Time.of.First.implant=>10                            15.369458
Age.Group=Age.Group_>45                              11.527094
Professional.Setting=Professional.Setting_Private    61.182266
Setting.of.first.implant=at.Private                  40.886700
Time.of.First.implant=6-10yrs                        16.847291
Post.Graduate.Training=PG training                   56.453202
Continent=Continent_Europe                           21.970443
Practice.Type=G.P.                                   54.679803
Gender=Male                                          69.162562
Continent=Continent_Australasia                       3.152709
Setting.of.first.implant=Other                        4.137931
Continent=Continent_North America                     3.251232
Setting.of.first.implant=at.CE                       11.034483
Professional.Setting=Professional.Setting_Public     18.817734
Gender=Female                                        30.837438
Time.of.First.implant=3-5yrs                         27.980296
Setting.of.first.implant=No.Information              10.246305
Setting.of.first.implant=at.University               33.694581
Continent=Continent_Africa                            8.866995
Professional.Setting=Professional.Setting_University 18.620690
Practice.Type=Post-Graduate Student                  10.837438
Post.Graduate.Training=No PG training                43.546798
Age.Group=Age.Group_<25                               8.177340
Age.Group=Age.Group_30-35                            20.394089
Time.of.First.implant=0-2yrs                         39.802956
Work.Experience=0-3yrs                               24.729064
Work.Experience=3-9yrs                               33.201970
Age.Group=Age.Group_25-30                            30.147783
                                                           p.value
Work.Experience=>10yrs                               4.311667e-208
Age.Group=Age.Group_36-45                             2.382169e-94
Time.of.First.implant=>10                             8.766213e-61
Age.Group=Age.Group_>45                               4.508386e-40
Professional.Setting=Professional.Setting_Private     6.079732e-12
Setting.of.first.implant=at.Private                   7.203416e-11
Time.of.First.implant=6-10yrs                         7.979867e-11
Post.Graduate.Training=PG training                    6.412561e-09
Continent=Continent_Europe                            3.683488e-05
Practice.Type=G.P.                                    5.619035e-04
Gender=Male                                           2.503964e-03
Continent=Continent_Australasia                       2.823245e-03
Setting.of.first.implant=Other                        3.094951e-03
Continent=Continent_North America                     3.553459e-02
Setting.of.first.implant=at.CE                        3.460282e-02
Professional.Setting=Professional.Setting_Public      6.466147e-03
Gender=Female                                         2.503964e-03
Time.of.First.implant=3-5yrs                          2.307901e-03
Setting.of.first.implant=No.Information               8.368283e-05
Setting.of.first.implant=at.University                2.102548e-05
Continent=Continent_Africa                            1.677102e-08
Professional.Setting=Professional.Setting_University  1.126594e-08
Practice.Type=Post-Graduate Student                   9.189563e-09
Post.Graduate.Training=No PG training                 6.412561e-09
Age.Group=Age.Group_<25                               4.632011e-18
Age.Group=Age.Group_30-35                             7.102437e-22
Time.of.First.implant=0-2yrs                          4.816227e-47
Work.Experience=0-3yrs                                2.549828e-60
Work.Experience=3-9yrs                                6.144480e-74
Age.Group=Age.Group_25-30                             4.784669e-83
                                                         v.test
Work.Experience=>10yrs                                30.783844
Age.Group=Age.Group_36-45                             20.606855
Time.of.First.implant=>10                             16.447320
Age.Group=Age.Group_>45                               13.250061
Professional.Setting=Professional.Setting_Private      6.877769
Setting.of.first.implant=at.Private                    6.516360
Time.of.First.implant=6-10yrs                          6.500980
Post.Graduate.Training=PG training                     5.805627
Continent=Continent_Europe                             4.126486
Practice.Type=G.P.                                     3.449367
Gender=Male                                            3.022862
Continent=Continent_Australasia                        2.986355
Setting.of.first.implant=Other                         2.958146
Continent=Continent_North America                      2.102213
Setting.of.first.implant=at.CE                        -2.112976
Professional.Setting=Professional.Setting_Public      -2.723156
Gender=Female                                         -3.022862
Time.of.First.implant=3-5yrs                          -3.047452
Setting.of.first.implant=No.Information               -3.933600
Setting.of.first.implant=at.University                -4.253713
Continent=Continent_Africa                            -5.642385
Professional.Setting=Professional.Setting_University  -5.710478
Practice.Type=Post-Graduate Student                   -5.745047
Post.Graduate.Training=No PG training                 -5.805627
Age.Group=Age.Group_<25                               -8.662088
Age.Group=Age.Group_30-35                             -9.612187
Time.of.First.implant=0-2yrs                         -14.404956
Work.Experience=0-3yrs                               -16.382514
Work.Experience=3-9yrs                               -18.190440
Age.Group=Age.Group_25-30                            -19.305972

$`2`
                                                           Cla/Mod
Work.Experience=3-9yrs                                   93.768546
Age.Group=Age.Group_30-35                                85.507246
Time.of.First.implant=3-5yrs                             60.915493
Age.Group=Age.Group_25-30                                53.594771
Post.Graduate.Training=PG training                       43.455497
Practice.Type=Specialty                                  47.142857
Setting.of.first.implant=at.University                   43.567251
Professional.Setting=Professional.Setting_Public         46.596859
Continent=Continent_Africa                               51.111111
Setting.of.first.implant=at.CE                           48.214286
Setting.of.first.implant=at.Private                      33.253012
Time.of.First.implant=0-2yrs                             33.168317
Setting.of.first.implant=No.Information                  25.000000
Setting.of.first.implant=Other                           16.666667
Professional.Setting=Professional.Setting_No Information  0.000000
Continent=Continent_North America                         9.090909
Post.Graduate.Training=No PG training                    28.280543
Practice.Type=G.P.                                       29.009009
Age.Group=Age.Group_<25                                   2.409639
Age.Group=Age.Group_>45                                   2.564103
Time.of.First.implant=>10                                 3.205128
Work.Experience=0-3yrs                                    7.569721
Age.Group=Age.Group_36-45                                 9.364548
Work.Experience=>10yrs                                    9.133489
                                                            Mod/Cla
Work.Experience=3-9yrs                                   84.4919786
Age.Group=Age.Group_30-35                                47.3262032
Time.of.First.implant=3-5yrs                             46.2566845
Age.Group=Age.Group_25-30                                43.8502674
Post.Graduate.Training=PG training                       66.5775401
Practice.Type=Specialty                                  44.1176471
Setting.of.first.implant=at.University                   39.8395722
Professional.Setting=Professional.Setting_Public         23.7967914
Continent=Continent_Africa                               12.2994652
Setting.of.first.implant=at.CE                           14.4385027
Setting.of.first.implant=at.Private                      36.8983957
Time.of.First.implant=0-2yrs                             35.8288770
Setting.of.first.implant=No.Information                   6.9518717
Setting.of.first.implant=Other                            1.8716578
Professional.Setting=Professional.Setting_No Information  0.0000000
Continent=Continent_North America                         0.8021390
Post.Graduate.Training=No PG training                    33.4224599
Practice.Type=G.P.                                       43.0481283
Age.Group=Age.Group_<25                                   0.5347594
Age.Group=Age.Group_>45                                   0.8021390
Time.of.First.implant=>10                                 1.3368984
Work.Experience=0-3yrs                                    5.0802139
Age.Group=Age.Group_36-45                                 7.4866310
Work.Experience=>10yrs                                   10.4278075
                                                            Global
Work.Experience=3-9yrs                                   33.201970
Age.Group=Age.Group_30-35                                20.394089
Time.of.First.implant=3-5yrs                             27.980296
Age.Group=Age.Group_25-30                                30.147783
Post.Graduate.Training=PG training                       56.453202
Practice.Type=Specialty                                  34.482759
Setting.of.first.implant=at.University                   33.694581
Professional.Setting=Professional.Setting_Public         18.817734
Continent=Continent_Africa                                8.866995
Setting.of.first.implant=at.CE                           11.034483
Setting.of.first.implant=at.Private                      40.886700
Time.of.First.implant=0-2yrs                             39.802956
Setting.of.first.implant=No.Information                  10.246305
Setting.of.first.implant=Other                            4.137931
Professional.Setting=Professional.Setting_No Information  1.379310
Continent=Continent_North America                         3.251232
Post.Graduate.Training=No PG training                    43.546798
Practice.Type=G.P.                                       54.679803
Age.Group=Age.Group_<25                                   8.177340
Age.Group=Age.Group_>45                                  11.527094
Time.of.First.implant=>10                                15.369458
Work.Experience=0-3yrs                                   24.729064
Age.Group=Age.Group_36-45                                29.458128
Work.Experience=>10yrs                                   42.068966
                                                               p.value
Work.Experience=3-9yrs                                   2.107641e-171
Age.Group=Age.Group_30-35                                 1.089971e-59
Time.of.First.implant=3-5yrs                              1.362215e-22
Age.Group=Age.Group_25-30                                 6.836706e-13
Post.Graduate.Training=PG training                        6.037236e-07
Practice.Type=Specialty                                   9.856946e-07
Setting.of.first.implant=at.University                    1.672394e-03
Professional.Setting=Professional.Setting_Public          2.214906e-03
Continent=Continent_Africa                                4.012553e-03
Setting.of.first.implant=at.CE                            9.353054e-03
Setting.of.first.implant=at.Private                       4.842332e-02
Time.of.First.implant=0-2yrs                              4.820782e-02
Setting.of.first.implant=No.Information                   7.213643e-03
Setting.of.first.implant=Other                            4.131925e-03
Professional.Setting=Professional.Setting_No Information  1.522320e-03
Continent=Continent_North America                         3.194120e-04
Post.Graduate.Training=No PG training                     6.037236e-07
Practice.Type=G.P.                                        1.373011e-08
Age.Group=Age.Group_<25                                   5.374823e-15
Age.Group=Age.Group_>45                                   5.777536e-21
Time.of.First.implant=>10                                 4.776473e-27
Work.Experience=0-3yrs                                    2.387423e-33
Age.Group=Age.Group_36-45                                 4.712773e-36
Work.Experience=>10yrs                                    1.184941e-60
                                                             v.test
Work.Experience=3-9yrs                                    27.908439
Age.Group=Age.Group_30-35                                 16.293929
Time.of.First.implant=3-5yrs                               9.780732
Age.Group=Age.Group_25-30                                  7.182662
Post.Graduate.Training=PG training                         4.990022
Practice.Type=Specialty                                    4.894473
Setting.of.first.implant=at.University                     3.142976
Professional.Setting=Professional.Setting_Public           3.059792
Continent=Continent_Africa                                 2.877173
Setting.of.first.implant=at.CE                             2.598872
Setting.of.first.implant=at.Private                       -1.973634
Time.of.First.implant=0-2yrs                              -1.975532
Setting.of.first.implant=No.Information                   -2.686817
Setting.of.first.implant=Other                            -2.867910
Professional.Setting=Professional.Setting_No Information  -3.170395
Continent=Continent_North America                         -3.599025
Post.Graduate.Training=No PG training                     -4.990022
Practice.Type=G.P.                                        -5.676721
Age.Group=Age.Group_<25                                   -7.817815
Age.Group=Age.Group_>45                                   -9.393979
Time.of.First.implant=>10                                -10.769875
Work.Experience=0-3yrs                                   -12.032861
Age.Group=Age.Group_36-45                                -12.536514
Work.Experience=>10yrs                                   -16.429053

$`3`
                                                            Cla/Mod
Work.Experience=0-3yrs                                   91.2350598
Time.of.First.implant=0-2yrs                             53.4653465
Age.Group=Age.Group_<25                                  96.3855422
Post.Graduate.Training=No PG training                    42.3076923
Age.Group=Age.Group_25-30                                46.0784314
Professional.Setting=Professional.Setting_University     43.9153439
Setting.of.first.implant=No.Information                  52.8846154
Practice.Type=Post-Graduate Student                      40.9090909
Professional.Setting=Professional.Setting_No Information 71.4285714
Continent=Continent_Africa                               35.5555556
Gender=Female                                            28.7539936
Practice.Type=G.P.                                       26.6666667
Continent=Continent_South America                        36.5384615
Gender=Male                                              21.3675214
Continent=Continent_Australasia                           3.1250000
Continent=Continent_Europe                               13.9013453
Setting.of.first.implant=at.Private                      15.1807229
Practice.Type=Specialty                                  13.4285714
Age.Group=Age.Group_>45                                   3.4188034
Professional.Setting=Professional.Setting_Private        16.7471820
Time.of.First.implant=3-5yrs                              7.0422535
Time.of.First.implant=6-10yrs                             1.7543860
Time.of.First.implant=>10                                 0.6410256
Age.Group=Age.Group_30-35                                 2.4154589
Age.Group=Age.Group_36-45                                 3.3444816
Post.Graduate.Training=PG training                        9.2495637
Work.Experience=3-9yrs                                    2.6706231
Work.Experience=>10yrs                                    0.4683841
                                                            Mod/Cla
Work.Experience=0-3yrs                                   95.4166667
Time.of.First.implant=0-2yrs                             90.0000000
Age.Group=Age.Group_<25                                  33.3333333
Post.Graduate.Training=No PG training                    77.9166667
Age.Group=Age.Group_25-30                                58.7500000
Professional.Setting=Professional.Setting_University     34.5833333
Setting.of.first.implant=No.Information                  22.9166667
Practice.Type=Post-Graduate Student                      18.7500000
Professional.Setting=Professional.Setting_No Information  4.1666667
Continent=Continent_Africa                               13.3333333
Gender=Female                                            37.5000000
Practice.Type=G.P.                                       61.6666667
Continent=Continent_South America                         7.9166667
Gender=Male                                              62.5000000
Continent=Continent_Australasia                           0.4166667
Continent=Continent_Europe                               12.9166667
Setting.of.first.implant=at.Private                      26.2500000
Practice.Type=Specialty                                  19.5833333
Age.Group=Age.Group_>45                                   1.6666667
Professional.Setting=Professional.Setting_Private        43.3333333
Time.of.First.implant=3-5yrs                              8.3333333
Time.of.First.implant=6-10yrs                             1.2500000
Time.of.First.implant=>10                                 0.4166667
Age.Group=Age.Group_30-35                                 2.0833333
Age.Group=Age.Group_36-45                                 4.1666667
Post.Graduate.Training=PG training                       22.0833333
Work.Experience=3-9yrs                                    3.7500000
Work.Experience=>10yrs                                    0.8333333
                                                            Global
Work.Experience=0-3yrs                                   24.729064
Time.of.First.implant=0-2yrs                             39.802956
Age.Group=Age.Group_<25                                   8.177340
Post.Graduate.Training=No PG training                    43.546798
Age.Group=Age.Group_25-30                                30.147783
Professional.Setting=Professional.Setting_University     18.620690
Setting.of.first.implant=No.Information                  10.246305
Practice.Type=Post-Graduate Student                      10.837438
Professional.Setting=Professional.Setting_No Information  1.379310
Continent=Continent_Africa                                8.866995
Gender=Female                                            30.837438
Practice.Type=G.P.                                       54.679803
Continent=Continent_South America                         5.123153
Gender=Male                                              69.162562
Continent=Continent_Australasia                           3.152709
Continent=Continent_Europe                               21.970443
Setting.of.first.implant=at.Private                      40.886700
Practice.Type=Specialty                                  34.482759
Age.Group=Age.Group_>45                                  11.527094
Professional.Setting=Professional.Setting_Private        61.182266
Time.of.First.implant=3-5yrs                             27.980296
Time.of.First.implant=6-10yrs                            16.847291
Time.of.First.implant=>10                                15.369458
Age.Group=Age.Group_30-35                                20.394089
Age.Group=Age.Group_36-45                                29.458128
Post.Graduate.Training=PG training                       56.453202
Work.Experience=3-9yrs                                   33.201970
Work.Experience=>10yrs                                   42.068966
                                                               p.value
Work.Experience=0-3yrs                                   6.924249e-185
Time.of.First.implant=0-2yrs                              1.334683e-77
Age.Group=Age.Group_<25                                   3.408152e-51
Post.Graduate.Training=No PG training                     2.395493e-35
Age.Group=Age.Group_25-30                                 1.208827e-26
Professional.Setting=Professional.Setting_University      5.600062e-12
Setting.of.first.implant=No.Information                   8.267898e-12
Practice.Type=Post-Graduate Student                       2.017304e-05
Professional.Setting=Professional.Setting_No Information  2.058601e-04
Continent=Continent_Africa                                7.648713e-03
Gender=Female                                             1.158203e-02
Practice.Type=G.P.                                        1.275230e-02
Continent=Continent_South America                         3.238751e-02
Gender=Male                                               1.158203e-02
Continent=Continent_Australasia                           1.879780e-03
Continent=Continent_Europe                                5.802352e-05
Setting.of.first.implant=at.Private                       8.079184e-08
Practice.Type=Specialty                                   1.030738e-08
Age.Group=Age.Group_>45                                   3.074904e-10
Professional.Setting=Professional.Setting_Private         1.430848e-10
Time.of.First.implant=3-5yrs                              4.529951e-17
Time.of.First.implant=6-10yrs                             3.063725e-18
Time.of.First.implant=>10                                 4.978071e-19
Age.Group=Age.Group_30-35                                 1.029899e-20
Age.Group=Age.Group_36-45                                 2.186945e-28
Post.Graduate.Training=PG training                        2.395493e-35
Work.Experience=3-9yrs                                    1.037964e-35
Work.Experience=>10yrs                                    1.827415e-64
                                                             v.test
Work.Experience=0-3yrs                                    28.998241
Time.of.First.implant=0-2yrs                              18.647039
Age.Group=Age.Group_<25                                   15.050852
Post.Graduate.Training=No PG training                     12.406969
Age.Group=Age.Group_25-30                                 10.684048
Professional.Setting=Professional.Setting_University       6.889470
Setting.of.first.implant=No.Information                    6.833827
Practice.Type=Post-Graduate Student                        4.262967
Professional.Setting=Professional.Setting_No Information   3.711715
Continent=Continent_Africa                                 2.667196
Gender=Female                                              2.524630
Practice.Type=G.P.                                         2.490613
Continent=Continent_South America                          2.139595
Gender=Male                                               -2.524630
Continent=Continent_Australasia                           -3.108597
Continent=Continent_Europe                                -4.020708
Setting.of.first.implant=at.Private                       -5.365351
Practice.Type=Specialty                                   -5.725592
Age.Group=Age.Group_>45                                   -6.294954
Professional.Setting=Professional.Setting_Private         -6.412572
Time.of.First.implant=3-5yrs                              -8.398298
Time.of.First.implant=6-10yrs                             -8.709072
Time.of.First.implant=>10                                 -8.912753
Age.Group=Age.Group_30-35                                 -9.332924
Age.Group=Age.Group_36-45                                -11.050213
Post.Graduate.Training=PG training                       -12.406969
Work.Experience=3-9yrs                                   -12.473770
Work.Experience=>10yrs                                   -16.953044
