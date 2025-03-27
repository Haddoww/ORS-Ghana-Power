% Case File Saved from Hawaii Case Example. To modify/replace Hawaii's data moving forward
function mpc = GhanaGrid
mpc.version = '1'; %Updated value
mpc.baseMVA =  100.00; %This is not updated; is Hawaii file's original value

% moving forward... every section is unedited unless otherwise specified by
% a comment below the section header/name

%% bus data 
%UPDATED and SCALED to Ghana's Values
%bus_i type	Pd	    Qd	    Gs	    Bs	  area  Vm	        Va	        baseKV zone	Vmax	Vmin
mpc.bus = [
    1	1	78.85149954	25.91723457	0	0	1	1	0	161	1	1.1	0.9;
    2	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    3	1	7.496575342	2.464005158	0	0	1	1	0	161	1	1.1	0.9;
    4	2	275.6964011	90.61702488	0	0	1	1	0	161	1	1.1	0.9;
    5	1	23.31741349	7.664063188	0	0	1	1	0	33	1	1.1	0.9;
    6	3	6.580097319	2.162773399	0	0	1	1	0	161	1	1.1	0.9;
    7	1	54.99864676	18.077181	0	0	1	1	0	161	1	1.1	0.9;
    8	2	7.902567859	2.597448445	0	0	1	1	0	161	1	1.1	0.9;
    9	1	62.68187804	20.602537	0	0	1	1	0	161	1	1.1	0.9;
    10	1	16.21800457	5.33060032	0	0	1	1	0	161	1	1.1	0.9;
    11	1	13.56016134	4.457009496	0	0	1	1	0	161	1	1.1	0.9;
    12	1	20.2628291	6.66006985	0	0	1	1	0	161	1	1.1	0.9;
    13	1	42.79321134	14.06544838	0	0	1	1	0	34.5 1	1.1	0.9;
    14	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    15	1	7.496575342	2.464005158	0	0	1	1	0	161	1	1.1	0.9;
    16	1	6.847816965	2.250768592	0	0	1	1	0	161	1	1.1	0.9;
    17	2	27.85574532	9.155740724	0	0	1	1	0	161	1	1.1	0.9;
    18	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    19	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    20	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    21	1	32.09410212	10.54882124	0	0	1	1	0	34.5 1	1.1	0.9;
    22	1	71.63919679	23.54666529	0	0	1	1	0	161	1	1.1	0.9;
    23	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    24	1	26.41392988	8.681838906	0	0	1	1	0	330	1	1.1	0.9;
    25	1	4.548008441	1.494858085	0	0	1	1	0	330	1	1.1	0.9;
    26	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    27	1	12.01512868	3.94918182	0	0	1	1	0	161	1	1.1	0.9;
    28	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    29	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    30	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    31	1	5.947891891	1.954977524	0	0	1	1	0	161	1	1.1	0.9;
    32	2	18.49523433	6.079089545	0	0	1	1	0	161	1	1.1	0.9;
    33	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    34	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    35	1	23.36257102	7.678905751	0	0	1	1	0	161	1	1.1	0.9;
    36	1	100.759353	33.11799777	0	0	1	1	0	161	1	1.1	0.9;
    37	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    38	1	32.8173516	10.78654184	0	0	1	1	0	161	1	1.1	0.9;
    39	1	23.7270568	7.798706434	0	0	1	1	0	161	1	1.1	0.9;
    40	1	13.34082476	4.384917049	0	0	1	1	0	161	1	1.1	0.9;
    41	1	27.4543379	9.023804486	0	0	1	1	0	161	1	1.1	0.9;
    42	1	35.38415078	11.63020794	0	0	1	1	0	161	1	1.1	0.9;
    43	1	66.41059986	21.82810859	0	0	1	1	0	161	1	1.1	0.9;
    44	1	10.43461511	3.429692131	0	0	1	1	0	161	1	1.1	0.9;
    45	2	20.56602966	6.759727056	0	0	1	1	0	161	1	1.1	0.9;
    46	1	15.78900803	5.189595975	0	0	1	1	0	161	1	1.1	0.9;
    47	1	352.5932246	115.8917885	0	0	1	1	0	161	1	1.1	0.9;
    48	1	32.8173516	10.78654184	0	0	1	1	0	161	1	1.1	0.9;
    49	2	99.96264511	32.85613256	0	0	1	1	0	161	1	1.1	0.9;
    50	1	24.00445306	7.889882176	0	0	1	1	0	161	1	1.1	0.9;
    51	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    52	1	12.52153813	4.115630557	0	0	1	1	0	161	1	1.1	0.9;
    53	1	22.93034894	7.536841224	0	0	1	1	0	161	1	1.1	0.9;
    54	1	34.90677117	11.47330085	0	0	1	1	0	161	1	1.1	0.9;
    55	1	17.71142862	5.821465067	0	0	1	1	0	161	1	1.1	0.9;
    56	1	2.206267925	0.725165199	0	0	1	1	0	161	1	1.1	0.9;
    57	2	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    58	1	43.35768047	14.25098041	0	0	1	1	0	161	1	1.1	0.9;
    59	1	38.83870187	12.76566397	0	0	1	1	0	161	1	1.1	0.9;
    60	1	27.4543379	9.023804486	0	0	1	1	0	161	1	1.1	0.9;
    61	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    62	1	21.94010881	7.211365031	0	0	1	1	0	161	1	1.1	0.9;
    63	1	7.496575342	2.464005158	0	0	1	1	0	161	1	1.1	0.9;
    64	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    65	1	10.11206132	3.323673827	0	0	1	1	0	161	1	1.1	0.9;
    66	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    67	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    68	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    69	1	18.11462086	5.953987946	0	0	1	1	0	161	1	1.1	0.9;
    70	1	0	        0	        0	0	1	1	0	161	1	1.1	0.9;
    71	2	39.11932367	12.8578999	0	0	1	1	0	161	1	1.1	0.9;
    72	1	61.31747551	20.15407957	0	0	1	1	0	161	1	1.1	0.9;
    73	2	216.1723246	71.05240708	0	0	1	1	0	161	1	1.1	0.9;
    74	1	19.79190056	6.505283127	0	0	1	1	0	161	1	1.1	0.9;
    75	1	19.23065697	6.320811278	0	0	1	1	0	161	1	1.1	0.9;
    76	1	82.43184661	27.09403774	0	0	1	1	0	34.5 1	1.1	0.9;
    77	1	10.79264982	3.547372448	0	0	1	1	0	161	1	1.1	0.9;
    78	2	14.86972973	4.887443809	0	0	1	1	0	330	1	1.1	0.9;
    79	2	52.11179034	17.12831718	0	0	1	1	0	161	1	1.1	0.9;
    80	2	75.00020729	24.65137602	0	0	1	1	0	161	1	1.1	0.9;
    81	1	26.50747048	8.712584214	0	0	1	1	0	161	1	1.1	0.9;
    82	1	27.4543379	9.023804486	0	0	1	1	0	161	1	1.1	0.9;
    83	1	27.4543379	9.023804486	0	0	1	1	0	161	1	1.1	0.9;
    84	1	15.44710101	5.077216573	0	0	1	1	0	161	1	1.1	0.9
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
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74   0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74  0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74	0;
    2	0	0	3	0	71.74   0;
    2	0	0	3	0	71.74   0;
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
    1	4	0.0034	0.0163	6.40E-05	213	213	213	0	0	1	-30	30;
    1	4	0.0034	0.0163	6.45E-05	213	213	213	0	0	1	-30	30;
    1	4	0.0034	0.0163	6.45E-05	213	213	213	0	0	1	-30	30;
    1	78	0.0047	0.0229	6.06E-05	213	213	213	0	0	1	-30	30;
    1	78	0.0047	0.0229	6.06E-05	213	213	213	0	0	1	-30	30;
    1	78	0.0047	0.0229	6.06E-05	213	213	213	0	0	1	-30	30;
    1	78	0.0047	0.0229	6.06E-05	213	213	213	0	0	1	-30	30;
    2	22	0.028001697	0.09175818	1.35E-05	213	213	213	0	0	1	-30	30;
    2	22	0.028001697	0.09175818	1.35E-05	213	213	213	0	0	1	-30	30;
    2	61	0.001573444	0.01670853	6.94E-05	875	875	875	0	0	1	-30	30;
    2	61	0.001573444	0.01670853	6.94E-05	875	875	875	0	0	1	-30	30;
    2	73	0.0061	0.0235	6.11E-05	170	170	170	0	0	1	-30	30;
    2	73	0.0061	0.0235	6.11E-05	170	170	170	0	0	1	-30	30;
    2	75	0.026726747	0.08758032	1.41E-05	213	213	213	0	0	1	-30	30;
    2	78	0.9	5.67	3.34E-05	1750	1750	1750	0	0	1	-30	30;
    2	80	0.062897573	0.20610774	6.01E-06	213	213	213	0	0	1	-30	30;
    4	45	0.037398557	0.12255055	1.01E-05	213	213	213	0	0	1	-30	30;
    4	49	0.7	2.4	7.55E-05	170	170	170	0	0	1	-30	30;
    4	49	0.7	2.4	7.55E-05	170	170	170	0	0	1	-30	30;
    4	80	0.027293391	0.08943714	1.38E-05	213	213	213	0	0	1	-30	30;
    5	10	0.03295984	0.10800541	1.15E-05	213	213	213	0	0	1	-30	30;
    5	10	0.03295984	0.10800541	1.15E-05	213	213	213	0	0	1	-30	30;
    5	48	0.001322171	0.0043326	0.000285821	213	213	213	0	0	1	-30	30;
    5	48	0.001322171	0.0043326	0.000285821	213	213	213	0	0	1	-30	30;
    6	10	0.0394	0.0889	1.45E-05	128	128	128	0	0	1	-30	30;
    6	10	0.0394	0.0889	1.45E-05	128	128	128	0	0	1	-30	30;
    6	46	0.011616219	0.03806494	3.25E-05	213	213	213	0	0	1	-30	30;
    6	45	0.0077	0.0381	5.60E-05	213	213	213	0	0	1	-30	30;
    6	45	0.0077	0.0381	5.60E-05	213	213	213	0	0	1	-30	30;
    6	45	0.0077	0.0381	5.60E-05	213	213	213	0	0	1	-30	30;
    6	45	0.0077	0.0381	5.60E-05	213	213	213	0	0	1	-30	30;
    6	47	0.104876509	0.34366764	3.60E-06	213	213	213	0	0	1	-30	30;
    6	72	2.7	9.7	1.34E-05	170	170	170	0	0	1	-30	30;
    6	72	1.6	6.8	1.34E-05	364	364	364	0	0	1	-30	30;
    6	78	0.0212	0.1029	1.18E-05	213	213	213	0	0	1	-30	30;
    6	78	0.0212	0.1029	1.18E-05	213	213	213	0	0	1	-30	30;
    6	78	0.0212	0.1029	1.18E-05	213	213	213	0	0	1	-30	30;
    6	78	0.0212	0.1029	1.18E-05	213	213	213	0	0	1	-30	30;
    7	54	0.046795417	0.15334292	8.08E-06	213	213	213	0	0	1	-30	30;
    7	72	0.026679526	0.08742558	1.42E-05	213	213	213	0	0	1	-30	30;
    8	16	0.023704641	0.07767724	1.59E-05	213	213	213	0	0	1	-30	30;
    9	11	0.024554608	0.08046248	1.54E-05	213	213	213	0	0	1	-30	30;
    9	14	0.498582778	0.68019	2.32E-07	58.19691	58.19691	58.19691	0	0	1	-30	30;
    9	29	0.022618572	0.07411832	1.67E-05	213	213	213	0	0	1	-30	30;
    9	35	0.032345974	0.10599385	1.17E-05	213	213	213	0	0	1	-30	30;
    10	32	0.112114262	0.16406217	2.65E-05	93.21897	93.21897	93.21897	0	0	1	-30	30;
    10	69	0.093991682	0.13754253	3.16E-05	93.21897	93.21897	93.21897	0	0	1	-30	30;
    11	24	0.008405231	0.02754293	4.50E-05	213	213	213	0	0	1	-30	30;
    11	29	0.001936036	0.00634416	0.000195195	213	213	213	0	0	1	-30	30;
    11	29	0.001936036	0.00634416	0.000195195	213	213	213	0	0	1	-30	30;
    12	66	0.012796729	0.04193333	2.95E-05	213	213	213	0	0	1	-30	30;
    12	84	0.013505035	0.04425437	2.80E-05	213	213	213	0	0	1	-30	30;
    13	71	0.016668801	0.05462165	2.27E-05	213	213	213	0	0	1	-30	30;
    15	25	0.008830771	0.0937747	1.24E-05	875	875	875	0	0	1	-30	30;
    16	24	0.030834921	0.10104231	1.23E-05	213	213	213	0	0	1	-30	30;
    16	62	0.006374754	0.0208893	5.93E-05	213	213	213	0	0	1	-30	30;
    17	52	0.013127271	0.04301648	2.88E-05	213	213	213	0	0	1	-30	30;
    17	74	0.075174878	0.24633898	5.03E-06	213	213	213	0	0	1	-30	30;
    17	84	0.024460167	0.08015301	1.54E-05	213	213	213	0	0	1	-30	30;
    18	41	0.062210993	0.30910009	3.73E-06	740	740	740	0	0	1	-30	30;
    18	55	0.006102507	0.06480303	1.79E-05	875	875	875	0	0	1	-30	30;
    18	60	0.026625215	0.13228942	8.72E-06	740	740	740	0	0	1	-30	30;
    18	60	0.026625215	0.13228942	8.72E-06	740	740	740	0	0	1	-30	30;
    18	83	0.030135704	0.14973156	7.70E-06	740	740	740	0	0	1	-30	30;
    19	26	0.022949115	0.07520147	1.65E-05	213	213	213	0	0	1	-30	30;
    19	26	0.022949115	0.07520147	1.65E-05	213	213	213	0	0	1	-30	30;
    19	27	0.010388488	0.03404182	3.64E-05	213	213	213	0	0	1	-30	30;
    19	31	0.018982601	0.06220369	1.99E-05	213	213	213	0	0	1	-30	30;
    20	40	0.03177933	0.10413702	1.19E-05	213	213	213	0	0	1	-30	30;
    20	65	0.066722426	0.21864132	5.66E-06	213	213	213	0	0	1	-30	30;
    20	71	0.065400255	0.21430873	5.78E-06	213	213	213	0	0	1	-30	30;
    20	76	0.050573049	0.16572177	7.47E-06	213	213	213	0	0	1	-30	30;
    21	40	0.039759577	0.13028733	9.50E-06	213	213	213	0	0	1	-30	30;
    21	64	0.041695614	0.13663148	9.06E-06	213	213	213	0	0	1	-30	30;
    21	74	0.048212029	0.15798499	7.84E-06	213	213	213	0	0	1	-30	30;
    22	49	0.05336	0.18728	6.61E-06	170	170	170	0	0	1	-30	30;
    22	80	0.034895876	0.11434957	1.08E-05	213	213	213	0	0	1	-30	30;
    22	80	0.034895876	0.11434957	1.08E-05	213	213	213	0	0	1	-30	30;
    23	34	0.005102865	0.05418775	2.14E-05	875	875	875	0	0	1	-30	30;
    24	29	0.006469195	0.02119877	5.84E-05	213	213	213	0	0	1	-30	30;
    24	54	0.014685545	0.04812275	2.57E-05	213	213	213	0	0	1	-30	30;
    25	61	0.002562259	0.02720884	4.26E-05	875	875	875	0	0	1	-30	30;
    25	61	0.002562259	0.02720884	4.26E-05	875	875	875	0	0	1	-30	30;
    26	27	0.033337603	0.10924329	1.13E-05	213	213	213	0	0	1	-30	30;
    26	31	0.041931716	0.13740516	9.01E-06	213	213	213	0	0	1	-30	30;
    27	51	0.004728741	0.02349511	4.91E-05	740	740	740	0	0	1	-30	30;
    27	62	0.011332948	0.05630862	2.05E-05	740	740	740	0	0	1	-30	30;
    27	63	0.023130756	0.11492693	1.00E-05	740	740	740	0	0	1	-30	30;
    28	68	0.001699934	0.00557048	0.000222305	213	213	213	0	0	1	-30	30;
    28	68	0.001699934	0.00557048	0.000222305	213	213	213	0	0	1	-30	30;
    3	27	0.000160296	0.00079644	0.001448175	740	740	740	0	0	1	-30	30;
    30	39	0.04948698	0.16216285	7.64E-06	213	213	213	0	0	1	-30	30;
    30	39	0.04948698	0.16216285	7.64E-06	213	213	213	0	0	1	-30	30;
    30	47	0.004910922	0.0160925	7.70E-05	213	213	213	0	0	1	-30	30;
    30	47	0.004910922	0.0160925	7.70E-05	213	213	213	0	0	1	-30	30;
    30	54	0.023893523	0.07829618	1.58E-05	213	213	213	0	0	1	-30	30;
    30	59	0.020871417	0.06839311	1.81E-05	213	213	213	0	0	1	-30	30;
    31	73	0.033148721	0.10862435	1.14E-05	213	213	213	0	0	1	-30	30;
    32	44	0.064196933	0.09394245	4.63E-05	93.21897	93.21897	93.21897	0	0	1	-30	30;
    33	68	0.001794375	0.00587995	0.000210605	213	213	213	0	0	1	-30	30;
    34	70	0.000635152	0.00674473	0.000171801	875	875	875	0	0	1	-30	30;
    34	70	0.000635152	0.00674473	0.000171801	875	875	875	0	0	1	-30	30;
    35	50	0.038531847	0.1262642	9.81E-06	213	213	213	0	0	1	-30	30;
    36	40	0.005687493	0.06039597	1.92E-05	875	875	875	0	0	1	-30	30;
    36	42	0.017093785	0.05601427	2.21E-05	213	213	213	0	0	1	-30	30;
    36	47	0.008641333	0.0283166	4.37E-05	213	213	213	0	0	1	-30	30;
    37	68	0.002786004	0.0091294	0.000135644	213	213	213	0	0	1	-30	30;
    37	68	0.002786004	0.0091294	0.000135644	213	213	213	0	0	1	-30	30;
    38	81	0.004911598	0.05215667	2.22E-05	875	875	875	0	0	1	-30	30;
    39	47	0.054397901	0.17825535	6.95E-06	213	213	213	0	0	1	-30	30;
    39	59	0.070358397	0.23055596	5.37E-06	213	213	213	0	0	1	-30	30;
    39	71	0.018321515	0.06003739	2.06E-05	213	213	213	0	0	1	-30	30;
    40	55	0.006434518	0.06832869	1.70E-05	875	875	875	0	0	1	-30	30;
    40	76	0.029182207	0.09562657	1.29E-05	213	213	213	0	0	1	-30	30;
    42	58	0.024507388	0.08030775	1.54E-05	213	213	213	0	0	1	-30	30;
    43	44	0.109656963	0.16046629	2.71E-05	93.21897	93.21897	93.21897	0	0	1	-30	30;
    45	78	0.0114	0.0843	1.50E-05	273	273	273	0	0	1	-30	30;
    45	78	0.0114	0.0843	1.50E-05	273	273	273	0	0	1	-30	30;
    45	78	0.0114	0.0843	1.50E-05	273	273	273	0	0	1	-30	30;
    45	78	0.0114	0.0843	1.50E-05	273	273	273	0	0	1	-30	30;
    46	78	0.025215694	0.08262878	1.50E-05	273	273	273	0	0	1	-30	30;
    47	76	0.055814513	0.18289741	6.77E-06	213	213	213	0	0	1	-30	30;
    49	80	0.02045	0.07182	1.70E-05	170	170	170	0	0	1	-30	30;
    49	80	0.02045	0.07182	1.70E-05	170	170	170	0	0	1	-30	30;
    50	71	0.026160102	0.08572349	1.44E-05	213	213	213	0	0	1	-30	30;
    52	77	0.047739825	0.15643763	7.92E-06	213	213	213	0	0	1	-30	30;
    53	58	0.020351993	0.06669102	1.86E-05	213	213	213	0	0	1	-30	30;
    54	59	0.002644342	0.00866519	0.00014291	213	213	213	0	0	1	-30	30;
    55	64	0.004202616	0.01377146	8.99E-05	213	213	213	0	0	1	-30	30;
    55	74	0.005760889	0.01887774	6.56E-05	213	213	213	0	0	1	-30	30;
    55	74	0.005760889	0.01887774	6.56E-05	213	213	213	0	0	1	-30	30;
    56	62	0.013268933	0.04348069	2.85E-05	213	213	213	0	0	1	-30	30;
    56	75	0.004060954	0.01330726	9.31E-05	213	213	213	0	0	1	-30	30;
    57	78	0.00085	0.00358	0.000347955	364	364	364	0	0	1	-30	30;
    57	78	0.00085	0.00358	0.000347955	364	364	364	0	0	1	-30	30;
    58	72	0.028757224	0.09423395	1.31E-05	213	213	213	0	0	1	-30	30;
    59	62	0.052839628	0.17314907	7.15E-06	213	213	213	0	0	1	-30	30;
    62	75	0.012466186	0.04085018	3.03E-05	213	213	213	0	0	1	-30	30;
    65	79	0.044103854	0.144523	8.57E-06	213	213	213	0	0	1	-30	30;
    67	68	0.000424984	0.00139262	0.00088922	213	213	213	0	0	1	-30	30;
    67	68	0.000424984	0.00139262	0.00088922	213	213	213	0	0	1	-30	30;
    67	68	0.000472204	0.00154736	0.000800298	213	213	213	0	0	1	-30	30;
    67	68	0.000236102	0.00077368	0.001600595	213	213	213	0	0	1	-30	30;
    67	68	0.000519424	0.00170209	0.000727543	213	213	213	0	0	1	-30	30;
    67	68	0.000236102	0.00077368	0.001600595	213	213	213	0	0	1	-30	30;
    68	78	0.00128	0.00646	0.000320119	213	213	213	0	0	1	-30	30;
    68	78	0.00128	0.00646	0.000320119	213	213	213	0	0	1	-30	30;
    68	78	0.00128	0.00646	0.000320119	213	213	213	0	0	1	-30	30;
    68	78	0.00128	0.00646	0.000320119	213	213	213	0	0	1	-30	30;
    68	78	0.00128	0.00646	0.000333457	213	213	213	0	0	1	-30	30;
    68	78	0.00128	0.00646	0.000333457	213	213	213	0	0	1	-30	30;
    70	78	0.000310358	0.00329572	0.000351592	875	875	875	0	0	1	-30	30;
    70	78	0.000310358	0.00329572	0.000351592	875	875	875	0	0	1	-30	30;
    70	78	0.003069326	0.01005781	0.000123123	213	213	213	0	0	1	-30	30;
    71	76	0.02597122	0.08510455	1.46E-05	213	213	213	0	0	1	-30	30;
    73	75	0.023846302	0.07814145	1.58E-05	213	213	213	0	0	1	-30	30;
    74	81	0.04717318	0.15458081	8.01E-06	213	213	213	0	0	1	-30	30;
    74	81	0.003323719	0.03529485	3.28E-05	875	875	875	0	0	1	-30	30;
    77	79	0.070075074	0.22962755	5.39E-06	213	213	213	0	0	1	-30	30;
    82	84	0.25016	0.34128	4.63E-07	58.19691	58.19691	58.19691	0	0	1	-30	30




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
