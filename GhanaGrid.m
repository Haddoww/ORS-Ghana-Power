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
    1	1	27.90639269	9.172387711	0	0	1	1	0	161	1	1.1	0.9;
    2	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    3	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    4	2	97.57191781	32.0703385	0	0	1	1	0	161	1	1.1	0.9;
    5	1	8.252283105	2.712394288	0	0	1	1	0	33	1	1.1	0.9;
    6	3	2.328767123	0.765428738	0	0	1	1	0	161	1	1.1	0.9;
    7	1	16.94863014	5.570745331	0	0	1	1	0	161	1	1.1	0.9;
    8	2	2.796803653	0.919264906	0	0	1	1	0	161	1	1.1	0.9;
    9	1	8.124429224	2.670370749	0	0	1	1	0	161	1	1.1	0.9;
    10	1	5.739726027	1.886556713	0	0	1	1	0	161	1	1.1	0.9;
    11	1	4.799086758	1.240444808	0	0	1	1	0	161	1	1.1	0.9;
    12	1	6.212328767	1.83402729	0	0	1	1	0	161	1	1.1	0.9;
    13	1	15.14497717	4.977913269	0	0	1	1	0	34.5 1	1.1	0.9;
    14	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    15	1	8.525684932	2.802257123	0	0	1	1	0	161	1	1.1	0.9;
    16	1	2.423515982	0.796571182	0	0	1	1	0	161	1	1.1	0.9;
    17	2	9.858447489	3.240314991	0	0	1	1	0	161	1	1.1	0.9;
    18	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    19	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    20	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    21	1	4.401826484	1.446810399	0	0	1	1	0	34.5 1	1.1	0.9;
    22	1	25.35388128	8.333417781	0	0	1	1	0	161	1	1.1	0.9;
    23	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    24	1	9.348173516	3.072596047	0	0	1	1	0	330	1	1.1	0.9;
    25	1	6.642694064	2.183347954	0	0	1	1	0	330	1	1.1	0.9;
    26	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    27	1	4.252283105	1.397657867	0	0	1	1	0	161	1	1.1	0.9;
    28	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    29	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    30	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    31	1	2.105022831	0.691887546	0	0	1	1	0	161	1	1.1	0.9;
    32	2	6.5456621	2.15145509	0	0	1	1	0	161	1	1.1	0.9;
    33	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    34	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    35	1	8.26826484	2.71764723	0	0	1	1	0	161	1	1.1	0.9;
    36	1	35.65981735	10.87884355	0	0	1	1	0	161	1	1.1	0.9;
    37	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    38	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    39	1	8.397260274	2.760045979	0	0	1	1	0	161	1	1.1	0.9;
    40	1	4.721461187	1.551869245	0	0	1	1	0	161	1	1.1	0.9;
    41	1	28.2668379	9.290860321	0	0	1	1	0	161	1	1.1	0.9;
    42	1	12.52283105	4.116055518	0	0	1	1	0	161	1	1.1	0.9;
    43	1	9.413242009	3.093983027	0	0	1	1	0	161	1	1.1	0.9;
    44	1	3.692922374	1.213804886	0	0	1	1	0	161	1	1.1	0.9;
    45	2	7.278538813	2.392340017	0	0	1	1	0	161	1	1.1	0.9;
    46	1	5.587899543	1.836653761	0	0	1	1	0	161	1	1.1	0.9;
    47	1	124.7865297	41.01534885	0	0	1	1	0	161	1	1.1	0.9;
    48	1	81.64726027	26.83615668	0	0	1	1	0	161	1	1.1	0.9;
    49	2	35.37785388	11.62813825	0	0	1	1	0	161	1	1.1	0.9;
    50	1	8.49543379	2.792314053	0	0	1	1	0	161	1	1.1	0.9;
    51	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    52	1	4.431506849	1.456565863	0	0	1	1	0	161	1	1.1	0.9;
    53	1	8.115296804	2.667369068	0	0	1	1	0	161	1	1.1	0.9;
    54	1	12.35388128	4.060524414	0	0	1	1	0	161	1	1.1	0.9;
    55	1	6.26826484	2.06027902	0	0	1	1	0	161	1	1.1	0.9;
    56	1	0.780821918	0.256643753	0	0	1	1	0	161	1	1.1	0.9;
    57	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    58	1	15.34474886	5.043575048	0	0	1	1	0	161	1	1.1	0.9;
    59	1	13.74543379	4.517905606	0	0	1	1	0	161	1	1.1	0.9;
    60	1	28.2668379	9.290860321	0	0	1	1	0	161	1	1.1	0.9;
    61	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    62	1	7.764840183	2.552179547	0	0	1	1	0	161	1	1.1	0.9;
    63	1	8.525684932	2.802257123	0	0	1	1	0	161	1	1.1	0.9;
    64	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    65	1	3.578767123	1.17628387	0	0	1	1	0	161	1	1.1	0.9;
    66	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    67	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    68	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    69	1	6.410958904	2.107180291	0	0	1	1	0	161	1	1.1	0.9;
    70	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    71	2	13.84474886	4.55054889	0	0	1	1	0	161	1	1.1	0.9;
    72	1	21.70091324	7.132745251	0	0	1	1	0	161	1	1.1	0.9;
    73	2	76.50570776	25.1462101	0	0	1	1	0	161	1	1.1	0.9;
    74	1	7.00456621	2.302289577	0	0	1	1	0	161	1	1.1	0.9;
    75	1	6.805936073	2.237003008	0	0	1	1	0	161	1	1.1	0.9;
    76	1	11.41552511	3.752101657	0	0	1	1	0	34.5	1	1.1	0.9;
    77	1	3.819634703	1.255453215	0	0	1	1	0	161	1	1.1	0.9;
    78	2	5.262557078	1.603648248	0	0	1	1	0	330	1	1.1	0.9;
    79	2	9.849315069	3.23731331	0	0	1	1	0	161	1	1.1	0.9;
    80	2	26.543379	8.724386774	0	0	1	1	0	161	1	1.1	0.9;
    81	1	9.381278539	3.083477142	0	0	1	1	0	161	1	1.1	0.9;
    82	1	28.2668379	9.290860321	0	0	1	1	0	161	1	1.1	0.9;
    83	1	28.2668379	9.290860321	0	0	1	1	0	161	1	1.1	0.9;
    84	1	4.896118721	1.609276401	0	0	1	1	0	161	1	1.1	0.9
];

%% generator data 
%UPDATED to Ghana's Values
% updated Pmin values using new source (Economic Case for Bulk Energy Storage in Transmission Systems with High Percentages of Renewable Resources)
%updated the Qmax and Qmin values ac to A Methodology for the Creation of Geographically Realistic Synthetic Power Flow Models FOR EVERYTHING EXCEPT FROM SOLAR ONWARDS.
%last 5 generators are SOLAR - AS OF NOW, I put at status = 1 to get projected Pg and Qg values. These values made more sense as compared to status =0 which put Pg value of Akosombo = 0
%	bus	        Pg	    Qg	    Qmax	    Qmin	Vg	    mBase   status	Pmax	Pmin
mpc.gen = [
    6	        4.298  0.130	            391.68   -49.98	1	100	    1	    1020.00	204.00  ;
    20	        0.747  0.173	            153.6     -19.6 1	100	    1	    404.00	80.80	;
    45	        1.046  0.387	            61.44     -7.84	1	100	    1	    160.00	32.00	;
    73	        0.009  0.017	            167.97   -36.63	1	100    	1	    330.00	16.50	;
    73	        0.009  0.017	            167.97   -36.63	1	100	    1	    340.00	17.00	;
    34	        0.009 -0.077	            285.04   -62.16	1	100	    1	    560.00	28.00	;
    57	        0.010 -0.019               55.99    -12.21 1	100	    1	    110.00	5.50	;
    57	        0.010  0.132	            40.72     -8.88 1	100	    1	    80.00	11.00	;
    57	        0.010 -0.019	            55.99    -12.21 1	100	    1	    110.00	12.50	;
    6	        0.018  0.622                111.98   -24.42	1	100	    1	    220.00	23.50	;
    78	        0.014 -0.050	            127.25   -27.75	1	100	    1	    250.00	18.50	;
    4	        0.012  0.286               229.05   -49.95	1	100	    1	    470.00	18.00	;
    49	        0.010 -0.190               188.33   -41.07	1	100	    1	    370.00	10.50	;
    49	        0.010 -0.072	            173.06   -37.74	1	100	    1	    360.00	10.00	;
    73	        0.009  0.439	            101.8     -22.2	1	100	    1	    210.00	9.50	;
    49	        0.011  0.418	            98.746  -21.534 1	100	    1	    200.00	0.00	;
    8	        0.010  0.130	            95.692  -20.868 1	100	    1	    190.00	0.00	;
    17	        0.014  0.007	            1.45	-1.45   1	100	    1	    2.50	0.00	;
    80	        0.144  0.021	            9.16    -9.16   1	100	    1	    20.00	0.00	;
    80	        0.144  0.021	            9.16    -9.16   1	100	    1	    20.00	0.00	;
    79	        0.033 -0.017	            2.98    -2.98   1	100	    1	    6.50	0.00	;
    79	        0.078 -0.124	            7.79    -7.79  	1	100	    1	    17.00	0.00	;
    32	        0.000 -0.001	          -0.002	-0.0225	1	100	    1	    0.05	0.00	;
    71	        0.458  0.376	            25.20   -25.20  1	100	    1	    55.00	0.00	;
    78	        0.000  0.000	            0.05	-0.05	1	100	    1	    0.10	0.00    ;
    %% The following five generators are projected installations. Status can change from 0 to 1 to activate them into operation.
    40	        1.454  0.259	            458.23  -458.23	1	100	    0	    1000	0       ;
    65	        0.270 -0.164	            114.56	-114.56 1	100	    0	    250	    0       ;
    40	        0.538  0.045	            59.57	-59.57	1	100	    0	    130	    0       ;
    17	        0.725  1.019                45.82	-45.82	1	100	    0	    100	    0       ;
    40	        0.330  0.024	            32.07	-32.07	1	100	    0	    70	    0       

];

%% generator cost data
%UPDATED to Ghana's Values
%2 strtup shtdown n	c(n-1)	...	c0
%updated the costs 
mpc.gencost = [
    2	0	0	3	0	0       0;
    2	0	0	3	0	0    	0;
    2	0	0	3	0	0    	0;
    2	0	0	3	0	23674.2	0;
    2	0	0	3	0	23674.2	0;
    2	0	0	3	0	40174.4 0;
    2	0	0	3	0	7891.4	0;
    2	0	0	3	0	5739.2  0;
    2	0	0	3	0	7891.4	0;
    2	0	0	3	0	15782.8	0;
    2	0	0	3	0	17935	0;
    2	0	0	3	0	32283	0;
    2	0	0	3	0	26543.8	0;
    2	0	0	3	0	24391.6	0;
    2	0	0	3	0	14348	0;
    2	0	0	3	0	13917.6 0;
    2	0	0	3	0	13487.1 0;
    2	0	0	3	0	0       0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0    	0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0;
    2	0	0	3	0	0	    0
];

%% branch data
% UPDATED to Ghana's values
%fbus tbus r	     x	        b	    rateA	rateB	rateC	ratio  angle status angmin	angmax
mpc.branch = [
    1	4	0.00575788	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    1	4	0.005711817	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    1	4	0.005711817	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    1	78	0.006080321	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    2	22	0.027315381	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    2	22	0.027315381	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    2	61	0.00151539	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    2	61	0.00151539	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    2	73	0.006034258	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    2	73	0.006034258	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    2	75	0.026071679	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    2	78	0.007611708	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    2	80	0.061355966	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    4	45	0.036481926	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    4	49	0.004882682	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    4	49	0.004882682	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    4	80	0.026624436	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    5	10	0.032152	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    5	10	0.032152	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    5	48	0.001289765	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    5	48	0.001289765	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	10	0.025380734	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	10	0.025380734	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	46	0.011331507	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	45	0.006587014	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	47	0.102306007	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	72	0.027499634	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	72	0.027499634	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    6	78	0.03123074	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    7	54	0.04564847	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    7	72	0.026025616	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    8	16	0.023123645	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    9	11	0.02395278	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    9	14	0.230269667	0.028433333	0.000144841	27	27	27	0	0	1	-30	30;
    9	29	0.022064195	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    9	35	0.031553181	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    10	32	0.109775992	0.005377022	0.000812527	55.2	55.2	55.2	0	0	1	-30	30;
    10	69	0.09203138	0.005377022	0.000812527	55.2	55.2	55.2	0	0	1	-30	30;
    11	24	0.008199221	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    11	29	0.001888585	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    11	29	0.001888585	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    12	66	0.012483083	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    12	84	0.013174029	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    13	71	0.016260252	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    15	25	0.008504954	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    16	24	0.030079164	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    16	62	0.00621851	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    17	52	0.012805524	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    17	74	0.073332356	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    17	84	0.023860654	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    18	41	0.078873419	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    18	55	0.005877351	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    18	60	0.033756441	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    18	60	0.033756441	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    18	83	0.03820717	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    19	26	0.022386636	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    19	26	0.022386636	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    19	27	0.010133868	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    19	31	0.018517341	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    20	40	0.031000424	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    20	65	0.065087072	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    20	71	0.063797307	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    20	76	0.049333513	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    21	40	0.038785078	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    21	64	0.040673662	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    21	74	0.047030361	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    22	49	0.055782339	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    22	80	0.034040585	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    22	80	0.034040585	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    23	34	0.004914591	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    24	29	0.006310636	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    24	54	0.014325605	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    25	61	0.002467723	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    25	61	0.002467723	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    26	27	0.032520505	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    26	31	0.040903977	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    27	51	0.005995274	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    27	62	0.014368335	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    27	63	0.029326036	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    28	68	0.001658269	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    28	68	0.001658269	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    3	27	0.00020323	0.00048237	0.009072581	218.25	218.25	218.25	0	0	1	-30	30;
    30	39	0.048274064	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    30	39	0.048274064	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    30	47	0.004790556	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    30	47	0.004790556	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    30	54	0.023307897	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    30	59	0.020359863	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    31	73	0.032336252	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    32	44	0.062858034	0.005377022	0.000812527	55.2	55.2	55.2	0	0	1	-30	30;
    33	68	0.001750395	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    34	70	0.000611717	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    34	70	0.000611717	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    35	50	0.037587439	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    36	40	0.005477649	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    36	42	0.01667482	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    36	47	0.008429536	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    37	68	0.002717719	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    37	68	0.002717719	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    38	81	0.004730381	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    39	47	0.053064619	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    39	59	0.068633926	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    39	71	0.017872459	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    40	55	0.006197112	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    40	76	0.028466957	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    42	58	0.023906717	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    43	44	0.107369943	0.005377022	0.000812527	55.2	55.2	55.2	0	0	1	-30	30;
    45	78	0.024643725	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    45	78	0.024643725	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    45	78	0.024643725	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    45	78	0.024643725	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    46	78	0.024597662	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    47	76	0.054446511	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    49	80	0.021741754	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    49	80	0.021741754	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    50	71	0.025518923	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    52	77	0.046569731	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    53	58	0.019853169	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    54	59	0.00257953	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    55	64	0.00409961	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    55	74	0.005619691	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    55	74	0.005619691	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    56	62	0.012943714	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    56	75	0.003961421	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    57	78	0.00105945	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    57	78	0.00105945	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    58	72	0.02805239	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    59	62	0.051544539	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    62	75	0.012160642	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    65	79	0.043022877	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000414567	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000414567	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.00046063	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000230315	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000506693	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    67	68	0.000230315	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001151576	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001105513	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    68	78	0.001105513	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    70	78	0.000298907	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    70	78	0.000298907	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    70	78	0.002994097	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    71	76	0.025334671	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    73	75	0.023261834	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    74	81	0.046016975	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    74	81	0.003201088	0.000212259	0.020691621	396	396	396	0	0	1	-30	30;
    77	79	0.068357548	0.001046256	0.004171589	144.9	144.9	144.9	0	0	1	-30	30;
    82	84	0.115536	0.020889796	0.000197145	31.5	31.5	31.5	0	0	1	-30	30


];

%% bus names
% UPDATED to have Ghana's bus names
mpc.bus_name =  {
    'A3BSP_1'; % bus name format is [NAME][ANY NUMBERS/IDENTIFIERS from ECOWAS FILE]_[CORRESPONDING # in BUS SECTION]
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
    'Zebilla_84'
};

% Finished removing the last 3 values
% changed to ng
%% Generator Fuel Types
mpc.genfuel = {
'hydro';
'hydro';
'hydro';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'ng';
'solar';
'solar';
'solar';
'solar';
'solar';
'hydro';
'solar';
'biogas';
'solar';
'solar';
'solar';
'solar';
'solar'
};


%Adding the electricity access rates
mpc.elecrates = {
  0.9815;
  1.0;
  1.0;
  1.0;
  0.8413;
  0.929;
  0.87375;
  0.666;
  0.651;
  0.779;
  0.9515;
  0.53476;
  0.8783;
  1.0;
  1.0;
  0.716;
  0.677;
  1.0;
  1.0;
  1.0;
  0.6475;
  0.932875;
  1.0;
  0.72375;
  0.759;
  1.0;
  0.884;
  1.0;
  1.0;
  1.0;
  0.916;
  0.8043;
  1.0;
  1.0;
  0.5966;
  0.969375;
  1.0;
  1.0;
  0.8206;
  0.63;
  1.0;
  0.895;
  0.95075;
  0.923;
  0.562;
  0.799;
  0.9983;
  1.0;
  0.90925;
  0.7275;
  1.0;
  0.495;
  0.8706;
  0.82925;
  0.83525;
  0.791;
  1.0;
  0.7668;
  0.997;
  1.0;
  1.0;
  1.0;
  0.8645;
  1.0;
  0.53075;
  1.0;
  1.0;
  1.0;
  0.935;
  1.0;
  0.897;
  0.8213;
  0.9875;
  0.929;
  0.8953;
  0.85;
  0.9395;
  0.813;
  0.6893;
  0.891428571;
  0.4615;
  1.0;
  1.0;
  0.4593;
}
