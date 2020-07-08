# Baseliner_4_02; version released 2020.07.07

New updates to SapEditWindow.m script introduces two new "export" options: (1) for cleaned dT data and (2) for estimated dTmax baseline (version displayed at time of export--either edited or default). These options can be used for addtional analysis, including Clearwater-correction (Clearwater et al., 1999; Tree Physiology 19, 681--687) if sensors are partially in contact with heartwood. For Clearwater-correction: 

dT_sw = [dT - (b * dT_max)]/a

where,
dT_sw is dT in sapwood (i.e., adjusted dT)
dT is original (cleaned) dT
dT_max is dT under zero-flow conditions (i.e., estimated "baseline")
a is proportion of probe in sapwood (ranging from 0.0 to 1.0)
b is proportion of probe in heartwood (b = 1 - a; ranging from 0.0 to 1.0)


and thus, k-values are calculated manually (using user generated code or spreadsheets),

k = (dTmax - dT_sw) / dT_sw


# Baseliner_4_01; version released 2018.12.12
Functionally identical to previous version, but now will correct for common time-step errors, including missing or duplicate time-steps and midnight time/day errors (if midnight is recorded as 00:00 it should be the first time step of a day, else if 24:00 it should be the last time-step of the day).


# Baseliner 4

MATLAB application for processing tree sapflow measurements.

Chris Oishi, Dave Hawthorne 
USDA Forest Service, Southern Research Station, Coweeta Hydrologic Laboratory

Ram Oren
Duke University, Nicholas School of the Environment

Requirements:
* MATLAB 2014 or higher
* Statistics and Machine Learning Toolbox

Top level:
* SapEditWindow


please contact Chris Oishi with questions or feedback: andrew.c.oishi@usda.gov

Please use the following reference when citing this software:
Oishi, A.C., Hawthorne, D., and Oren, R. Baseliner: An open-source, interactive tool for processing sap flux data from thermal dissipation probes. Software-X. 5: 139-143. DOI: 10.1016/j.softx.2016.07.003. 

standalone application for Windows available here: https://github.com/Coweeta/Baseliner4_exe 
