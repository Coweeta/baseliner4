# Baseliner_4_01.exe; version released 2018.12.12
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
