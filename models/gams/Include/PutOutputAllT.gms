put "Year" ;
Loop (T, put (2005+(TSTEP*T.val)) );
put / "Period";
Loop (T, put T.val);
put / "Model Status";
put CO2.modelstat;
put / "** World Economic Parameters" ;
put / "* OUTPUT AND CAPTIAL ACCUMULATION" ;
put / "Capital Share" ;
put GAMA;
put / "Depreciation" ;
put DK;
put / "World Capital Risk Premium" ;
put "Not Supported ?";
put / "Fraction Diversifiable Risk" ;
put "Not Supported ?";
put / "Diversifiable Risk ( per year)" ;
put "Not Supported ?";
put / "Depreciation with no Risk (per year)" ;
put "Not Supported ?";
put / "Initial Output (2005 US International $, trillions)" ;
put YGROSS.l("1");
put / "Initial K (Capital Stock)" ;
put K.l("1");
put / "Initial A (Total Factor Productivity)" ;
put AL("1");

put / "* WELFARE" ;
put / "Time Preference plus Risk (per year)" ;
Loop (T, put PRSTP);
put / "Time Premium" ;
put PRSTP;
put /"Non-Diversifiable Global Risk (per year)" ;
put "Not Supported ?";
put / "Social Time Preference Factor" ;
Loop (T, put power((1/(1+PRSTP)),(TSTEP*(1+(ord(T)-2)))));
put / "Elasticity of MU of Consumption" ;
put ELASMU;

put / "* PRODUCTIVITY" ;
put / "Total Factor Productivity" ;
Loop (T, put AL(T));
put / "Initial Total Factor Productivity" ;
put AL("1");
put / "Rate of Growth of Productivity" ;
Loop (T, put GA(T));

put / "* DAMAGE FUNCTION" ;
put / "Damage Coefficient on Temperature" ;
put a1;
put / "Damage Coefficient on Temperature ^2" ;
put a2;
put / "Exponent on Damages" ;
put A3;
put / "Threshold for Catastrophic Damages" ;
put "THRESH";
put / "Exponent for Catastrophic Damages" ;
put "ASL3";
put / "Damage Rate at Threshold for Catastrophic Damages" ;
put "DamCat";

put / "* ABATEMENT COST" ;
put / "Abatement cost function coefficient" ;
Loop (T, put (((pbacktime(T)*SIGMA(T)/EXPCOST2)/1000)));
put / " Price of Backstop Technology (1000 USD per ton C)" ;
put pbacktime("1");
put / " Backstop Price (1000 USD per ton CO2)" ;
Loop (T, put pbacktime(T));
put / "Ratio of Asymptotic to Initial Backstop Price" ;
put "Not Supported ?";
put / "Decline Rate of Backstop Price (per period)" ;
put "Not Supported ?";
put / "Upper limit of Control Rate" ;
put LIMMIU;
put / "Backstop Competitive Year (Henceforth pBack declines rapidly)" ;
put "Not Supported ?";
put / "Exponent of control cost function" ;
put EXPCOST2;

put / "* EMISSIONS" ;
put / "Sigma (Industrial MTCO2 per 1000 USD [2000]" ;
Loop (T, put SIGMA(T));
put / "Initial Sigma" ;
put SIGMA("1");
put / "Growth Rate of Sigma" ;
Loop (T, put gsig(T));
put / "Carbon Emissions from Land Use Change" ;
Loop (T, put ETREE(T));
put / "Initial Carbon Emissions from Land" ;
put ELAND0;

put / "* PARTICIPATION" ;
put / "Proportion of World in Participation" ;
Loop (T, put partfract(T));

put / "* SCALING" ;
put / "Multiplicative Scaling Coefficient in Utility Function" ;
put scale1;
put / "Additive Scaling Coefficient in Utility Function" ;
put scale2;

put / "Hotelling" ;
put "Not Supported ?";

put / "* POPULATION" ;
put / "Population (millions)" ;
Loop (T, put L(T));
put / "Rate of Population Growth (per period)" ;
Loop (T, put " ");

put / "** Global Parameters" ;
put / "* CARBON LIMITS" ;
put / "Maximum Carbon Resources (GtC)" ;
put FOSSLIM;

put / "* CARBON CYCLE INITIAL CONDITIONS" ;
put / "Initial Concentration of CO2 (GtC).." ;
put / "...Atmospheric, Year 2007" ;
put MAT0;
put / "...Atmospheric, Year 2012" ;
put "Not Supported ?";
put / "...Biosphere and Shallow Oceans, Year 2008" ;
put MU0;
put / "...Deep Oceans, Year 2008" ;
put ML0;

put / "* CARBON CYCLE PARAMETERS" ;
put / "AtA b11" ;
put b11;
put / "BtA b21" ;
put b21;
put / "AtB b12" ;
put b12;
put / "BtB b22" ;
put b22;
put / "DtB b32" ;
put b32;
put / "BtD b23" ;
put b23;
put / "DtD b33" ;
put b33;

put / "* TEMPERATURE DATA" ;
put / "Exogenous Forcing (Watts per Square Meter)" ;
Loop (T, put FORCOTH(T));
put / "2000 Forcings, non-CO2 GHG" ;
put FEX0;
put / "2100 Forcings, non-CO2 GHG" ;
put FEX1;
put / "Initial Temperature (2008-2011)" ;
put TATM0;
put / "Initial Temperature of Deep Oceans (deg C above 1900 level)" ;
put TOCEAN0;

put / "* CLIMATE MODEL PARAMETERS" ;
put / "Temperature Sensitivity Coefficient (temp increase per doubling CO2)" ;
put T2XCO2;
put / "Forcings at CO2 doubling (Watts per Meter 2)" ;
put FCO22X;

put / "* CLIMATE MODULE TRANSITION PARAMETERS" ;
put / "Speed of Adjustment Parameter for Atmospheric Temperature" ;
put C1;
put / "Coefficient of Heat Loss from Atmosphere to Oceans" ;
put C3;
put / "Coefficient of Heat Gain by Deep Oceans" ;
put C4;

put / "** Global Environmental Variables" ;
put / "* CARBON CYCLE" ;
put / "Atmospheric concentration of carbon (GTC)" ;
Loop (T, put MAT.l(T));
put / "Atmospheric concentration of carbon (ppm)" ;
Loop (T, put (MAT.l(T)/2.13));
put / "Concentration in biosphere and upper oceans (GTC)" ;
Loop (T, put MU.l(T));
put / "Concentration in deep oceans (GTC)" ;
Loop (T, put ML.l(T));

put / "* CUMULATIVE EMISSIONS" ;
put / " Cumulative Emissions to date" ;
Loop (T, put CCA.l(T));
put / "Ratio To Max" ;
Loop (T, put (CCA.l(T)/FOSSLIM));
put / "Max Ratio" ;
put "Not Supported ?";
put / "Coefficient of Hotelling rent on ratio" ;
put "Not Supported ?";
put / "Exponent on Hotelling" ;
put "Not Supported ?";
put / "Hotelling Rent on Carbon Fuels (2005 USD / tCO2)" ;
put "Not Supported ?";

put / "* CLIMATE MODULE" ;
put / "Atmospheric Temperature (deg C above preindustrial)" ;
Loop (T, put TATM.l(T));
put / "Total Increase in Forcing (Watts per Meter2, preindustrial)" ;
Loop (T, put FORC.l(T));
put / "Lower Ocean Temperature (deg C above preindustrial)" ;
Loop (T, put TOCEAN.l(T));


put / "** Economic Endogenous Variables" ;
put / "* OUTPUT" ;
put / "Gross Output (trillion USD)" ;
Loop (T, put YGROSS.l(T));
put / "Climate Damages (fraction of gross output)" ;
Loop (T, put DAMFRAC.l(T));
put / "Climate damages (trillion USD)" ;
Loop (T, put DAMAGES.l(T));
put / "Output post-damages yet pre-abatement" ;
Loop (T, put YNET.l(T));
put / "Abatement cost (fraction of gross output)" ;
Loop (T, put "0");
put / "Abatement cost (trillion USD)" ;
Loop (T, put ABATECOST.l(T));
put / "Output (Net of Damages and Abatement, trillion USD pa) " ;
Loop (T, put Y.l(T));

put / "* EMISSIONS" ;
put / "Total Carbon Emissions (GTCO2 per year)" ;
Loop (T, put E.l(T));
put / "Industrial Emissions (GTCO2 per year)" ;
Loop (T, put EIND.l(T));
put / "World Emissions Intensity (sigma)" ;
Loop (T, put (EIND.l(T) / YGROSS.l(T)));

put / "* CAPITAL ACCUMULATION" ;
put / "Gross Investment (trillion 2005USD per year)" ;
Loop (T, put I.l(T));
put / "Capital (trillion 2005USD per year)" ;
Loop (T, put K.l(T));

put / "* DISCOUNT RATES" ;
put / "Utility Discount Rate (per year)" ;
Loop (T, put PRSTP);
put / "First Period gross MPK" ;
Loop (T, put ( GAMA * YGROSS.l(T) / K.l(T) ));
put / "All Periods gross MPK" ;
put  "Not Supported ?";

put / "* WELFARE" ;
put / "Consumption (trillion USD per year)" ;
Loop (T, put C.l(T));
put / "Net Capial Accumulation (trillion USD per year)" ;
put  "Not Supported ?";
put / "Net National Income (consumption basis)" ;
put  "Not Supported ?";
put / "Consumption Per Capita (thousand USD per year)" ;
Loop (T, put CPC.l(T));
put / "Utility of Per Capita Consumption" ;
Loop (T, put PERIODU.l(T));
put / "Utility of Consumption" ;
put  "Not Supported ?";
put / "Total Discounted Utility (trillions 2000USD)" ;
put UTILITY.l;

put / "** CONTROL VARIABLES" ;
put / "Savings Rate (proportion of gross output)" ;
Loop (T, put S.l(T));
put / "Carbon Price (per t CO2)" ;
Loop (T, put cprice.l(T));
put / "Carbon Price (per t CO2) [repeat]" ;
Loop (T, put cprice.l(T));
put / "Carbon Price (per t C)" ;
Loop (T, put (cprice.l(T)*3.666) );
put / "Emissions Control Rate (total)" ;
Loop (T, put MIU.l(T));
put / "Emissions Control Rate (participants)" ;
Loop (T, put ( (cprice.l(T)/pbacktime(T))**(1/(expcost2-1)) )  );
put / "Carbon Price (Global Average)" ;
Loop (T, put (cprice.l(T)*partfract(T)) );
put / "Interest Rate (Real Rate of Return)" ;
Loop (T, put RI.l(T));
put / "Social Cost of Carbon" ;
Loop (T, put scc(T));