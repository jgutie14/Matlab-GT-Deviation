%Time
timeWeeksWith22Entries=[0.29 0.29 0.57 0.57 1 1 2 2 3 3 4.29 4.29 6 6 10.57 10.57 18.14 18.14 24.57 24.57 30.57 30.57];
timeWeeksWith20Entries=[0.57 0.57 1 1 2 2 3 3 4.29 4.29 6 6 10.57 10.57 18.14 18.14 24.57 24.57 30.57 30.57];

%Neuptane weeks, HA data
wHAAS=[1.86 1.85 2.27 2.29 2.86 2.83 3.25 3.36 3.66 3.79 3.97 4.08 4.09 3.9 4.14 3.93 4.15 4.06 4.48 4.28 4.37 4.27];
wHAMO=[7.38 7.28 7.49 7.63 7.87 7.78 7.93 7.94 8.19 8.18 8.3 8.23 8.45 8.31 8.61 8.65 8.76 8.78 8.75 8.85 9.41 8.93];
wHASE=[1.13 1.14 1.29 1.28 1.51 1.38 1.56 1.55 1.7 1.74 1.72 1.71 1.8 1.76 1.88 1.89 2.01 2.0 1.98 1.96 2.17 2.10];

yywHAAS=0.2278.*timeWeeksWith22Entries+0.1329;
yywHAMO=0.1103.*timeWeeksWith22Entries+0.0341;
yywHASE=0.4751.*timeWeeksWith22Entries+0.3417;

% HB data
wHBAS=[0.13 0.17 0.24 0.24 0.33 0.34 0.44 0.49 0.56 0.57 0.62 0.68 0.72 0.77 0.98 1.09 1.32 1.43 1.73 1.58 1.87 1.78];
wHBMO=[5.83 5.86 7.88 7.74 11.15 11.80 13.98 14.26 13.31 14.5 14.7 15.52 16.04 16.22 16.27 16.52 17.19 17.48 17.84 17.66 17.8 17.7];
wHBSE=[1.06 1.06 1.46 1.36 1.9 2 2.84 2.91 2.88 3.13 3.4 4.05 4.45 4.44 5.01 5.2 5.84 6.15 6.4 6.16 6.59 6.58];

yywHBAS=0.4782.*timeWeeksWith22Entries+3.4931;
yywHBMO=0.0551.*timeWeeksWith22Entries+0.0418;
yywHBSE=0.1412.*timeWeeksWith22Entries+0.4353;

% MA DATA
%Concentration of experimental Arsenic, qt(exp)
wMAAS=[0.08 0.1 0.13 0.16 0.29 0.26 0.39 0.5 0.72 0.74 0.85 0.82 1.02 1.08 1.47 1.35 1.56 1.61 1.97 1.98];
%Concentration of experimental MO
wMAMO=[1.15 1.3 2.04 2.04 2.52 2.07 3.83 3.68 4.17 3.75 4.71 4.2 4.93 5.1 5.31 5.56 6.1 5.79 6.01 6.14 6.14 5.82];
%Concentration of experimental Selenium 
wMASE=[0.18 0.24 0.33 0.31 0.52 0.31 0.55 0.56 0.63 0.54 0.71 0.63 0.83 0.94 1.01 1.08 1.29 1.17 1.24 1.34 1.38 1.24];

%Values from the models, theoretical
yywMAAS=0.3449.*timeWeeksWith20Entries+5.9802;
yywMAMO=0.1576.*timeWeeksWith22Entries+0.2417;
yywMASE=0.6968.*timeWeeksWith22Entries+2.2518;

%List of modelValues
modelValue_yywMAAS = timeWeeksWith20Entries./yywMAAS;
modelValue_yywMAMO = timeWeeksWith22Entries./yywMAMO;
modelValue_yywMASE = timeWeeksWith22Entries./yywMASE;
modelValue_yywHBAS = timeWeeksWith22Entries./yywHBAS;
modelValue_yywHBMO = timeWeeksWith22Entries./yywHBMO;
modelValue_yywHBSE = timeWeeksWith22Entries./yywHBSE;
modelValue_yywHAAS = timeWeeksWith22Entries./yywHAAS;
modelValue_yywHAMO = timeWeeksWith22Entries./yywHAMO;
modelValue_yywHASE = timeWeeksWith22Entries./yywHASE;

%Calls the 'findNormalizedDeviation' function and displays the results
disp("yywMAAS Normalized Deviation " + findNormalizedDeviation(wMAAS,modelValue_yywMAAS))
    