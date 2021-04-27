% This file works with MATLAB and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file. 
% To run this file with Octave you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Cursons2015 - Regulation of ERK-MAPK signaling in human epidermis
%
% is http://identifiers.org/biomodels.db/MODEL1503270000
% is http://identifiers.org/biomodels.db/BIOMD0000000659
% isDescribedBy http://identifiers.org/pubmed/26209520
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(8) = 0.5;
	x0(9) = 0.8;
	x0(10) = 0.7;
	x0(11) = 0.4;
	x0(12) = 0.2;
	x0(1) = 0.5;
	x0(2) = 0.8;
	x0(3) = 0.7;
	x0(4) = 0.4;
	x0(5) = 0.2;
	x0(6) = 0.7632;
	x0(7) = 0.72675;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
	tspan=[0:0.01:100];
	opts = odeset('AbsTol',1e-3);
	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
%	t=linspace(0,100,100);
%	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
function xdot=f(t,x)
% End Matlab code

% Start Octave code
%function xdot=f(x,t)
% End Octave code

% Compartment: id = c, name = cytoplasm, constant
	compartment_c=1.0;
% Compartment: id = n, name = nucleus, constant
	compartment_n=0.5;
% Parameter:   id =  numTissuePos, name = Tissue_Pos
	global_par_numTissuePos=0.5;
% Parameter:   id =  numCytoToNucVolRatio, name = CtoN_VolRatio
% Parameter:   id =  numCaInputBaseline, name = Ca_Baseline
	global_par_numCaInputBaseline=0.754;
% Parameter:   id =  numCaInputAmp, name = Ca_Amp
	global_par_numCaInputAmp=0.092;
% Parameter:   id =  numCaMInputBaseline, name = CaM_Baseline
	global_par_numCaMInputBaseline=0.363;
% Parameter:   id =  numCaMInputAmp, name = CaM_Amp
	global_par_numCaMInputAmp=0.485;
% Parameter:   id =  numHillCoeff, name = Hill_Coeff
	global_par_numHillCoeff=1.4;
% Parameter:   id =  numHillWeight, name = Hill_Weight
	global_par_numHillWeight=1.0;
% Parameter:   id =  numHillMax, name = Hill_Max
	global_par_numHillMax=1.0;
% Parameter:   id =  numHillTau, name = Hill_Tau
	global_par_numHillTau=1.0;
% Parameter:   id =  numHillEC50, name = Hill_EC50
	global_par_numHillEC50=0.5;
% Parameter:   id =  numMEKCytoToNucParam, name = MEK_CtoN
	global_par_numMEKCytoToNucParam=0.05;
% Parameter:   id =  numMEKNucToCytoParam, name = MEK_NtoC
	global_par_numMEKNucToCytoParam=0.5;
% Parameter:   id =  numERKCytoToNucParam, name = ERK_CtoN
	global_par_numERKCytoToNucParam=0.01;
% Parameter:   id =  numERKNucToCytoParam, name = ERK_NtoC
	global_par_numERKNucToCytoParam=0.01;
% Parameter:   id =  numHillBeta, name = Hill_Beta
	global_par_numHillBeta=2.56;
% Parameter:   id =  numHillK, name = Hill_K
	global_par_numHillK=1.37;
% Parameter:   id =  funcHillCaToRaf, name = Hill_CaToRaf
% Parameter:   id =  funcHillCaMToRaf, name = Hill_CaMToRaf
% Parameter:   id =  funcHillERKToRaf, name = Hill_ERKToRaf
% Parameter:   id =  funcHillRafToMEK, name = Hill_RafToMEK
% Parameter:   id =  funcHillMEKToERKCyto, name = Hill_MEKToERKCyto
% Parameter:   id =  funcHillMEKToERKNuc, name = Hill_MEKToERKNuc
% Parameter:   id =  funcHillERKToERKNuc, name = Hill_ERKToERKn
% Parameter:   id =  numTotalRafInputs, name = TotalRafInputs
	global_par_numTotalRafInputs=0.0;
% assignmentRule: variable = numCytoToNucVolRatio
	global_par_numCytoToNucVolRatio=2+5*global_par_numTissuePos/7;
% assignmentRule: variable = funcHillCaToRaf
	global_par_funcHillCaToRaf=global_par_numHillWeight*global_par_numHillBeta*x(6)^global_par_numHillCoeff/(global_par_numHillK^global_par_numHillCoeff+x(6)^global_par_numHillCoeff);
% assignmentRule: variable = funcHillCaMToRaf
	global_par_funcHillCaMToRaf=global_par_numHillWeight*global_par_numHillBeta*x(7)^global_par_numHillCoeff/(global_par_numHillK^global_par_numHillCoeff+x(7)^global_par_numHillCoeff);
% assignmentRule: variable = funcHillERKToRaf
	global_par_funcHillERKToRaf=global_par_numHillWeight*global_par_numHillBeta*x(5)^global_par_numHillCoeff/(global_par_numHillK^global_par_numHillCoeff+x(5)^global_par_numHillCoeff);
% assignmentRule: variable = funcHillRafToMEK
	global_par_funcHillRafToMEK=global_par_numHillWeight*global_par_numHillBeta*x(1)^global_par_numHillCoeff/(global_par_numHillK^global_par_numHillCoeff+x(1)^global_par_numHillCoeff);
% assignmentRule: variable = funcHillMEKToERKCyto
	global_par_funcHillMEKToERKCyto=global_par_numHillWeight*global_par_numHillBeta*x(2)^global_par_numHillCoeff/(global_par_numHillK^global_par_numHillCoeff+x(2)^global_par_numHillCoeff);
% assignmentRule: variable = funcHillMEKToERKNuc
	global_par_funcHillMEKToERKNuc=global_par_numHillWeight*global_par_numHillBeta*x(4)^global_par_numHillCoeff/(global_par_numHillK^global_par_numHillCoeff+x(4)^global_par_numHillCoeff);
% assignmentRule: variable = funcHillERKToERKNuc
	global_par_funcHillERKToERKNuc=global_par_numHillWeight*global_par_numHillBeta*x(5)^global_par_numHillCoeff/(global_par_numHillK^global_par_numHillCoeff+x(5)^global_par_numHillCoeff);
% rateRule: variable = pRaf_cyto
x(1) = x(8);
% rateRule: variable = pMEK_cyto
x(2) = x(9);
% rateRule: variable = pERK_cyto
x(3) = x(10);
% rateRule: variable = pMEK_nuc
x(4) = x(11);
% rateRule: variable = pERK_nuc
x(5) = x(12);

%Event: id=Position_0
	event_Position_0=global_par_numTissuePos >= 0;

	if(event_Position_0) 
		x(6)=global_par_numCaInputBaseline+global_par_numCaInputAmp*global_par_numTissuePos/5;
		x(7)=global_par_numCaMInputBaseline+global_par_numCaMInputAmp*(global_par_numTissuePos+1)/2;
	end

%Event: id=Position_1
	event_Position_1=global_par_numTissuePos >= 1;

	if(event_Position_1) 
		x(7)=global_par_numCaMInputBaseline+global_par_numCaMInputAmp*exp(1-global_par_numTissuePos);
	end

%Event: id=Position_5
	event_Position_5=global_par_numTissuePos >= 5;

	if(event_Position_5) 
		x(6)=global_par_numCaInputBaseline+global_par_numCaInputAmp*(7-global_par_numTissuePos)/2;
		x(7)=0;
	end

%Event: id=Total_Rafc_input_less_than_0
	event_Total_Rafc_input_less_than_0=(global_par_funcHillCaToRaf-global_par_funcHillCaMToRaf-global_par_funcHillERKToRaf) <= 0;

	if(event_Total_Rafc_input_less_than_0) 
		global_par_numTotalRafInputs=0;
	end

%Event: id=Total_Raf_input_greater_than_0
	event_Total_Raf_input_greater_than_0=(global_par_funcHillCaToRaf-global_par_funcHillCaMToRaf-global_par_funcHillERKToRaf) > 0;

	if(event_Total_Raf_input_greater_than_0) 
		global_par_numTotalRafInputs=global_par_funcHillCaToRaf-global_par_funcHillCaMToRaf-global_par_funcHillERKToRaf;
	end

	xdot=zeros(12,1);
	% rateRule: variable = pRaf_cyto
	xdot(8) = 1/global_par_numHillTau*(global_par_numTotalRafInputs*global_par_numHillMax-x(1));
	% rateRule: variable = pMEK_cyto
	xdot(9) = 1/global_par_numHillTau*(global_par_funcHillRafToMEK*global_par_numHillMax-x(2)-global_par_numMEKCytoToNucParam*x(2)+1/global_par_numCytoToNucVolRatio*global_par_numMEKNucToCytoParam*x(4));
	% rateRule: variable = pERK_cyto
	xdot(10) = 1/global_par_numHillTau*(global_par_funcHillMEKToERKCyto*global_par_numHillMax-x(3)-global_par_numERKCytoToNucParam*x(3)+1/global_par_numCytoToNucVolRatio*global_par_numERKNucToCytoParam*x(5));
	% rateRule: variable = pMEK_nuc
	xdot(11) = 1/global_par_numHillTau*(-x(4)-global_par_numMEKNucToCytoParam*x(4)+global_par_numCytoToNucVolRatio*global_par_numMEKCytoToNucParam*x(2));
	% rateRule: variable = pERK_nuc
	xdot(12) = 1/global_par_numHillTau*((global_par_funcHillMEKToERKNuc-global_par_funcHillERKToERKNuc)*global_par_numHillMax-x(5)-global_par_numERKCytoToNucParam*x(5)+global_par_numCytoToNucVolRatio*global_par_numERKNucToCytoParam*x(3));
	
% Species:   id = pRaf_cyto, name = Rafc, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = pMEK_cyto, name = MEKc, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = pERK_cyto, name = ERKc, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = pMEK_nuc, name = MEKn, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = pERK_nuc, name = ERKn, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = Ca, name = Ca	xdot(6) = ;
	
% Species:   id = CaM_memb, name = CaM	xdot(7) = ;
end

% adding few functions representing operators used in SBML but not present directly 
% in either matlab or octave. 
function z=pow(x,y),z=x^y;end
function z=root(x,y),z=y^(1/x);end
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		end
	end
	if foundResult == 0
		result = varargin{numArgs};
	end
	z = result;
end


