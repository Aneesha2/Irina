
> str(prep)
>library(dplyr)
> pl<-tbl_df(prep)
> str(pl)
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	1015 obs. of  16 variables:
 $ clust                                                                   : Factor w/ 5 levels "1","2","3","4",..: 5 5 3 1 3 2 1 4 1 3 ...
 $ Did.you.pursue.further.training.after.placing.your.first.dental.implant.: Factor w/ 2 levels "No","Yes": 2 2 2 1 2 2 2 2 2 2 ...
 $ If.Yes..this.was..                                                      : Factor w/ 6 levels "CE","None","Other",..: 5 4 3 2 3 3 3 3 3 3 ...
 $ Didactic.Training                                                       : Factor w/ 2 levels "No","Yes": 2 2 2 2 2 2 2 2 2 2 ...
 $ Case.discussions                                                        : Factor w/ 2 levels "No","Yes": 2 2 2 2 2 2 2 2 2 2 ...
 $ Pre.clinical.lab                                                        : Factor w/ 2 levels "No","Yes": 2 2 2 1 2 2 1 2 1 1 ...
 $ Surgical.supervision                                                    : Factor w/ 2 levels "No","Yes": 2 2 2 2 2 2 1 2 2 2 ...
 $ Restorative.supervision                                                 : Factor w/ 2 levels "No","Yes": 2 2 2 2 1 2 1 2 1 2 ...
 $ Other.Training                                                          : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Clinical.examination                                                    : Factor w/ 2 levels "No","Yes": 2 2 2 2 2 2 2 2 2 2 ...
 $ X2D.radiographic.examination                                            : Factor w/ 2 levels "No","Yes": 1 2 2 2 2 2 2 1 1 1 ...
 $ X3D.radiographic.examination                                            : Factor w/ 2 levels "No","Yes": 2 2 2 2 2 2 2 2 2 2 ...
 $ Digital.Planning                                                        : Factor w/ 2 levels "No","Yes": 1 1 1 1 2 2 1 1 2 2 ...
 $ X3D.Printed.or.casted.models                                            : Factor w/ 2 levels "No","Yes": 1 2 1 1 1 1 1 1 2 1 ...
 $ Case.discussion.with.instructor.or.mentor                               : Factor w/ 2 levels "No","Yes": 2 2 2 2 2 2 2 2 2 2 ...
 $ Other.Preparation                                                       : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 2 1 1 1 ...


> table(pl$clust, pl$Did.you.pursue.further.training.after.placing.your.first.dental.implant)
   
     No Yes
  1  25  98
  2  27 219
  3  47 186
  4  36 164
  5  82 131
> chisq.test(pl$clust, pl$Did.you.pursue.further.training.after.placing.your.first.dental.implant)

	Pearson's Chi-squared test

data:  pl$clust and pl$Did.you.pursue.further.training.after.placing.your.first.dental.implant
X-squared = 54.6172, df = 4, p-value = 3.908e-11

> chisq.post.hoc(pl$clust, pl$Did.you.pursue.further.training.after.placing.your.first.dental.implant)
Error: could not find function "chisq.post.hoc"
> install.packages('fifer')
Installing package into ‘/Users/aneesha/Library/R/3.1/library’
(as ‘lib’ is unspecified)

  There is a binary version available (and will be installed) but
  the source version is later:
      binary source
fifer    1.0    1.1

trying URL 'http://ftp.iitm.ac.in/cran/bin/macosx/contrib/3.1/fifer_1.0.tgz'
Content type 'application/x-gzip' length 565343 bytes (552 KB)
opened URL
==================================================
downloaded 552 KB


The downloaded binary packages are in
	/var/folders/xz/pqrkyg5j63lcqtjkjtyvmm6c0000gn/T//RtmpT3g5Iy/downloaded_packages
> library(fifer)
Loading required package: xtable
> chisq.post.hoc(table(pl$clust, pl$Did.you.pursue.further.training.after.placing.your.first.dental.implant))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0176 0.0293
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.6611 0.7346
4     1 vs. 5 0.0006 0.0016
5     2 vs. 3 0.0076 0.0152
6     2 vs. 4 0.0402 0.0575
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.6248 0.7346
9     3 vs. 5 0.0000 0.0001
10    4 vs. 5 0.0000 0.0000

> table(pl$clust, pl$Didactic.Training)
   
     No Yes
  1  27  96
  2  38 208
  3  43 190
  4  44 156
  5  59 154
  > prop.table(table(pl$clust, pl$Didactic.Training),1)
   
           No       Yes
  1 0.2195122 0.7804878
  2 0.1544715 0.8455285
  3 0.1845494 0.8154506
  4 0.2200000 0.7800000
  5 0.2769953 0.7230047
  
  > chisq.test(pl$clust, pl$Didactic.Training)

	Pearson's Chi-squared test

data:  pl$clust and pl$Didactic.Training
X-squared = 11.4901, df = 4, p-value = 0.02157

> chisq.post.hoc(table(pl$clust, pl$Didactic.Training))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.1469 0.3673
2     1 vs. 3 0.4836 0.5373
3     1 vs. 4 1.0000 1.0000
4     1 vs. 5 0.2992 0.4987
5     2 vs. 3 0.3956 0.5003
6     2 vs. 4 0.0856 0.2853
7     2 vs. 5 0.0019 0.0187
8     3 vs. 4 0.4003 0.5003
9     3 vs. 5 0.0239 0.1194
10    4 vs. 5 0.2108 0.4215

> table(pl$clust, pl$Case.discussions)
   
     No Yes
  1  52  71
  2  91 155
  3 102 131
  4  90 110
  5 119  94
> chisq.test(pl$clust, pl$Case.discussions)

	Pearson's Chi-squared test

data:  pl$clust and pl$Case.discussions
X-squared = 17.0386, df = 4, p-value = 0.0019

> chisq.post.hoc(table(pl$clust, pl$Case.discussions))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.3648 0.5212
2     1 vs. 3 0.8225 0.8463
3     1 vs. 4 0.6461 0.8076
4     1 vs. 5 0.0177 0.0589
5     2 vs. 3 0.1368 0.2281
6     2 vs. 4 0.0994 0.1988
7     2 vs. 5 0.0001 0.0005
8     3 vs. 4 0.8463 0.8463
9     3 vs. 5 0.0136 0.0589
10    4 vs. 5 0.0304 0.0761

> table(pl$clust, pl$Pre.clinical.lab)
   
     No Yes
  1  58  65
  2 111 135
  3 120 113
  4 117  83
  5 147  66
> prop.table(table(pl$clust, pl$Pre.clinical.lab), 1)
   
           No       Yes
  1 0.4715447 0.5284553
  2 0.4512195 0.5487805
  3 0.5150215 0.4849785
  4 0.5850000 0.4150000
  5 0.6901408 0.3098592
  
  > chisq.test(pl$clust, pl$Pre.clinical.lab)

	Pearson's Chi-squared test

data:  pl$clust and pl$Pre.clinical.lab
X-squared = 31.6286, df = 4, p-value = 2.278e-06

> chisq.post.hoc(table(pl$clust, pl$Pre.clinical.lab))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.7402 0.7402
2     1 vs. 3 0.5038 0.5597
3     1 vs. 4 0.0512 0.0853
4     1 vs. 5 0.0001 0.0006
5     2 vs. 3 0.1709 0.2136
6     2 vs. 4 0.0057 0.0143
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.1480 0.2114
9     3 vs. 5 0.0002 0.0006
10    4 vs. 5 0.0313 0.0625

> table(pl$clust, pl$Surgical.supervision)
   
     No Yes
  1  56  67
  2  81 165
  3  94 139
  4  61 139
  5 129  84
  
  >  prop.table(table(pl$clust, pl$Surgical.supervision), 1)
   
           No       Yes
  1 0.4552846 0.5447154
  2 0.3292683 0.6707317
  3 0.4034335 0.5965665
  4 0.3050000 0.6950000
  5 0.6056338 0.3943662
  
  > chisq.test(pl$clust, pl$Surgical.supervision)

	Pearson's Chi-squared test

data:  pl$clust and pl$Surgical.supervision
X-squared = 50.258, df = 4, p-value = 3.19e-10

> chisq.post.hoc(table(pl$clust, pl$Surgical.supervision))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0222 0.0370
2     1 vs. 3 0.3678 0.4086
3     1 vs. 4 0.0086 0.0177
4     1 vs. 5 0.0089 0.0177
5     2 vs. 3 0.1066 0.1332
6     2 vs. 4 0.6103 0.6103
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0352 0.0503
9     3 vs. 5 0.0000 0.0001
10    4 vs. 5 0.0000 0.0000

> table(pl$clust, pl$Restorative.supervision)
   
     No Yes
  1  78  45
  2 122 124
  3 151  82
  4 113  87
  5 165  48
  
  > prop.table(table(pl$clust, pl$Restorative.supervision), 1)
   
           No       Yes
  1 0.6341463 0.3658537
  2 0.4959350 0.5040650
  3 0.6480687 0.3519313
  4 0.5650000 0.4350000
  5 0.7746479 0.2253521
  
  > chisq.test(pl$clust, pl$Restorative.supervision)

	Pearson's Chi-squared test

data:  pl$clust and pl$Restorative.supervision
X-squared = 41.1322, df = 4, p-value = 2.524e-08

> chisq.post.hoc(table(pl$clust, pl$Restorative.supervision))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0147 0.0244
2     1 vs. 3 0.8166 0.8166
3     1 vs. 4 0.2445 0.2717
4     1 vs. 5 0.0077 0.0153
5     2 vs. 3 0.0009 0.0029
6     2 vs. 4 0.1537 0.1921
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0929 0.1327
9     3 vs. 5 0.0035 0.0088
10    4 vs. 5 0.0000 0.0000

prop.table(table(pl$clust, pl$Other.Training), 1)
   
             No         Yes
  1 0.943089431 0.056910569
  2 0.991869919 0.008130081
  3 0.978540773 0.021459227
  4 0.995000000 0.005000000
  5 0.938967136 0.061032864

> > chisq.test(pl$clust, pl$Other.Training)

	Pearson's Chi-squared test

data:  pl$clust and pl$Other.Training
X-squared = 20.4264, df = 4, p-value = 0.0004113

Warning message:
In chisq.test(pl$clust, pl$Other.Training) :
  Chi-squared approximation may be incorrect
  
> chisq.post.hoc(table(pl$clust, pl$Other.Training))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0076 0.0190
2     1 vs. 3 0.1186 0.1977
3     1 vs. 4 0.0057 0.0189
4     1 vs. 5 1.0000 1.0000
5     2 vs. 3 0.2736 0.3420
6     2 vs. 4 1.0000 1.0000
7     2 vs. 5 0.0024 0.0120
8     3 vs. 4 0.2237 0.3196
9     3 vs. 5 0.0514 0.1029
10    4 vs. 5 0.0017 0.0120
> table(pl$clust, pl$Clinical.examination)
   
     No Yes
  1  23 100
  2  41 205
  3  44 189
  4  30 170
  5  93 120
> chisq.test(pl$clust, pl$Clinical.examination)

	Pearson's Chi-squared test

data:  pl$clust and pl$Clinical.examination
X-squared = 68.1286, df = 4, p-value = 5.635e-14

> chisq.post.hoc(table(pl$clust, pl$Clinical.examination))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.6626 0.7743
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.4397 0.7328
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.5512 0.7743
6     2 vs. 4 0.6968 0.7743
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.3075 0.6149
9     3 vs. 5 0.0000 0.0000
10    4 vs. 5 0.0000 0.0000
> > prop.table(table(pl$clust, pl$Clinical.examination), 1)
   
           No       Yes
  1 0.1869919 0.8130081
  2 0.1666667 0.8333333
  3 0.1888412 0.8111588
  4 0.1500000 0.8500000
  5 0.4366197 0.5633803

> table(pl$clust, pl$X2D.radiographic.examination )
   
     No Yes
  1  40  83
  2  83 163
  3  94 139
  4  87 113
  5 139  74
>    > chisq.test(pl$clust, pl$X2D.radiographic.examination )

	Pearson's Chi-squared test

data:  pl$clust and pl$X2D.radiographic.examination
X-squared = 57.489, df = 4, p-value = 9.769e-12

> prop.table(table(pl$clust, pl$X2D.radiographic.examination), 1)
   
           No       Yes
  1 0.3252033 0.6747967
  2 0.3373984 0.6626016
  3 0.4034335 0.5965665
  4 0.4350000 0.5650000
  5 0.6525822 0.3474178
  
> chisq.post.hoc(table(pl$clust, pl$X2D.radiographic.examination ))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.9068 0.9068
2     1 vs. 3 0.1679 0.2098
3     1 vs. 4 0.0604 0.1007
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.1554 0.2098
6     2 vs. 4 0.0396 0.0792
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.5578 0.6198
9     3 vs. 5 0.0000 0.0000
10    4 vs. 5 0.0000 0.0000

 table(pl$clust, pl$X3D.radiographic.examination )
   
     No Yes
  1  82  41
  2 140 106
  3 121 112
  4  89 111
  5 117  96
> prop.table(table(pl$clust, pl$X3D.radiographic.examination),1)
   
           No       Yes
  1 0.6666667 0.3333333
  2 0.5691057 0.4308943
  3 0.5193133 0.4806867
  4 0.4450000 0.5550000
  5 0.5492958 0.4507042
  
> chisq.test(pl$clust, pl$X3D.radiographic.examination )

	Pearson's Chi-squared test

data:  pl$clust and pl$X3D.radiographic.examination
X-squared = 16.5272, df = 4, p-value = 0.002387

> chisq.post.hoc(table(pl$clust, pl$X3D.radiographic.examination ))

Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0727 0.1211
2     1 vs. 3 0.0095 0.0339
3     1 vs. 4 0.0001 0.0014
4     1 vs. 5 0.0384 0.0775
5     2 vs. 3 0.3127 0.3908
6     2 vs. 4 0.0102 0.0339
7     2 vs. 5 0.7064 0.7064
8     3 vs. 4 0.1479 0.2113
9     3 vs. 5 0.5689 0.6321
10    4 vs. 5 0.0388 0.0775

> table(pl$clust, pl$Digital.Planning)
   
     No Yes
  1 104  19
  2 222  24
  3 198  35
  4 175  25
  5 173  40
> prop.table(table(pl$clust, pl$Digital.Planning))
   
    > prop.table(table(pl$clust, pl$Digital.Planning), 1)
   
            No        Yes
  1 0.84552846 0.15447154
  2 0.90243902 0.09756098
  3 0.84978541 0.15021459
  4 0.87500000 0.12500000
  5 0.81220657 0.18779343

    
    > chisq.post.hoc(table(pl$clust, pl$Digital.Planning))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.1223 0.3058
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.5051 0.5612
4     1 vs. 5 0.4613 0.5612
5     2 vs. 3 0.0950 0.3058
6     2 vs. 4 0.3655 0.5612
7     2 vs. 5 0.0067 0.0666
8     3 vs. 4 0.4873 0.5612
9     3 vs. 5 0.3121 0.5612
10    4 vs. 5 0.1042 0.3058

> chisq.test(pl$clust, pl$Digital.Planning)

	Pearson's Chi-squared test

data:  pl$clust and pl$Digital.Planning
X-squared = 8.4591, df = 4, p-value = 0.07614
> table(pl$clust, pl$X3D.Printed.or.casted.models)
   
     No Yes
  1 107  16
  2 221  25
  3 203  30
  4 177  23
  5 186  27
  > prop.table(table(pl$clust, pl$X3D.Printed.or.casted.models), 1)
   
           No       Yes
  1 0.8699187 0.1300813
  2 0.8983740 0.1016260
  3 0.8712446 0.1287554
  4 0.8850000 0.1150000
  5 0.8732394 0.1267606
  
  > chisq.test(pl$clust, pl$X3D.Printed.or.casted.models)

	Pearson's Chi-squared test

data:  pl$clust and pl$X3D.Printed.or.casted.models
X-squared = 1.2144, df = 4, p-value = 0.8757

> chisq.post.hoc(table(pl$clust, pl$X3D.Printed.or.casted.models))
Adjusted p-values used the fdr method.

   comparison  raw.p adj.p
1     1 vs. 2 0.4824     1
2     1 vs. 3 1.0000     1
3     1 vs. 4 0.7265     1
4     1 vs. 5 1.0000     1
5     2 vs. 3 0.3910     1
6     2 vs. 4 0.6489     1
7     2 vs. 5 0.4609     1
8     3 vs. 4 0.7689     1
9     3 vs. 5 1.0000     1
10    4 vs. 5 0.7640     1

> table(pl$clust, pl$Case.discussion.with.instructor.or.mentor)
   
     No Yes
  1  53  70
  2  65 181
  3  72 161
  4  47 153
  5 101 112
  
> prop.table(table(pl$clust, pl$Case.discussion.with.instructor.or.mentor),1)
           No       Yes
  1 0.4308943 0.5691057
  2 0.2642276 0.7357724
  3 0.3090129 0.6909871
  4 0.2350000 0.7650000
  5 0.4741784 0.5258216
> 

> chisq.post.hoc(table(pl$clust, pl$Case.discussion.with.instructor.or.mentor))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0014 0.0028
2     1 vs. 3 0.0265 0.0441
3     1 vs. 4 0.0003 0.0010
4     1 vs. 5 0.4956 0.5111
5     2 vs. 3 0.3120 0.3900
6     2 vs. 4 0.5111 0.5111
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.1051 0.1502
9     3 vs. 5 0.0004 0.0011
10    4 vs. 5 0.0000 0.0000
> chisq.test(table(pl$clust, pl$Case.discussion.with.instructor.or.mentor))

	Pearson's Chi-squared test

data:  table(pl$clust, pl$Case.discussion.with.instructor.or.mentor)
X-squared = 38.9103, df = 4, p-value = 7.27e-08


>  prop.table(table(pl$clust, pl$Other.Preparation),1)
   
            No        Yes
  1 0.92682927 0.07317073
  2 0.95121951 0.04878049
  3 0.98712446 0.01287554
  4 0.95500000 0.04500000
  5 0.96244131 0.03755869
  
> table(pl$clust, pl$Other.Preparation)
   
     No Yes
  1 114   9
  2 234  12
  3 230   3
  4 191   9
  5 205   8
> chisq.test(table(pl$clust, pl$Other.Preparation))

	Pearson's Chi-squared test

data:  table(pl$clust, pl$Other.Preparation)
X-squared = 8.5609, df = 4, p-value = 0.07306

Warning message:
In chisq.test(table(pl$clust, pl$Other.Preparation)) :
  Chi-squared approximation may be incorrect
> chisq.post.hoc(table(pl$clust, pl$Other.Preparation))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.3481 0.4974
2     1 vs. 3 0.0044 0.0444
3     1 vs. 4 0.3221 0.4974
4     1 vs. 5 0.1961 0.3922
5     2 vs. 3 0.0334 0.1668
6     2 vs. 4 1.0000 1.0000
7     2 vs. 5 0.6498 0.8122
8     3 vs. 4 0.0739 0.2465
9     3 vs. 5 0.1274 0.3185
10    4 vs. 5 0.8062 0.8958