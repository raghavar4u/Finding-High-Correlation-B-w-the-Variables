# Finding-High-Correlation-B-w-the-Variables
Easiest way to identify the correlation among the variables 

# Function in deatil 

## Type 
Default = B

B = Both Postive and negative correlation 
P = Positively correlated variables 
N = Negatively correlated variables

Example:

highcorr(mtcars)
   Var1 Var2 Correlation
1   cyl disp   0.9020329
2  disp   wt   0.8879799
3   mpg   wt  -0.8676594
4   mpg  cyl  -0.8521620
5   mpg disp  -0.8475514
6   cyl   hp   0.8324475
7   cyl   vs  -0.8108118
8    am gear   0.7940588
9  disp   hp   0.7909486
10  cyl   wt   0.7824958
11  mpg   hp  -0.7761684
12   hp carb   0.7498125
13 qsec   vs   0.7445354
14   hp   vs  -0.7230967
15 drat   am   0.7127111
16 drat   wt  -0.7124406
17 disp   vs  -0.7104159
18 disp drat  -0.7102139
19   hp qsec  -0.7082234
20  cyl drat  -0.6999381
21 drat gear   0.6996101
22   wt   am  -0.6924953
23  mpg drat   0.6811719
24  mpg   vs   0.6640389
25   hp   wt   0.6587479
26 qsec carb  -0.6562492
27  mpg   am   0.5998324
28  cyl qsec  -0.5912421
29 disp   am  -0.5912270
30   wt gear  -0.5832870
31   vs carb  -0.5696071
32 disp gear  -0.5555692
33   wt   vs  -0.5549157
34  mpg carb  -0.5509251
35  cyl carb   0.5269883
36  cyl   am  -0.5226070
37  cyl gear  -0.4926866
38  mpg gear   0.4802848
39   hp drat  -0.4487591
40 drat   vs   0.4402785
41 disp qsec  -0.4336979
42   wt carb   0.4276059
43  mpg qsec   0.4186840

### Typ = Postive 

highcorr(mtcars,typ='P')
   Var1 Var2 Correlation
1   cyl disp   0.9020329
2  disp   wt   0.8879799
3   cyl   hp   0.8324475
4    am gear   0.7940588
5  disp   hp   0.7909486
6   cyl   wt   0.7824958
7    hp carb   0.7498125
8  qsec   vs   0.7445354
9  drat   am   0.7127111
10 drat gear   0.6996101
11  mpg drat   0.6811719
12  mpg   vs   0.6640389
13   hp   wt   0.6587479
14  mpg   am   0.5998324
15  cyl carb   0.5269883
16  mpg gear   0.4802848
17 drat   vs   0.4402785
18   wt carb   0.4276059
19  mpg qsec   0.4186840


## Limt 
Setting the correlation limit

 highcorr(mtcars,typ='P',limit=0.8)
  Var1 Var2 Correlation
1  cyl disp   0.9020329
2 disp   wt   0.8879799
3  cyl   hp   0.8324475

## Varaible1

Finading correlation W.R.To Variable wise 

highcorr(mtcars,typ='B',limit=0.4,Variable1="mpg")
   Var1 Var2 Correlation
3   mpg   wt  -0.8676594
4   mpg  cyl  -0.8521620
5   mpg disp  -0.8475514
11  mpg   hp  -0.7761684
23  mpg drat   0.6811719
24  mpg   vs   0.6640389
27  mpg   am   0.5998324
34  mpg carb  -0.5509251
38  mpg gear   0.4802848
43  mpg qsec   0.4186840



