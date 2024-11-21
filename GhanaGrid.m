% Case File Saved from Hawaii Case Example. To modify/replace Hawaii's data moving forward
function mpc = GhanaGrid
mpc.version = '1'; %Updated value
mpc.baseMVA =  100.00; %This is not updated; is Hawaii file's original value

% moving forward... every section is unedited unless otherwise specified by
% a comment below the section header/name

%% bus data 
%UPDATED to Ghana's Values
%bus_i type	Pd	    Qd	    Gs	    Bs	  area  Vm	        Va	        baseKV zone	Vmax	Vmin
mpc.bus = [
    1	2	27.90639269	9.172387711	0	0	1	1	0	161	1	1.1	0.9;
    2	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    3	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    4	1	97.57191781	32.0703385	0	0	1	1	0	161	1	1.1	0.9;
    5	2	8.252283105	2.712394288	0	0	1	1	0	33	1	1.1	0.9;
    6	3	2.328767123	0.765428738	0	0	1	1	0	161	1	1.1	0.9;
    7	2	16.94863014	5.570745331	0	0	1	1	0	161	1	1.1	0.9;
    8	2	2.796803653	0.919264906	0	0	1	1	0	161	1	1.1	0.9;
    9	2	8.124429224	2.670370749	0	0	1	1	0	161	1	1.1	0.9;
    10	2	5.739726027	1.886556713	0	0	1	1	0	161	1	1.1	0.9;
    11	2	4.799086758	1.240444808	0	0	1	1	0	161	1	1.1	0.9;
    12	2	6.212328767	1.83402729	0	0	1	1	0	161	1	1.1	0.9;
    13	2	15.14497717	4.977913269	0	0	1	1	0	34.5 1	1.1	0.9;
    14	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    15	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    16	2	2.423515982	0.796571182	0	0	1	1	0	161	1	1.1	0.9;
    17	2	9.858447489	3.240314991	0	0	1	1	0	161	1	1.1	0.9;
    18	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    19	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    20	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    21	2	4.401826484	1.446810399	0	0	1	1	0	34.5	1	1.1	0.9;
    22	2	25.35388128	8.333417781	0	0	1	1	0	161	1	1.1	0.9;
    23	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    24	2	9.348173516	3.072596047	0	0	1	1	0	330	1	1.1	0.9;
    25	2	6.642694064	2.183347954	0	0	1	1	0	330	1	1.1	0.9;
    26	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    27	2	4.252283105	1.397657867	0	0	1	1	0	161	1	1.1	0.9;
    28	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    29	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    30	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    31	2	2.105022831	0.691887546	0	0	1	1	0	161	1	1.1	0.9;
    32	2	6.5456621	2.15145509	0	0	1	1	0	161	1	1.1	0.9;
    33	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    34	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    35	2	8.26826484	2.71764723	0	0	1	1	0	161	1	1.1	0.9;
    36	2	35.65981735	10.87884355	0	0	1	1	0	161	1	1.1	0.9;
    37	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    38	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    39	2	8.397260274	2.760045979	0	0	1	1	0	161	1	1.1	0.9;
    40	2	4.721461187	1.551869245	0	0	1	1	0	161	1	1.1	0.9;
    41	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    42	2	12.52283105	4.116055518	0	0	1	1	0	161	1	1.1	0.9;
    43	2	9.413242009	3.093983027	0	0	1	1	0	161	1	1.1	0.9;
    44	2	3.692922374	1.213804886	0	0	1	1	0	161	1	1.1	0.9;
    45	1	7.278538813	2.392340017	0	0	1	1	0	161	1	1.1	0.9;
    46	2	5.587899543	1.836653761	0	0	1	1	0	161	1	1.1	0.9;
    47	2	124.7865297	41.01534885	0	0	1	1	0	161	1	1.1	0.9;
    48	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    49	1	35.37785388	11.62813825	0	0	1	1	0	161	1	1.1	0.9;
    50	2	8.49543379	2.792314053	0	0	1	1	0	161	1	1.1	0.9;
    51	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    52	2	4.431506849	1.456565863	0	0	1	1	0	161	1	1.1	0.9;
    53	2	8.115296804	2.667369068	0	0	1	1	0	161	1	1.1	0.9;
    54	2	12.35388128	4.060524414	0	0	1	1	0	161	1	1.1	0.9;
    55	2	6.26826484	2.06027902	0	0	1	1	0	161	1	1.1	0.9;
    56	2	0.780821918	0.256643753	0	0	1	1	0	161	1	1.1	0.9;
    57	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    58	2	15.34474886	5.043575048	0	0	1	1	0	161	1	1.1	0.9;
    59	2	13.74543379	4.517905606	0	0	1	1	0	161	1	1.1	0.9;
    60	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    61	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    62	2	7.764840183	2.552179547	0	0	1	1	0	161	1	1.1	0.9;
    63	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    64	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    65	2	3.578767123	1.17628387	0	0	1	1	0	161	1	1.1	0.9;
    66	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    67	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    68	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    69	2	6.410958904	2.107180291	0	0	1	1	0	161	1	1.1	0.9;
    70	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    71	1	13.84474886	4.55054889	0	0	1	1	0	161	1	1.1	0.9;
    72	2	21.70091324	7.132745251	0	0	1	1	0	161	1	1.1	0.9;
    73	1	76.50570776	25.1462101	0	0	1	1	0	161	1	1.1	0.9;
    74	2	7.00456621	2.302289577	0	0	1	1	0	161	1	1.1	0.9;
    75	2	6.805936073	2.237003008	0	0	1	1	0	161	1	1.1	0.9;
    76	2	11.41552511	3.752101657	0	0	1	1	0	34.5	1	1.1	0.9;
    77	2	3.819634703	1.255453215	0	0	1	1	0	161	1	1.1	0.9;
    78	1	5.262557078	1.603648248	0	0	1	1	0	330	1	1.1	0.9;
    79	1	9.849315069	3.23731331	0	0	1	1	0	161	1	1.1	0.9;
    80	2	26.543379	8.724386774	0	0	1	1	0	161	1	1.1	0.9;
    81	2	9.381278539	3.083477142	0	0	1	1	0	161	1	1.1	0.9;
    82	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    83	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    84	2	4.896118721	1.609276401	0	0	1	1	0	161	1	1.1	0.9
];

%% generator data 
%UPDATED to Ghana's Values
%	bus	Pg	    Qg	    Qmax	Qmin	Vg	   mBase status	Pmax	Pmin
mpc.gen = [
    6	1020	0	    510	    -510	1	100	    1	    1020.00	900     0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    20	400	    0	    200	    -200	1	100	    1	    404.00	330.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    45	160	    0	    80	    -80	    1	100	    1	    160.00	140.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    73	330	    0	    165	    -165	1	100    	1	    330.00	315.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    73	330	    0	    165	    -165	1	100	    1	    340.00	330.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    34	560	    0	    280	    -280	1	100	    1	    560.00	530.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    57	110	    0	    55	    -55	    1	100	    1	    110.00	100.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    57	80	    0	    40	    -40	    1	100	    1	    80.00	70.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    57	110	    0	    55	    -55	    1	100	    1	    110.00	100.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    6	220	    0	    110	    -110	1	100	    1	    220.00	200.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    78	250	    0	    125	    -125	1	100	    1	    250.00	230.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    4	450	    0	    225	    -225	1	100	    1	    470.00	450.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    49	370	    0	    185	    -185	1	100	    1	    370.00	330.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    49	340	    0	    170	    -170	1	100	    1	    360.00	340.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    73	200	    0	    100	    -100	1	100	    1	    210.00	201.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    49	194	    0	    97	    -97	    1	100	    1	    200.00	190.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    8	188	    0	    94	    -94	    1	100	    1	    190.00	157.80	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    17	2.5	    0	    1.25	-1.25	1	100	    1	    2.50	2.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    80	20	    0	    10	    -10	    1	100	    1	    20.00	16.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    80	20	    0	    10	    -10	    1	100	    1	    20.00	16.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    79	6.5	    0	    3.25	-3.25	1	100	    1	    6.50	4.50	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    79	13	    0	    6.5	    -6.5	1	100	    1	    17.00	10.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    32	0.045	0	    0.0225	-0.0225	1	100	    1	    0.05	0.05	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    71	50	    0	    25	    -25	    1	100	    1	    55.00	49.50	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0;
    78	0.1	    0	    0.05	-0.05	1	100	    1	    0.10	0.10	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0.0000	0	0	0	0
];

%% generator cost data
%UPDATED to Ghana's Values
%2 strtup shtdown n	c(n-1)	...	c0
mpc.gencost = [
    2	0	0	3	0	10200	0;
    2	0	0	3	0	4000	0;
    2	0	0	3	0	1600	0;
    2	0	0	3	0	23100	0;
    2	0	0	3	0	3300	0;
    2	0	0	3	0	39200	0;
    2	0	0	3	0	1100	0;
    2	0	0	3	0	5600	0;
    2	0	0	3	0	1100	0;
    2	0	0	3	0	15400	0;
    2	0	0	3	0	2500	0;
    2	0	0	3	0	31500	0;
    2	0	0	3	0	3700	0;
    2	0	0	3	0	23800	0;
    2	0	0	3	0	2000	0;
    2	0	0	3	0	13580	0;
    2	0	0	3	0	13160	0;
    2	0	0	3	0	25      0;
    2	0	0	3	0	200	    0;
    2	0	0	3	0	200	    0;
    2	0	0	3	0	65	    0;
    2	0	0	3	0	130	    0;
    2	0	0	3	0	0.45	0;
    2	0	0	3	0	500	    0;
    2	0	0	3	0	1	    0
];

%% branch data
% UPDATED to Ghana's values
%fbus tbus r	     x	        b	    rateA	rateB	rateC	ratio  angle status angmin	angmax
mpc.branch = [
    1	4	0.00575788	0.013078199	0.052144857	144.9	144.9	144.9	0	0	1	-30	30;
    1	4	0.005711817	0.012973574	0.051727698	144.9	144.9	144.9	0	0	1	-30	30;
    1	4	0.005711817	0.012973574	0.051727698	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.013810578	0.055064969	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.013810578	0.055064969	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.013810578	0.055064969	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.013810578	0.055064969	144.9	144.9	144.9	0	0	1	-30	30;
    2	22	0.027315381	0.062042977	0.247375203	144.9	144.9	144.9	0	0	1	-30	30;
    2	22	0.027315381	0.062042977	0.247375203	144.9	144.9	144.9	0	0	1	-30	30;
    2	61	0.00151539	0.00925449	0.902154665	396	    396	    396     0	0	1	-30	30;
    2	61	0.00151539	0.00925449	0.902154665	396	    396	    396	    0	    0	    1	    -30	    30;
    2	73	0.006034258	0.013705953	0.05464781	144.9	144.9	144.9	0	0	1	-30	30;
    2	73	0.006034258	0.013705953	0.05464781	144.9	144.9	144.9	0	0	1	-30	30;
    2	75	0.026071679	0.059218086	0.236111914	144.9	144.9	144.9	0	0	1	-30	30;
    2	78	0.007611708	0.046484711	4.531464944	396	396	396	0	0	1	-30	30;
    2	80	0.061355966	0.13936129	0.5556556	144.9	144.9	144.9	0	0	1	-30	30;
    4	45	0.036481926	0.08286347	0.330389816	144.9	144.9	144.9	0	0	1	-30	30;
    4	49	0.004882682	0.011090313	0.044218839	144.9	144.9	144.9	0	0	1	-30	30;
    4	49	0.004882682	0.011090313	0.044218839	144.9	144.9	144.9	0	0	1	-30	30;
    4	80	0.026624436	0.060473593	0.24111782	144.9	144.9	144.9	0	0	1	-30	30;
    5	10	0.032152	0.073028664	0.291176883	144.9	144.9	144.9	0	0	1	-30	30;
    5	10	0.032152	0.073028664	0.291176883	144.9	144.9	144.9	0	0	1	-30	30;
    5	48	0.001289765	0.002929517	0.011680448	144.9	144.9	144.9	0	0	1	-30	30;
    5	48	0.001289765	0.002929517	0.011680448	144.9	144.9	144.9	0	0	1	-30	30;
    6	10	0.025380734	0.057648702	0.229854531	144.9	144.9	144.9	0	0	1	-30	30;
    6	10	0.025380734	0.057648702	0.229854531	144.9	144.9	144.9	0	0	1	-30	30;
    6	46	0.011331507	0.025737896	0.102621079	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.01496146	0.059653717	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.01496146	0.059653717	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.01496146	0.059653717	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.01496146	0.059653717	144.9	144.9	144.9	0	0	1	-30	30;
    6	47	0.102306007	0.232373442	0.926509825	144.9	144.9	144.9	0	0	1	-30	30;
    6	72	0.027499634	0.062461479	0.249043839	144.9	144.9	144.9	0	0	1	-30	30;
    6	72	0.027499634	0.062461479	0.249043839	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.070936152	0.282833706	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.070936152	0.282833706	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.070936152	0.282833706	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.070936152	0.282833706	144.9	144.9	144.9	0	0	1	-30	30;
    7	54	0.04564847	0.103683963	0.413404429	144.9	144.9	144.9	0	0	1	-30	30;
    7	72	0.026025616	0.05911346	0.235694755	144.9	144.9	144.9	0	0	1	-30	30;
    8	16	0.023123645	0.052522048	0.209413747	144.9	144.9	144.9	0	0	1	-30	30;
    9	11	0.02395278	0.054405308	0.216922606	144.9	144.9	144.9	0	0	1	-30	30;
    9	14	0.230269667	0.816036667	0.000159444	27	27	27	0	0	1	-30	30;
    9	29	0.022064195	0.050115659	0.199819093	144.9	144.9	144.9	0	0	1	-30	30;
    9	35	0.031553181	0.071668531	0.285753818	144.9	144.9	144.9	0	0	1	-30	30;
    10	32	0.109775992	0.19626129	0.029657223	55.2	55.2	55.2	0	0	1	-30	30;
    10	69	0.09203138	0.164536862	0.024863316	55.2	55.2	55.2	0	0	1	-30	30;
    11	24	0.008199221	0.018623356	0.074254277	144.9	144.9	144.9	0	0	1	-30	30;
    11	29	0.001888585	0.004289649	0.017103513	144.9	144.9	144.9	0	0	1	-30	30;
    11	29	0.001888585	0.004289649	0.017103513	144.9	144.9	144.9	0	0	1	-30	30;
    12	66	0.012483083	0.028353536	0.113050051	144.9	144.9	144.9	0	0	1	-30	30;
    12	84	0.013174029	0.02992292	0.119307434	144.9	144.9	144.9	0	0	1	-30	30;
    13	71	0.016260252	0.036932834	0.147257077	144.9	144.9	144.9	0	0	1	-30	30;
    15	25	0.008504954	0.051939766	5.063239597	396	396	396	0	0	1	-30	30;
    16	24	0.030079164	0.068320512	0.272404735	144.9	144.9	144.9	0	0	1	-30	30;
    16	62	0.00621851	0.014124455	0.056316446	144.9	144.9	144.9	0	0	1	-30	30;
    17	52	0.012805524	0.029085915	0.115970163	144.9	144.9	144.9	0	0	1	-30	30;
    17	74	0.073332356	0.166563944	0.664116903	144.9	144.9	144.9	0	0	1	-30	30;
    17	84	0.023860654	0.054196057	0.216088289	144.9	144.9	144.9	0	0	1	-30	30;
    18	41	0.078873419	0.187207941	3.521068548	218.25	218.25	218.25	0	0	1	-30	30;
    18	55	0.005877351	0.035892989	3.498953069	396	396	396	0	0	1	-30	30;
    18	60	0.033756441	0.080121719	1.506955645	218.25	218.25	218.25	0	0	1	-30	30;
    18	60	0.033756441	0.080121719	1.506955645	218.25	218.25	218.25	0	0	1	-30	30;
    18	83	0.03820717	0.09068563	1.705645161	218.25	218.25	218.25	0	0	1	-30	30;
    19	26	0.022386636	0.050848038	0.202739205	144.9	144.9	144.9	0	0	1	-30	30;
    19	26	0.022386636	0.050848038	0.202739205	144.9	144.9	144.9	0	0	1	-30	30;
    19	27	0.010133868	0.02301763	0.091774949	144.9	144.9	144.9	0	0	1	-30	30;
    19	31	0.018517341	0.042059488	0.167697861	144.9	144.9	144.9	0	0	1	-30	30;
    20	40	0.031000424	0.070413024	0.280747912	144.9	144.9	144.9	0	0	1	-30	30;
    20	65	0.065087072	0.147835963	0.589445467	144.9	144.9	144.9	0	0	1	-30	30;
    20	71	0.063797307	0.144906447	0.577765019	144.9	144.9	144.9	0	0	1	-30	30;
    20	76	0.049333513	0.11205401	0.446777138	144.9	144.9	144.9	0	0	1	-30	30;
    21	40	0.038785078	0.088094749	0.351247759	144.9	144.9	144.9	0	0	1	-30	30;
    21	64	0.040673662	0.092384399	0.368351272	144.9	144.9	144.9	0	0	1	-30	30;
    21	74	0.047030361	0.106822731	0.425919195	144.9	144.9	144.9	0	0	1	-30	30;
    22	49	0.055782339	0.126701593	0.505179378	144.9	144.9	144.9	0	0	1	-30	30;
    22	80	0.034040585	0.077318313	0.308280397	144.9	144.9	144.9	0	0	1	-30	30;
    22	80	0.034040585	0.077318313	0.308280397	144.9	144.9	144.9	0	0	1	-30	30;
    23	34	0.004914591	0.030013416	2.925795174	396	396	396	0	0	1	-30	30;
    24	29	0.006310636	0.014333706	0.057150764	144.9	144.9	144.9	0	0	1	-30	30;
    24	54	0.014325605	0.032538559	0.129736405	144.9	144.9	144.9	0	0	1	-30	30;
    25	61	0.002467723	0.015070386	1.469105073	396	396	396	0	0	1	-30	30;
    25	61	0.002467723	0.015070386	1.469105073	396	396	396	0	0	1	-30	30;
    26	27	0.032520505	0.073865669	0.294514154	144.9	144.9	144.9	0	0	1	-30	30;
    26	31	0.040903977	0.092907527	0.370437066	144.9	144.9	144.9	0	0	1	-30	30;
    27	51	0.005995274	0.014229926	0.267641129	218.25	218.25	218.25	0	0	1	-30	30;
    27	62	0.014368335	0.034103585	0.641431452	218.25	218.25	218.25	0	0	1	-30	30;
    27	63	0.029326036	0.069606044	1.309173387	218.25	218.25	218.25	0	0	1	-30	30;
    28	68	0.001658269	0.003766521	0.015017719	144.9	144.9	144.9	0	0	1	-30	30;
    28	68	0.001658269	0.003766521	0.015017719	144.9	144.9	144.9	0	0	1	-30	30;
    3	27	0.00020323	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    30	39	0.048274064	0.109647622	0.437182484	144.9	144.9	144.9	0	0	1	-30	30;
    30	39	0.048274064	0.109647622	0.437182484	144.9	144.9	144.9	0	0	1	-30	30;
    30	47	0.004790556	0.010881062	0.043384521	144.9	144.9	144.9	0	0	1	-30	30;
    30	47	0.004790556	0.010881062	0.043384521	144.9	144.9	144.9	0	0	1	-30	30;
    30	54	0.023307897	0.05294055	0.211082382	144.9	144.9	144.9	0	0	1	-30	30;
    30	59	0.020359863	0.046244512	0.184384216	144.9	144.9	144.9	0	0	1	-30	30;
    31	73	0.032336252	0.073447166	0.292845519	144.9	144.9	144.9	0	0	1	-30	30;
    32	44	0.062858034	0.112379752	0.016981807	55.2	55.2	55.2	0	0	1	-30	30;
    33	68	0.001750395	0.003975773	0.015852037	144.9	144.9	144.9	0	0	1	-30	30;
    34	70	0.000611717	0.003735758	0.364172525	396	396	396	0	0	1	-30	30;
    34	70	0.000611717	0.003735758	0.364172525	396	396	396	0	0	1	-30	30;
    35	50	0.037587439	0.085374484	0.340401629	144.9	144.9	144.9	0	0	1	-30	30;
    36	40	0.005477649	0.033452011	3.26099943	396	396	396	0	0	1	-30	30;
    36	42	0.01667482	0.037874465	0.151011507	144.9	144.9	144.9	0	0	1	-30	30;
    36	47	0.008429536	0.019146484	0.076340071	144.9	144.9	144.9	0	0	1	-30	30;
    37	68	0.002717719	0.00617291	0.024612373	144.9	144.9	144.9	0	0	1	-30	30;
    37	68	0.002717719	0.00617291	0.024612373	144.9	144.9	144.9	0	0	1	-30	30;
    38	81	0.004730381	0.028888444	2.816129584	396	396	396	0	0	1	-30	30;
    39	47	0.053064619	0.120528683	0.480567005	144.9	144.9	144.9	0	0	1	-30	30;
    39	59	0.068633926	0.155892134	0.621566699	144.9	144.9	144.9	0	0	1	-30	30;
    39	71	0.017872459	0.04059473	0.161857637	144.9	144.9	144.9	0	0	1	-30	30;
    40	55	0.006197112	0.037845771	3.689315979	396	396	396	0	0	1	-30	30;
    40	76	0.028466957	0.064658617	0.257804175	144.9	144.9	144.9	0	0	1	-30	30;
    42	58	0.023906717	0.054300683	0.216505448	144.9	144.9	144.9	0	0	1	-30	30;
    43	44	0.107369943	0.191959672	0.029007202	55.2	55.2	55.2	0	0	1	-30	30;
    45	78	0.024643725	0.055974692	0.223179989	144.9	144.9	144.9	0	0	1	-30	30;
    45	78	0.024643725	0.055974692	0.223179989	144.9	144.9	144.9	0	0	1	-30	30;
    45	78	0.024643725	0.055974692	0.223179989	144.9	144.9	144.9	0	0	1	-30	30;
    45	78	0.024643725	0.055974692	0.223179989	144.9	144.9	144.9	0	0	1	-30	30;
    46	78	0.024597662	0.055870067	0.222762831	144.9	144.9	144.9	0	0	1	-30	30;
    47	76	0.054446511	0.123667451	0.493081771	144.9	144.9	144.9	0	0	1	-30	30;
    49	80	0.021741754	0.04938328	0.196898981	144.9	144.9	144.9	0	0	1	-30	30;
    49	80	0.021741754	0.04938328	0.196898981	144.9	144.9	144.9	0	0	1	-30	30;
    50	71	0.025518923	0.057962579	0.231106008	144.9	144.9	144.9	0	0	1	-30	30;
    52	77	0.046569731	0.105776475	0.421747606	144.9	144.9	144.9	0	0	1	-30	30;
    53	58	0.019853169	0.045093631	0.179795468	144.9	144.9	144.9	0	0	1	-30	30;
    54	59	0.00257953	0.005859033	0.023360896	144.9	144.9	144.9	0	0	1	-30	30;
    55	64	0.00409961	0.009311678	0.037127138	144.9	144.9	144.9	0	0	1	-30	30;
    55	74	0.005619691	0.012764322	0.050893381	144.9	144.9	144.9	0	0	1	-30	30;
    55	74	0.005619691	0.012764322	0.050893381	144.9	144.9	144.9	0	0	1	-30	30;
    56	62	0.012943714	0.029399792	0.117221639	144.9	144.9	144.9	0	0	1	-30	30;
    56	75	0.003961421	0.008997801	0.035875662	144.9	144.9	144.9	0	0	1	-30	30;
    57	78	0.00105945	0.002406389	0.009594654	144.9	144.9	144.9	0	0	1	-30	30;
    57	78	0.00105945	0.002406389	0.009594654	144.9	144.9	144.9	0	0	1	-30	30;
    58	72	0.02805239	0.063716986	0.254049745	144.9	144.9	144.9	0	0	1	-30	30;
    59	62	0.051544539	0.117076039	0.466800763	144.9	144.9	144.9	0	0	1	-30	30;
    62	75	0.012160642	0.027621157	0.110129939	144.9	144.9	144.9	0	0	1	-30	30;
    65	79	0.043022877	0.097720304	0.389626374	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000414567	0.00094163	0.00375443	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000414567	0.00094163	0.00375443	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.00046063	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000230315	0.000523128	0.002085794	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000506693	0.001150882	0.004588747	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000230315	0.000523128	0.002085794	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.00261564	0.010428971	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.00261564	0.010428971	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.00261564	0.010428971	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.00261564	0.010428971	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001105513	0.002511014	0.010011813	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001105513	0.002511014	0.010011813	144.9	144.9	144.9	0	0	1	-30	30;
    70	78	0.000298907	0.001825427	0.177947938	396	396	396	0	0	1	-30	30;
    70	78	0.000298907	0.001825427	0.177947938	396	396	396	0	0	1	-30	30;
    70	78	0.002994097	0.006800664	0.027115326	144.9	144.9	144.9	0	0	1	-30	30;
    71	76	0.025334671	0.057544076	0.229437372	144.9	144.9	144.9	0	0	1	-30	30;
    73	75	0.023261834	0.052835925	0.210665224	144.9	144.9	144.9	0	0	1	-30	30;
    74	81	0.046016975	0.104520968	0.4167417	144.9	144.9	144.9	0	0	1	-30	30;
    74	81	0.003201088	0.01954905	1.905698271	396	396	396	0	0	1	-30	30;
    77	79	0.068357548	0.15526438	0.619063746	144.9	144.9	144.9	0	0	1	-30	30;
    82	84	0.115536	0.40944	0.00014821	31.5	31.5	31.5	0	0	1	-30	30

];

%% bus names
% UPDATED to have Ghana's bus names
mpc.bus_name = { % bus name format is [NAME][ANY NUMBERS/IDENTIFIERS from ECOWAS FILE]_[CORRESPONDING # in BUS SECTION]
    'A3BSP_1';
    'Aboadze_2';
    'Abobo_3';
    'Achimota_4';
    'Aflao_5';
    'Akosombo_6';
    'Akwatia_7';
    'Akyempim_8';
    'Asawinso_9';
    'Asiekpe_10';
    'Ayanfuri_11';
    'Bawku_12';
    'Berekum_13';
    'Bibiani_14';
    'Bingerville_15';
    'Bogoso_16';
    'Bolgatanga_17';
    'Bolgatanga2_18';
    'BRElubo_19';
    'Bui_20';
    'Buipe_21';
    'CapeCoast_22';
    'Davie_23';
    'Dunkwa_24';
    'Dunkwa2_25';
    'Efasu_26';
    'Elubo_27';
    'EnclavedPower_28';
    'ESAyanfuri_29';
    'ESKenyase_30';
    'Essiama_31';
    'Ho_32';
    'Industry_33';
    'JNSunonAsogli_34';
    'Juabeso_35';
    'K2BSP_36';
    'KarPower_37';
    'Kara_38';
    'Kenyase_39';
    'Kintampo_40';
    'Kodeni_41';
    'Konongo_42';
    'Kpandue_43';
    'Kpevee_44';
    'Kpong_45';
    'KpongGS_46';
    'Kumasi_47';
    'LomeAflao_48';
    'Mallam_49';
    'Mim_50';
    'Moyassue_51';
    'Navrongo_52';
    'NewAbirem_53';
    'NewObuasi_54';
    'NewTamale_55';
    'NewTarkwa_56';
    'NewTema_57';
    'Nkawkaw_58';
    'Obuasi_59';
    'OuagaSud_60';
    'PP330_61';
    'Prestea_62';
    'Riviera_63';
    'Savannah_64';
    'Sawla_65';
    'Sinkasse_66';
    'SmelterI_67';
    'SmelterII_68';
    'Sogakope_69';
    'SunonAsogli_70';
    'Sunyani_71';
    'Tafo_72';
    'Takoradi_73';
    'Tamale_74';
    'Tarkwa_75';
    'Techiman_76';
    'Tumu_77';
    'Volta_78';
    'Wa_79';
    'Winneba_80';
    'Yendi_81';
    'Youga_82';
    'Zagtouli_83';
    'Zebilla_84';
};

%% Generator Fuel Types
mpc.genfuel = {
'hydro';
'hydro';
'hydro';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'thermal';
'solar';
'solar';
'solar';
'solar';
'solar';
'hydro';
'solar';
'biogas';
'solar';
'wind';
'solar'
};
