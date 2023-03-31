# for simulating the model with one specific frequency of calcium spikes.
# the outputs are time courses of interested species.

import math
import sys
loadModel("Li2012.eml")


ca_in = createEntityStub('Process:/Spine:ca_in')

# indicate the names of species that you are interested in
List=['ca','Rbar','PP2Bbar','CaMKIIbar','PP1abar']


Dict = {}
for aVariableName in List:
    Dict[ aVariableName ]  = createLoggerStub( "Variable:/Spine:" + aVariableName + ":Value" )
    Dict[ aVariableName ].create()

# define function to give calcium input
def calcium_peak(value,time):
	basal=ca_in['k']
	ca_in['k'] = value
	run(time)
	ca_in['k'] = basal
	return

	
#indicate a specific frequency
#indicate the number of spikes
#peak=calcium input per second;runTime=calcium input time.
#realInterval=1.0/frequency, this defines the interval between spikes
#judge whether or not the realInterval is smaller than calcium input time(runTime) 
#two situations:
#	if realInterval>runTime:	calcium input per second=peak, calcium input time=runTime, run time after this calcium spike before next=realInterval-runTime
#	if realInterval<runTime:	calcium input per second=peak*runTime/realInterval,calcium input time=realInterval, run time after this calcium before next=0


frequency=52.8
spikes=100
realInterval=1.0/frequency
remainInterval=0.0

peak=4.32e6
runTime=0.008

if (realInterval>runTime):
	remainInterval=realInterval-runTime
if (realInterval<=runTime):
	peak=peak*runTime/realInterval
	runTime=realInterval


message('Start simulation')
run(800)	#first run 800 seconds to reach equilibrium

message('ca input start')
for i in range(spikes):
	calcium_peak(peak,runTime)
	if (remainInterval!=0.0):
		run(remainInterval)

run(3000)


#save results of the interested species
from ecell.ECDDataFile import *

for aVariableName in List:
	aDataFile = ECDDataFile( Dict[ aVariableName ].getData() )
	aDataFile.save(aVariableName+"_"+frequency+".ecd")
	del aDataFile

message('End simulation')
