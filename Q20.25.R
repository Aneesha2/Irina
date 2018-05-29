>  pl2<-read.csv(file="/Users/aneesha/Desktop/1016.Q15.on.csv", row.names=1, header=TRUE)
> 
> pl2<-tbl_df(pl2)
Error: could not find function "tbl_df"
> ibrary('dplyr')
Error: could not find function "ibrary"
> library('dplyr')

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> pl2<-tbl_df(pl2)
> str(pl2)
Classes ‘tbl_df’, ‘tbl’ and 'data.frame':	1015 obs. of  26 variables:
 $ clust                                                                   : int  3 3 3 3 1 2 3 3 1 5 ...
 $ Did.you.pursue.further.training.after.placing.your.first.dental.implant.: Factor w/ 2 levels "No","Yes": 1 2 1 2 2 2 2 2 1 1 ...
 $ If.Yes..this.was..                                                      : Factor w/ 6 levels "CE","None","Other",..: 2 3 2 3 3 3 3 3 2 2 ...
 $ Supervision.first.implant                                               : Factor w/ 7 levels "1on1","Multiple",..: 1 1 1 2 2 2 1 1 1 2 ...
 $ Setting.first.implant                                                   : Factor w/ 5 levels "CE","No.information",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Duration.Proc                                                           : Factor w/ 5 levels "1.to.2.hr","2.to.3.hr",..: 1 1 3 2 3 3 3 3 3 1 ...
 $ Area                                                                    : Factor w/ 3 levels "Multiple.implant",..: 3 3 3 1 3 3 3 3 3 3 ...
 $ Surgical.Guide                                                          : Factor w/ 3 levels "","No","Yes": 2 2 2 3 2 2 2 2 2 2 ...
 $ Challenge                                                               : Factor w/ 9 levels "","Anasthesia",..: 7 3 7 3 3 7 3 7 2 3 ...
 $ Restoration.type                                                        : Factor w/ 5 levels "5","Cem.ret.cr",..: 3 3 2 4 2 3 2 2 2 3 ...
 $ No.complications                                                        : Factor w/ 2 levels "No","Yes": 1 2 2 2 2 2 2 2 2 2 ...
 $ Over.prepared.osteotomy                                                 : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Under.prepared.osteotomy                                                : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Inappropriate.implant.positioning                                       : Factor w/ 2 levels "No","Yes": 2 1 1 1 1 1 1 1 1 1 ...
 $ Difficulties.in.flap.design.closure                                     : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Wrong.sequence.of.drills                                                : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Other.Complication                                                      : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Reflection                                                              : Factor w/ 4 levels "Ad.prep","No.information",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Formal.mentor                                                           : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ If.Yes..this.was...1                                                    : Factor w/ 7 levels "Assoc","No.information",..: 3 3 3 3 3 3 3 3 3 3 ...
 $ Advice.University                                                       : Factor w/ 2 levels "No","Yes": 1 2 2 2 1 1 2 1 2 1 ...
 $ Advice.CE                                                               : Factor w/ 2 levels "No","Yes": 2 2 1 2 2 2 2 2 1 1 ...
 $ Adv.mentor                                                              : Factor w/ 2 levels "No","Yes": 1 2 2 2 2 2 2 1 1 2 ...
 $ Adv.imp.company                                                         : Factor w/ 2 levels "No","Yes": 2 1 1 2 1 1 1 1 1 1 ...
 $ Adv.On.line.Ed                                                          : Factor w/ 2 levels "No","Yes": 2 2 1 2 1 1 1 1 1 1 ...
 $ Adv.other                                                               : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
> chisq.test(table(pl2$clust, pl$Area))

	Pearson's Chi-squared test

data:  table(pl2$clust, pl$Area)
X-squared = 80.1728, df = 8, p-value =
4.513e-14

> chisq.post.hoc(table(pl2$clust, pl$Area))
Error: could not find function "chisq.post.hoc"
> 
> library('fifer')
Loading required package: xtable
Loading required package: MASS

Attaching package: ‘MASS’

The following object is masked from ‘package:dplyr’:

    select

> chisq.post.hoc(table(pl2$clust, pl$Area))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.5108 0.5648
2     1 vs. 3 0.5648 0.5648
3     1 vs. 4 0.1126 0.1609
4     1 vs. 5 0.0000 0.0001
5     2 vs. 3 0.1726 0.2158
6     2 vs. 4 0.0156 0.0260
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0015 0.0029
9     3 vs. 5 0.0000 0.0001
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl2$clust, pl$Surgical.Guide))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0284 0.0788
2     1 vs. 3 0.0001 0.0013
3     1 vs. 4 0.3338 0.4066
4     1 vs. 5 0.0915 0.1526
5     2 vs. 3 0.0320 0.0788
6     2 vs. 4 0.1911 0.2730
7     2 vs. 5 0.3660 0.4066
8     3 vs. 4 0.0033 0.0164
9     3 vs. 5 0.0394 0.0788
10    4 vs. 5 0.6020 0.6020
> prop.table(table(pl2$clust, pl2$Surgical.Guide), 1)
   
                         No         Yes
  1 0.000000000 0.560975610 0.439024390
  2 0.000000000 0.682926829 0.317073171
  3 0.008583691 0.759656652 0.231759657
  4 0.005000000 0.625000000 0.370000000
  5 0.009389671 0.657276995 0.333333333
> 
> chisq.post.hoc(table(pl2$clust, pl2$Surgical.Guide))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0284 0.0788
2     1 vs. 3 0.0001 0.0013
3     1 vs. 4 0.3338 0.4066
4     1 vs. 5 0.0915 0.1526
5     2 vs. 3 0.0320 0.0788
6     2 vs. 4 0.1911 0.2730
7     2 vs. 5 0.3660 0.4066
8     3 vs. 4 0.0033 0.0164
9     3 vs. 5 0.0394 0.0788
10    4 vs. 5 0.6020 0.6020
> prop.table(table(pl2$clust, pl2$Challenge), 1)
   
                 Anasthesia Id.implant.position
  1 0.008130081 0.008130081         0.227642276
  2 0.004065041 0.008130081         0.345528455
  3 0.000000000 0.025751073         0.390557940
  4 0.010000000 0.050000000         0.395000000
  5 0.000000000 0.014084507         0.262910798
   
       Incision No.information       Other
  1 0.040650407    0.065040650 0.097560976
  2 0.056910569    0.060975610 0.028455285
  3 0.021459227    0.098712446 0.038626609
  4 0.000000000    0.020000000 0.055000000
  5 0.075117371    0.253521127 0.037558685
   
    Prep.osteotomy  Reflection    Suturing
  1    0.430894309 0.016260163 0.105691057
  2    0.329268293 0.052845528 0.113821138
  3    0.274678112 0.042918455 0.107296137
  4    0.365000000 0.040000000 0.065000000
  5    0.201877934 0.051643192 0.103286385
> chisq.post.hoc(table(pl2$clust, pl2$Challenge))
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> chisq.post.hoc(table(pl2$clust, pl2$Surgical.Guide), control=fdr)
Error in match.arg(control) : object 'fdr' not found
> chisq.post.hoc(table(pl2$clust, pl2$Surgical.Guide), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0284 0.0788
2     1 vs. 3 0.0001 0.0013
3     1 vs. 4 0.3338 0.4066
4     1 vs. 5 0.0915 0.1526
5     2 vs. 3 0.0320 0.0788
6     2 vs. 4 0.1911 0.2730
7     2 vs. 5 0.3660 0.4066
8     3 vs. 4 0.0033 0.0164
9     3 vs. 5 0.0394 0.0788
10    4 vs. 5 0.6020 0.6020
> prop.table(table(pl2$clust, pl2$Restoration.type), 1)
   
             5 Cem.ret.cr imp.sup.br imp.sup.cd
  1 0.05691057 0.49593496 0.28455285 0.09756098
  2 0.06097561 0.51219512 0.24390244 0.12195122
  3 0.04291845 0.49785408 0.30042918 0.06008584
  4 0.02500000 0.61000000 0.28000000 0.06500000
  5 0.01877934 0.31455399 0.36619718 0.04694836
   
    No.information
  1     0.06504065
  2     0.06097561
  3     0.09871245
  4     0.02000000
  5     0.25352113
> chisq.post.hoc(table(pl2$clust, pl2$Restoration.type))
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> chisq.post.hoc(table(pl2$clust, pl2$Restoration.type), c="fdr")
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> chisq.post.hoc(table(pl2$clust, pl2$Restoration.type), control="fdr")
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> chisq.post.hoc(table(pl2$clust, pl2$Restoration.type), control="BH")
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> chisq.post.hoc(table(pl2$clust, pl2$Restoration.type), control="bonferroni")
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> prop.table(table(pl2$clust, pl2$Formal.mentor), 1)
   
           No       Yes
  1 0.3902439 0.6097561
  2 0.4105691 0.5894309
  3 0.3991416 0.6008584
  4 0.2500000 0.7500000
  5 0.4600939 0.5399061
> chisq.post.hoc(table(pl2$clust, pl2$Formal.mentor))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.7366 0.9095
2     1 vs. 3 0.9095 0.9095
3     1 vs. 4 0.0090 0.0224
4     1 vs. 5 0.2533 0.4222
5     2 vs. 3 0.8523 0.9095
6     2 vs. 4 0.0004 0.0021
7     2 vs. 5 0.2999 0.4285
8     3 vs. 4 0.0010 0.0035
9     3 vs. 5 0.2134 0.4222
10    4 vs. 5 0.0000 0.0001
> prop.table(table(pl2$clust, pl2$Advice.University), 1)
   
           No       Yes
  1 0.4471545 0.5528455
  2 0.3577236 0.6422764
  3 0.4334764 0.5665236
  4 0.3000000 0.7000000
  5 0.5023474 0.4976526
> prop.table(table(pl2$clust, pl2$Advice.CE), 1)
   
           No       Yes
  1 0.5447154 0.4552846
  2 0.4715447 0.5284553
  3 0.4721030 0.5278970
  4 0.5350000 0.4650000
  5 0.6338028 0.3661972
> prop.table(table(pl2$clust, pl2$Advice.mentor), 1)
Error in table(pl2$clust, pl2$Advice.mentor) : 
  all arguments must have the same length
> prop.table(table(pl2$clust, pl2$Adv.mentor), 1)
   
           No       Yes
  1 0.3008130 0.6991870
  2 0.3333333 0.6666667
  3 0.3133047 0.6866953
  4 0.3500000 0.6500000
  5 0.5023474 0.4976526
> prop.table(table(pl2$clust, pl2$Adv.imp.company), 1)
   
           No       Yes
  1 0.8699187 0.1300813
  2 0.8495935 0.1504065
  3 0.8755365 0.1244635
  4 0.8550000 0.1450000
  5 0.8591549 0.1408451
> prop.table(table(pl2$clust, pl2$Adv.On.line.Ed), 1)
   
           No       Yes
  1 0.6585366 0.3414634
  2 0.6382114 0.3617886
  3 0.6266094 0.3733906
  4 0.6700000 0.3300000
  5 0.7136150 0.2863850
> prop.table(table(pl2$clust, pl2$Adv.Other), 1)
Error in table(pl2$clust, pl2$Adv.Other) : 
  all arguments must have the same length
> prop.table(table(pl2$clust, pl2$Adv.other), 1)
   
            No        Yes
  1 0.93495935 0.06504065
  2 0.98780488 0.01219512
  3 0.98283262 0.01716738
  4 0.96500000 0.03500000
  5 0.97183099 0.02816901
> prop.table(table(pl2$clust, pl2$If.Yes..this.was...1), 1)
   
          Assoc No.information Not.applicable
  1 0.048780488    0.000000000    0.390243902
  2 0.077235772    0.004065041    0.410569106
  3 0.094420601    0.008583691    0.399141631
  4 0.070000000    0.000000000    0.250000000
  5 0.056338028    0.004694836    0.460093897
   
          Other     Sr.Coll       Sr.Pr
  1 0.227642276 0.138211382 0.016260163
  2 0.203252033 0.134146341 0.016260163
  3 0.158798283 0.128755365 0.021459227
  4 0.050000000 0.145000000 0.005000000
  5 0.117370892 0.084507042 0.004694836
   
            Uni
  1 0.178861789
  2 0.154471545
  3 0.188841202
  4 0.480000000
  5 0.272300469
> prop.table(table(pl2$clust, pl2$No.complications), 1)
   
           No       Yes
  1 0.3495935 0.6504065
  2 0.3414634 0.6585366
  3 0.4420601 0.5579399
  4 0.3050000 0.6950000
  5 0.5305164 0.4694836
> imp2<-read.csv(file="/Users/aneesha/Desktop/setitng.t.1.impl.csv", header=TRUE, row.names=1)
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file '/Users/aneesha/Desktop/setitng.t.1.impl.csv': No such file or directory
> 
> load("/Users/aneesha/Desktop/irina/hcpc.R")
> load("/Users/aneesha/Desktop/irina/hcpc.R")
> load("/Users/aneesha/Desktop/irina/hcpc.R")
> library('FactoMineR')
> imp2<-read.csv(file="/Users/aneesha/Desktop/irina/setitng.t.1.impl\ copy.csv", header=TRUE, row.names=1)
> mfaimp2<-MFA(imp2, group=c(1,1,1,1,1,1,1,1,1), name.group=c("Gender", "Age.Group", "Continent", "Work.Experience","Professional.Setting","Practice.Type","Post.Graduate.Training", "Setting.of.first.implant", "Time.of.First.implant"), type=rep("n",9))
Error in plot.xy(xy.coords(x, y), type = type, ...) : 
  plot.new has not been called yet
> 
> hcpc.1<-HCPC(mfaimp2, min = 3, max=6, iter.max=5, graph=TRUE,nb.clust=5)
Error in text.default(s$xyz.convert(x[i], y[i], 0), cex = 0.7, names.ind[i],  : 
  plot.new has not been called yet
> prop.table(table(pl2$clust, pl2$Formal.mentor), 1)
   
           No       Yes
  1 0.3902439 0.6097561
  2 0.4105691 0.5894309
  3 0.3991416 0.6008584
  4 0.2500000 0.7500000
  5 0.4600939 0.5399061
> > chisq.post.hoc(table(pl$clust, pl$No.complications))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.9077 0.9077
2     1 vs. 3 0.1125 0.1608
3     1 vs. 4 0.4620 0.5134
4     1 vs. 5 0.0015 0.0050
5     2 vs. 3 0.0250 0.0499
6     2 vs. 4 0.4186 0.5134
7     2 vs. 5 0.0000 0.0002
8     3 vs. 4 0.0039 0.0098
9     3 vs. 5 0.0715 0.1192
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl$clust, pl$Over.prepared.osteotomy))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.7235 0.8039
2     1 vs. 3 0.0640 0.1328
3     1 vs. 4 0.0129 0.0556
4     1 vs. 5 0.7153 0.8039
5     2 vs. 3 0.0797 0.1328
6     2 vs. 4 0.0106 0.0556
7     2 vs. 5 1.0000 1.0000
8     3 vs. 4 0.4636 0.6623
9     3 vs. 5 0.0776 0.1328
10    4 vs. 5 0.0167 0.0556
> chisq.post.hoc(table(pl$clust, pl$Under.prepared.osteotomy))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.3333 0.6665
2     1 vs. 3 0.4680 0.6784
3     1 vs. 4 0.2767 0.6665
4     1 vs. 5 0.6294 0.7025
5     2 vs. 3 0.0250 0.1252
6     2 vs. 4 0.0089 0.0888
7     2 vs. 5 0.0555 0.1849
8     3 vs. 4 0.6322 0.7025
9     3 vs. 5 0.8310 0.8310
10    4 vs. 5 0.4749 0.6784
> chisq.post.hoc(table(pl$clust, pl$Inappropriate.implant.positioning))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.7630 1.0000
4     1 vs. 5 0.0095 0.0238
5     2 vs. 3 0.9026 1.0000
6     2 vs. 4 0.7043 1.0000
7     2 vs. 5 0.0024 0.0080
8     3 vs. 4 0.7992 1.0000
9     3 vs. 5 0.0021 0.0080
10    4 vs. 5 0.0009 0.0080
> chisq.post.hoc(table(pl$clust, pl$Difficulty.in.flap.closure))
Error in table(pl$clust, pl$Difficulty.in.flap.closure) : 
  all arguments must have the same length
> chisq.post.hoc(table(pl$clust, pl$Difficulties.in.flap.closure))
Error in table(pl$clust, pl$Difficulties.in.flap.closure) : 
  all arguments must have the same length
> chisq.post.hoc(table(pl$clust, pl$Difficulties.in.flap.design.closure))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.6447 0.6619
2     1 vs. 3 0.0526 0.1052
3     1 vs. 4 0.3442 0.4303
4     1 vs. 5 0.0222 0.0632
5     2 vs. 3 0.0773 0.1104
6     2 vs. 4 0.0700 0.1104
7     2 vs. 5 0.0253 0.0632
8     3 vs. 4 0.0005 0.0027
9     3 vs. 5 0.6619 0.6619
10    4 vs. 5 0.0001 0.0008
> chisq.post.hoc(table(pl$clust, pl$Wrong.sequence.of.drills))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.5990 0.7166
2     1 vs. 3 0.0095 0.0951
3     1 vs. 4 0.1115 0.2230
4     1 vs. 5 0.0412 0.1372
5     2 vs. 3 0.0371 0.1372
6     2 vs. 4 0.2790 0.4649
7     2 vs. 5 0.0986 0.2230
8     3 vs. 4 0.4215 0.6021
9     3 vs. 5 0.6732 0.7166
10    4 vs. 5 0.7166 0.7166
> chisq.post.hoc(table(pl$clust, pl$Other.Complication))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.6776 0.9197
4     1 vs. 5 0.2722 0.6804
5     2 vs. 3 0.5674 0.9197
6     2 vs. 4 0.7358 0.9197
7     2 vs. 5 0.0488 0.2442
8     3 vs. 4 0.3525 0.7050
9     3 vs. 5 0.2402 0.6804
10    4 vs. 5 0.0333 0.2442
> chisq.post.hoc(table(pl$clust, pl$If.Yes..this.was...1))
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> chisq.post.hoc(table(pl$clust, pl$Advice.University))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.1126 0.1877
2     1 vs. 3 0.8230 0.8230
3     1 vs. 4 0.0085 0.0213
4     1 vs. 5 0.3652 0.4057
5     2 vs. 3 0.0933 0.1865
6     2 vs. 4 0.2252 0.2815
7     2 vs. 5 0.0024 0.0120
8     3 vs. 4 0.0052 0.0172
9     3 vs. 5 0.1549 0.2212
10    4 vs. 5 0.0000 0.0004
> chisq.post.hoc(table(pl$clust, pl$Advice.CE))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.1877 0.2755
2     1 vs. 3 0.2204 0.2755
3     1 vs. 4 0.9087 1.0000
4     1 vs. 5 0.1326 0.2755
5     2 vs. 3 1.0000 1.0000
6     2 vs. 4 0.2158 0.2755
7     2 vs. 5 0.0005 0.0042
8     3 vs. 4 0.2106 0.2755
9     3 vs. 5 0.0008 0.0042
10    4 vs. 5 0.0459 0.1529
> chisq.post.hoc(table(pl$clust, pl$Advice.mentor))
Error in table(pl$clust, pl$Advice.mentor) : 
  all arguments must have the same length
> chisq.post.hoc(table(pl$clust, pl$Adv.mentor))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.5565 0.7950
2     1 vs. 3 0.9041 0.9041
3     1 vs. 4 0.3953 0.7887
4     1 vs. 5 0.0004 0.0013
5     2 vs. 3 0.6961 0.8481
6     2 vs. 4 0.7633 0.8481
7     2 vs. 5 0.0003 0.0013
8     3 vs. 4 0.4732 0.7887
9     3 vs. 5 0.0001 0.0005
10    4 vs. 5 0.0020 0.0051
> chisq.post.hoc(table(pl$clust, pl$Adv.imp.company))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.6401 0.9935
2     1 vs. 3 0.8683 0.9935
3     1 vs. 4 0.7437 0.9935
4     1 vs. 5 0.8698 0.9935
5     2 vs. 3 0.4290 0.9935
6     2 vs. 4 0.8942 0.9935
7     2 vs. 5 0.7925 0.9935
8     3 vs. 4 0.5727 0.9935
9     3 vs. 5 0.6753 0.9935
10    4 vs. 5 1.0000 1.0000
> chisq.post.hoc(table(pl$clust, pl$Adv.On.line.Ed))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.7303 0.9034
2     1 vs. 3 0.5645 0.8065
3     1 vs. 4 0.9034 0.9034
4     1 vs. 5 0.3263 0.7306
5     2 vs. 3 0.8497 0.9034
6     2 vs. 4 0.5487 0.8065
7     2 vs. 5 0.0907 0.4534
8     3 vs. 4 0.3653 0.7306
9     3 vs. 5 0.0561 0.4534
10    4 vs. 5 0.3397 0.7306
> chisq.post.hoc(table(pl$clust, pl$Adv.other))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0080 0.0795
2     1 vs. 3 0.0272 0.1360
3     1 vs. 4 0.2767 0.5133
4     1 vs. 5 0.1538 0.3845
5     2 vs. 3 0.7179 0.7819
6     2 vs. 4 0.1203 0.3845
7     2 vs. 5 0.3142 0.5133
8     3 vs. 4 0.3593 0.5133
9     3 vs. 5 0.5297 0.6621
10    4 vs. 5 0.7819 0.7819

> chisq.post.hoc(table(pl2$clust, pl2$Duration.Proc), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0108 0.0155
2     1 vs. 3 0.4099 0.4099
3     1 vs. 4 0.0077 0.0128
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.0957 0.1196
6     2 vs. 4 0.1310 0.1455
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0029 0.0057
9     3 vs. 5 0.0000 0.0000
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl2$clust, pl2$Area), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.5108 0.5648
2     1 vs. 3 0.5648 0.5648
3     1 vs. 4 0.1126 0.1609
4     1 vs. 5 0.0000 0.0001
5     2 vs. 3 0.1726 0.2158
6     2 vs. 4 0.0156 0.0260
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0015 0.0029
9     3 vs. 5 0.0000 0.0001
10    4 vs. 5 0.0000 0.0000
> pl3<-read.csv(file="/Users/aneesha/Desktop/irina/restoration.guidance.coded.csv", sep=",", row.names=1, header=TRUE)
> chisq.post.hoc(table(pl3$clust, pl3$Restoration.type.other), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.6047 0.7559
3     1 vs. 4 0.2236 0.4473
4     1 vs. 5 0.1065 0.3550
5     2 vs. 3 0.4163 0.6155
6     2 vs. 4 0.1052 0.3550
7     2 vs. 5 0.0324 0.3241
8     3 vs. 4 0.4309 0.6155
9     3 vs. 5 0.1789 0.4472
10    4 vs. 5 0.7445 0.8273
> chisq.post.hoc(table(pl3$clust, pl3$Supervision.first.implant.1.on.1), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0189 0.0270
2     1 vs. 3 0.0423 0.0529
3     1 vs. 4 0.0000 0.0000
4     1 vs. 5 0.6519 0.7244
5     2 vs. 3 0.8506 0.8506
6     2 vs. 4 0.0003 0.0007
7     2 vs. 5 0.0010 0.0019
8     3 vs. 4 0.0002 0.0005
9     3 vs. 5 0.0024 0.0039
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl3$clust, pl3$Supervision.first.implant.multiple), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0854 0.2847
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.3119 0.5198
4     1 vs. 5 0.8782 0.9758
5     2 vs. 3 0.0512 0.2558
6     2 vs. 4 0.5318 0.7597
7     2 vs. 5 0.0246 0.2464
8     3 vs. 4 0.2622 0.5198
9     3 vs. 5 0.7967 0.9758
10    4 vs. 5 0.1589 0.3974
> chisq.post.hoc(table(pl3$clust, pl3$Supervision.first.implant.no.), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.7860 0.7860
2     1 vs. 3 0.0068 0.0114
3     1 vs. 4 0.0001 0.0003
4     1 vs. 5 0.0003 0.0007
5     2 vs. 3 0.0054 0.0108
6     2 vs. 4 0.0000 0.0003
7     2 vs. 5 0.0001 0.0003
8     3 vs. 4 0.1289 0.1841
9     3 vs. 5 0.2553 0.3191
10    4 vs. 5 0.7052 0.7835
> chisq.post.hoc(table(pl3$clust, pl3$Supervision.first.implant.no.information), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.3280 0.3645
3     1 vs. 4 0.0644 0.0920
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.1321 0.1652
6     2 vs. 4 0.0355 0.0592
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0006 0.0011
9     3 vs. 5 0.0000 0.0000
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl3$clust, pl3$Supervision.first.implant.other), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0242 0.1209
2     1 vs. 3 0.0866 0.2887
3     1 vs. 4 0.0242 0.1209
4     1 vs. 5 0.2918 0.4863
5     2 vs. 3 0.5349 0.6554
6     2 vs. 4 1.0000 1.0000
7     2 vs. 5 0.2400 0.4800
8     3 vs. 4 0.5148 0.6554
9     3 vs. 5 0.5898 0.6554
10    4 vs. 5 0.2229 0.4800
> chisq.post.hoc(table(pl3$clust, pl3$If Yes, this was CE), control="fdr")
Error: unexpected symbol in "chisq.post.hoc(table(pl3$clust, pl3$If Yes"
> chisq.post.hoc(table(pl3$clust, pl3$If Yes.this was CE), control="fdr")
Error: unexpected symbol in "chisq.post.hoc(table(pl3$clust, pl3$If Yes.this"
> str(pl3)
'data.frame':	1015 obs. of  42 variables:
 $ clust                                                                   : int  2 1 3 4 3 5 2 3 3 2 ...
 $ Did.you.pursue.further.training.after.placing.your.first.dental.implant.: Factor w/ 2 levels "No","Yes": 2 2 2 1 1 2 2 2 2 2 ...
 $ If.Yes..this.was.CE.                                                    : int  0 0 1 0 0 0 0 0 0 0 ...
 $ If.Yes..this.was..None                                                  : int  0 0 0 1 1 0 0 0 0 0 ...
 $ If.Yes..this.was..Other                                                 : int  1 1 0 0 0 1 1 1 1 1 ...
 $ If.Yes..this.was..Uni1yr                                                : int  0 0 0 0 0 0 0 0 0 0 ...
 $ If.Yes..this.was..Uni2yr                                                : int  0 0 0 0 0 0 0 0 0 0 ...
 $ If.Yes..this.was..Uni3yr                                                : int  0 0 0 0 0 0 0 0 0 0 ...
 $ If.Yes..this.was..                                                      : Factor w/ 6 levels "CE","None","Other",..: 3 3 1 2 2 3 3 3 3 3 ...
 $ Supervision.first.implant.1.on.1                                        : int  1 1 1 1 1 1 1 1 1 1 ...
 $ Supervision.first.implant.multiple                                      : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Supervision.first.implant.no.                                           : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Supervision.first.implant.no.information                                : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Supervision.first.implant.other                                         : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Supervision.first.implant                                               : Factor w/ 7 levels "1on1","Multiple",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Setting.first.implant                                                   : Factor w/ 5 levels "CE","No.information",..: 1 3 4 4 4 4 4 4 4 4 ...
 $ Duration.Proc                                                           : Factor w/ 5 levels "1.to.2.hr","2.to.3.hr",..: 1 2 3 1 1 1 3 1 1 1 ...
 $ Area                                                                    : Factor w/ 3 levels "Multiple.implant",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Surgical.Guide                                                          : Factor w/ 3 levels "","No","Yes": 2 3 2 3 2 2 2 2 2 3 ...
 $ Challenge                                                               : Factor w/ 9 levels "","Anasthesia",..: 7 3 7 3 3 3 9 9 3 4 ...
 $ Restoration.type.other                                                  : int  1 1 1 1 1 1 1 1 1 1 ...
 $ Restoration.type.cem.ret.cr                                             : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Restoration.type.imp.sup.br                                             : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Restoration.type.imp.sup.cd                                             : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Restoration.type.no.information                                         : int  0 0 0 0 0 0 0 0 0 0 ...
 $ Restoration.type                                                        : Factor w/ 5 levels "Cem.ret.cr","imp.sup.br",..: 5 5 5 5 5 5 5 5 5 5 ...
 $ No.complications                                                        : Factor w/ 2 levels "No","Yes": 1 2 2 2 2 1 2 2 2 2 ...
 $ Over.prepared.osteotomy                                                 : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Under.prepared.osteotomy                                                : Factor w/ 2 levels "No","Yes": 2 1 1 1 1 2 1 1 1 1 ...
 $ Inappropriate.implant.positioning                                       : Factor w/ 2 levels "No","Yes": 2 2 1 1 2 1 1 1 1 1 ...
 $ Difficulties.in.flap.design.closure                                     : Factor w/ 2 levels "No","Yes": 1 2 1 1 1 1 1 1 1 1 ...
 $ Wrong.sequence.of.drills                                                : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Other.Complication                                                      : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ Reflection                                                              : Factor w/ 4 levels "Ad.prep","No.information",..: 4 3 3 1 3 1 3 4 4 4 ...
 $ Formal.mentor                                                           : Factor w/ 2 levels "No","Yes": 1 1 2 2 2 1 1 1 1 1 ...
 $ If.Yes..this.was...1                                                    : Factor w/ 7 levels "Assoc","No.information",..: 3 3 6 4 4 3 3 3 3 3 ...
 $ Advice.University                                                       : Factor w/ 2 levels "No","Yes": 1 2 1 2 1 2 1 1 1 1 ...
 $ Advice.CE                                                               : Factor w/ 2 levels "No","Yes": 2 2 1 1 1 2 2 2 2 1 ...
 $ Adv.mentor                                                              : Factor w/ 2 levels "No","Yes": 2 2 2 1 2 2 2 1 2 2 ...
 $ Adv.imp.company                                                         : Factor w/ 2 levels "No","Yes": 1 2 1 1 1 1 1 1 1 1 ...
 $ Adv.On.line.Ed                                                          : Factor w/ 2 levels "No","Yes": 2 2 1 1 2 1 1 2 1 1 ...
 $ Adv.other                                                               : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
> chisq.post.hoc(table(pl3$clust, pl3$If.Yes..this.was.CE.), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p adj.p
1     1 vs. 2 1.0000     1
2     1 vs. 3 0.7822     1
3     1 vs. 4 0.7810     1
4     1 vs. 5 1.0000     1
5     2 vs. 3 0.8214     1
6     2 vs. 4 1.0000     1
7     2 vs. 5 0.6694     1
8     3 vs. 4 1.0000     1
9     3 vs. 5 0.5030     1
10    4 vs. 5 0.4972     1
> chisq.post.hoc(table(pl3$clust, pl3$If.Yes..this.was..None), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0261 0.0435
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.3164 0.3515
4     1 vs. 5 0.0006 0.0014
5     2 vs. 3 0.0120 0.0240
6     2 vs. 4 0.1905 0.2722
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.2829 0.3515
9     3 vs. 5 0.0000 0.0001
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl3$clust, pl3$If.Yes..this.was..Other), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.4263 0.4737
3     1 vs. 4 0.0082 0.0164
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.3506 0.4382
6     2 vs. 4 0.0016 0.0039
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0265 0.0378
9     3 vs. 5 0.0000 0.0000
10    4 vs. 5 0.0167 0.0278
> chisq.post.hoc(table(pl3$clust, pl3$If.Yes..this.was..Uni1yr), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.6208 0.8869
3     1 vs. 4 0.7537 0.9422
4     1 vs. 5 0.6133 0.8869
5     2 vs. 3 0.4036 0.8869
6     2 vs. 4 0.6162 0.8869
7     2 vs. 5 0.5132 0.8869
8     3 vs. 4 0.1703 0.8869
9     3 vs. 5 1.0000 1.0000
10    4 vs. 5 0.2318 0.8869
> chisq.post.hoc(table(pl3$clust, pl3$If.Yes..this.was..Uni2yr), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0152 0.0761
2     1 vs. 3 0.6687 0.7430
3     1 vs. 4 0.1609 0.3219
4     1 vs. 5 1.0000 1.0000
5     2 vs. 3 0.0245 0.0818
6     2 vs. 4 0.2944 0.4206
7     2 vs. 5 0.0027 0.0269
8     3 vs. 4 0.2754 0.4206
9     3 vs. 5 0.4528 0.5659
10    4 vs. 5 0.0555 0.1388
> chisq.post.hoc(table(pl3$clust, pl3$If.Yes..this.was..Uni3yr), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.1339 0.2231
2     1 vs. 3 0.3500 0.4374
3     1 vs. 4 0.0000 0.0000
4     1 vs. 5 0.0590 0.1179
5     2 vs. 3 0.6081 0.6081
6     2 vs. 4 0.0000 0.0001
7     2 vs. 5 0.5249 0.5832
8     3 vs. 4 0.0000 0.0000
9     3 vs. 5 0.2348 0.3355
10    4 vs. 5 0.0005 0.0014
> chisq.post.hoc(table(pl3$clust, pl3$Did.you.pursue.further.training.after.placing.your.first.dental.implant.), control="fdr")
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
> chisq.post.hoc(table(pl3$clust, pl3$Challenge), control="fdr")
Error in test(tbl[prs[, i], ]) : FEXACT error 7.
LDSTP is too small for this problem.
Try increasing the size of the workspace.
> pl3<-read.csv(file="/Users/aneesha/Desktop/irina/restoration.guidance.coded.csv", sep=",", row.names=1, header=TRUE)
> 
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.Anasthesia), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.4293 0.7154
3     1 vs. 4 0.0570 0.1898
4     1 vs. 5 1.0000 1.0000
5     2 vs. 3 0.1657 0.4142
6     2 vs. 4 0.0077 0.0769
7     2 vs. 5 0.6669 0.8336
8     3 vs. 4 0.2083 0.4167
9     3 vs. 5 0.5074 0.7248
10    4 vs. 5 0.0477 0.1898
> Challenge.Implant.position
Error: object 'Challenge.Implant.position' not found
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.Implant.position), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0229 0.0457
2     1 vs. 3 0.0021 0.0113
3     1 vs. 4 0.0023 0.0113
4     1 vs. 5 0.5147 0.5719
5     2 vs. 3 0.3432 0.4290
6     2 vs. 4 0.3235 0.4290
7     2 vs. 5 0.0677 0.1128
8     3 vs. 4 1.0000 1.0000
9     3 vs. 5 0.0047 0.0118
10    4 vs. 5 0.0046 0.0118
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.Incision), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.6219 0.6219
2     1 vs. 3 0.3234 0.4043
3     1 vs. 4 0.0076 0.0254
4     1 vs. 5 0.2485 0.3550
5     2 vs. 3 0.0602 0.1078
6     2 vs. 4 0.0004 0.0020
7     2 vs. 5 0.4544 0.5048
8     3 vs. 4 0.0647 0.1078
9     3 vs. 5 0.0121 0.0301
10    4 vs. 5 0.0000 0.0003
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.No.information), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.8270 0.8270
2     1 vs. 3 0.5593 0.6214
3     1 vs. 4 0.1008 0.1680
4     1 vs. 5 0.0000 0.0001
5     2 vs. 3 0.1859 0.2324
6     2 vs. 4 0.1228 0.1754
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0060 0.0121
9     3 vs. 5 0.0000 0.0001
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.prep.osteotomy), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0661 0.1094
2     1 vs. 3 0.0043 0.0107
3     1 vs. 4 0.2429 0.2699
4     1 vs. 5 0.0000 0.0001
5     2 vs. 3 0.1978 0.2472
6     2 vs. 4 0.4835 0.4835
7     2 vs. 5 0.0023 0.0075
8     3 vs. 4 0.0491 0.0983
9     3 vs. 5 0.0766 0.1094
10    4 vs. 5 0.0003 0.0014
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.reflection), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.1589 0.7680
2     1 vs. 3 0.2304 0.7680
3     1 vs. 4 0.3284 0.8211
4     1 vs. 5 0.1440 0.7680
5     2 vs. 3 0.6728 0.9611
6     2 vs. 4 0.6546 0.9611
7     2 vs. 5 1.0000 1.0000
8     3 vs. 4 1.0000 1.0000
9     3 vs. 5 0.8236 1.0000
10    4 vs. 5 0.6430 0.9611
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.suturing), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.8597 1.0000
3     1 vs. 4 0.2374 0.9731
4     1 vs. 5 0.8550 1.0000
5     2 vs. 3 0.7733 1.0000
6     2 vs. 4 0.1518 0.9731
7     2 vs. 5 0.6572 1.0000
8     3 vs. 4 0.3180 0.9731
9     3 vs. 5 1.0000 1.0000
10    4 vs. 5 0.3892 0.9731
> chisq.post.hoc(table(pl3$clust, pl3$Challenge.other), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0101 0.1011
2     1 vs. 3 0.0326 0.1088
3     1 vs. 4 0.1819 0.4514
4     1 vs. 5 0.0315 0.1088
5     2 vs. 3 0.6156 0.6840
6     2 vs. 4 0.2257 0.4514
7     2 vs. 5 0.6090 0.6840
8     3 vs. 4 0.4938 0.6840
9     3 vs. 5 1.0000 1.0000
10    4 vs. 5 0.4835 0.6840
> chisq.post.hoc(table(pl3$clust, pl3$Restoration.type.other), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.6047 0.7559
3     1 vs. 4 0.2236 0.4473
4     1 vs. 5 0.1065 0.3550
5     2 vs. 3 0.4163 0.6155
6     2 vs. 4 0.1052 0.3550
7     2 vs. 5 0.0324 0.3241
8     3 vs. 4 0.4309 0.6155
9     3 vs. 5 0.1789 0.4472
10    4 vs. 5 0.7445 0.8273
> chisq.post.hoc(table(pl3$clust, pl3$Restoration.type.cem.ret.cr), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.8254 0.9171
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.0498 0.0711
4     1 vs. 5 0.0011 0.0028
5     2 vs. 3 0.7842 0.9171
6     2 vs. 4 0.0442 0.0711
7     2 vs. 5 0.0000 0.0001
8     3 vs. 4 0.0204 0.0408
9     3 vs. 5 0.0001 0.0004
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl3$clust, pl3$Restoration.type.imp.sup.br), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.4488 0.6412
2     1 vs. 3 0.8075 0.8972
3     1 vs. 4 1.0000 1.0000
4     1 vs. 5 0.1504 0.3637
5     2 vs. 3 0.1819 0.3637
6     2 vs. 4 0.3881 0.6412
7     2 vs. 5 0.0058 0.0576
8     3 vs. 4 0.6720 0.8400
9     3 vs. 5 0.1589 0.3637
10    4 vs. 5 0.0737 0.3637
> chisq.post.hoc(table(pl3$clust, pl3$Restoration.type.imp.sup.cd), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.6025 0.7504
2     1 vs. 3 0.2047 0.4094
3     1 vs. 4 0.2923 0.4872
4     1 vs. 5 0.1067 0.2669
5     2 vs. 3 0.0258 0.1292
6     2 vs. 4 0.0524 0.1747
7     2 vs. 5 0.0046 0.0462
8     3 vs. 4 0.8447 0.8447
9     3 vs. 5 0.6753 0.7504
10    4 vs. 5 0.5210 0.7443
> chisq.post.hoc(table(pl3$clust, pl3$Restoration.type.no.information), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.3280 0.3645
3     1 vs. 4 0.0644 0.0920
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.1321 0.1652
6     2 vs. 4 0.0355 0.0592
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0006 0.0011
9     3 vs. 5 0.0000 0.0000
10    4 vs. 5 0.0000 0.0000
> pl3<-read.csv(file="/Users/aneesha/Desktop/irina/restoration.guidance.coded.csv", sep=",", row.names=1, header=TRUE)
> chisq.post.hoc(table(pl3$clust, pl3$Mentor.from.University), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.5525 0.6138
2     1 vs. 3 0.8865 0.8865
3     1 vs. 4 0.0000 0.0000
4     1 vs. 5 0.0626 0.0894
5     2 vs. 3 0.3338 0.4172
6     2 vs. 4 0.0000 0.0000
7     2 vs. 5 0.0027 0.0053
8     3 vs. 4 0.0000 0.0000
9     3 vs. 5 0.0421 0.0702
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl3$clust, pl3$Mentor.from. Association), control="fdr")
Error: unexpected symbol in "chisq.post.hoc(table(pl3$clust, pl3$Mentor.from. Association"
> chisq.post.hoc(table(pl3$clust, pl3$Mentor.from..Association), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.3827 0.6710
2     1 vs. 3 0.1504 0.6710
3     1 vs. 4 0.4871 0.6710
4     1 vs. 5 1.0000 1.0000
5     2 vs. 3 0.5180 0.6710
6     2 vs. 4 0.8565 0.9517
7     2 vs. 5 0.3443 0.6710
8     3 vs. 4 0.3875 0.6710
9     3 vs. 5 0.1033 0.6710
10    4 vs. 5 0.5368 0.6710
> chisq.post.hoc(table(pl3$clust, pl3$Mentor.not.applicable), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.7360 0.9114
2     1 vs. 3 0.8203 0.9114
3     1 vs. 4 0.0090 0.0224
4     1 vs. 5 0.2096 0.4190
5     2 vs. 3 0.9260 0.9260
6     2 vs. 4 0.0003 0.0015
7     2 vs. 5 0.3001 0.4287
8     3 vs. 4 0.0005 0.0018
9     3 vs. 5 0.2514 0.4190
10    4 vs. 5 0.0000 0.0001
> chisq.post.hoc(table(pl3$clust, pl3$Mentor.Other), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.5910 0.5910
2     1 vs. 3 0.1148 0.1641
3     1 vs. 4 0.0000 0.0000
4     1 vs. 5 0.0123 0.0308
5     2 vs. 3 0.2361 0.2624
6     2 vs. 4 0.0000 0.0000
7     2 vs. 5 0.0159 0.0317
8     3 vs. 4 0.0003 0.0010
9     3 vs. 5 0.2201 0.2624
10    4 vs. 5 0.0204 0.0341
> chisq.post.hoc(table(pl3$clust, pl3$Mentor.Senior.Colleague.in.practice), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.8695 1.0000
3     1 vs. 4 1.0000 1.0000
4     1 vs. 5 0.1391 0.4207
5     2 vs. 3 0.8930 1.0000
6     2 vs. 4 0.7839 1.0000
7     2 vs. 5 0.1024 0.4207
8     3 vs. 4 0.6743 1.0000
9     3 vs. 5 0.1683 0.4207
10    4 vs. 5 0.0628 0.4207
> chisq.post.hoc(table(pl3$clust, pl3$Mentor.experienced.pp), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 1.0000 1.0000
3     1 vs. 4 0.5601 0.9335
4     1 vs. 5 0.5568 0.9335
5     2 vs. 3 0.7457 1.0000
6     2 vs. 4 0.3855 0.9335
7     2 vs. 5 0.3788 0.9335
8     3 vs. 4 0.2237 0.9335
9     3 vs. 5 0.2184 0.9335
10    4 vs. 5 1.0000 1.0000
> chisq.post.hoc(table(pl$clust, pl$Surgical.Guide), control="fdr")
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0284 0.0788
2     1 vs. 3 0.0001 0.0013
3     1 vs. 4 0.3338 0.4066
4     1 vs. 5 0.0915 0.1526
5     2 vs. 3 0.0320 0.0788
6     2 vs. 4 0.1911 0.2730
7     2 vs. 5 0.3660 0.4066
8     3 vs. 4 0.0033 0.0164
9     3 vs. 5 0.0394 0.0788
10    4 vs. 5 0.6020 0.6020
> > chisq.post.hoc(table(pl4$clust, pl4$Duration.Proc.1.to.2.hr))
Adjusted p-values used the fdr method.

   comparison  raw.p adj.p
1     1 vs. 2 0.4292     1
2     1 vs. 3 0.9071     1
3     1 vs. 4 1.0000     1
4     1 vs. 5 0.6415     1
5     2 vs. 3 0.2214     1
6     2 vs. 4 0.3792     1
7     2 vs. 5 0.7740     1
8     3 vs. 4 0.8403     1
9     3 vs. 5 0.4321     1
10    4 vs. 5 0.6121     1
> chisq.post.hoc(table(pl4$clust, pl4$Duration.Proc.2.to.3.hr))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0101 0.0513
2     1 vs. 3 0.2944 0.4206
3     1 vs. 4 0.0274 0.0914
4     1 vs. 5 0.0103 0.0513
5     2 vs. 3 0.0797 0.1594
6     2 vs. 4 0.7876 0.8751
7     2 vs. 5 1.0000 1.0000
8     3 vs. 4 0.1922 0.3203
9     3 vs. 5 0.0776 0.1594
10    4 vs. 5 0.7819 0.8751
> chisq.post.hoc(table(pl4$clust, pl4$Duration.Proc.Less.than.1.hr))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.3214 0.4018
2     1 vs. 3 0.6553 0.6553
3     1 vs. 4 0.0294 0.0587
4     1 vs. 5 0.0253 0.0587
5     2 vs. 3 0.5836 0.6484
6     2 vs. 4 0.1523 0.2176
7     2 vs. 5 0.0001 0.0003
8     3 vs. 4 0.0432 0.0720
9     3 vs. 5 0.0010 0.0033
10    4 vs. 5 0.0000 0.0000
> chisq.post.hoc(table(pl4$clust, pl4$Duration.Proc.More.than.3.hr))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.0441 0.4415
2     1 vs. 3 0.2402 0.6006
3     1 vs. 4 0.2063 0.6006
4     1 vs. 5 0.2647 0.6006
5     2 vs. 3 0.3603 0.6006
6     2 vs. 4 0.5896 0.8423
7     2 vs. 5 0.3413 0.6006
8     3 vs. 4 1.0000 1.0000
9     3 vs. 5 1.0000 1.0000
10    4 vs. 5 1.0000 1.0000
> chisq.post.hoc(table(pl4$clust, pl4$Duration.Proc.No.info))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.3280 0.3645
3     1 vs. 4 0.0644 0.0920
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.1321 0.1652
6     2 vs. 4 0.0355 0.0592
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0006 0.0011
9     3 vs. 5 0.0000 0.0000
10    4 vs. 5 0.0000 0.0000
># Overall duartion comparison
 comparison                           adj.p
1     Cluster1 vs. Cluster2 0.0155
2     Cluster1 vs. Cluster3 0.4099
3     Cluster1 vs. Cluster 4 0.0128
4     Cluster1 vs. Clutser 5 <0.0001
5     Cluster2 vs. Cluster 3 0.1196
6     Cluster 2 vs. Cluster 4 0.1455
7     Cluster2 vs. Cluster5 <0.0001
8     Cluster3 vs. Cluster4 0.0057
9     Cluster3 vs. Cluster5 <0.0001
10   Cluster4 vs. Cluster5 <0.0001

> pl4<-read.csv(file="/Users/aneesha/Desktop/irina/2.5.final.data.for.outcomes.coded.A.A.csv", row.names=1, header=TRUE)
> chisq.post.hoc(table(pl4$clust, pl4$Reflection.Ad.prep))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.4862 0.5402
2     1 vs. 3 0.4610 0.5402
3     1 vs. 4 1.0000 1.0000
4     1 vs. 5 0.0170 0.0566
5     2 vs. 3 0.0619 0.1238
6     2 vs. 4 0.4229 0.5402
7     2 vs. 5 0.0002 0.0017
8     3 vs. 4 0.3420 0.5402
9     3 vs. 5 0.0589 0.1238
10    4 vs. 5 0.0048 0.0241
> chisq.post.hoc(table(pl4$clust, pl4$Reflection.Some.prep))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 0.3204 0.5340
2     1 vs. 3 0.7395 0.7395
3     1 vs. 4 0.5669 0.6299
4     1 vs. 5 0.1122 0.3738
5     2 vs. 3 0.4113 0.5876
6     2 vs. 4 0.0570 0.2850
7     2 vs. 5 0.5085 0.6299
8     3 vs. 4 0.2889 0.5340
9     3 vs. 5 0.1529 0.3823
10    4 vs. 5 0.0105 0.1054
> chisq.post.hoc(table(pl4$clust, pl4$Reflection.not.prep))
Adjusted p-values used the fdr method.

   comparison  raw.p adj.p
1     1 vs. 2 0.7395     1
2     1 vs. 3 0.6193     1
3     1 vs. 4 1.0000     1
4     1 vs. 5 0.6139     1
5     2 vs. 3 0.8933     1
6     2 vs. 4 0.5614     1
7     2 vs. 5 0.8908     1
8     3 vs. 4 0.4661     1
9     3 vs. 5 1.0000     1
10    4 vs. 5 0.4566     1
> chisq.post.hoc(table(pl4$clust, pl4$Reflection.no.infromation))
Adjusted p-values used the fdr method.

   comparison  raw.p  adj.p
1     1 vs. 2 1.0000 1.0000
2     1 vs. 3 0.3297 0.3663
3     1 vs. 4 0.1622 0.2028
4     1 vs. 5 0.0000 0.0000
5     2 vs. 3 0.1406 0.2009
6     2 vs. 4 0.1228 0.2009
7     2 vs. 5 0.0000 0.0000
8     3 vs. 4 0.0037 0.0075
9     3 vs. 5 0.0000 0.0001
10    4 vs. 5 0.0000 0.0000
> 