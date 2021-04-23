% This file works with OCTAVE and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file.
% To run this file with Matlab you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Ray2013 - Meiotic initiation in S. cerevisiae
%
% is http://identifiers.org/biomodels.db/MODEL1303060000
% is http://identifiers.org/biomodels.db/BIOMD0000000626
% isDescribedBy http://identifiers.org/pubmed/23631506
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.999999999999971;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%	tspan=[0:0.01:100];
%	opts = odeset('AbsTol',1e-3);
%	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
	t=linspace(0,100,100);
	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%function xdot=f(t,x)
% End Matlab code

% Start Octave code
function xdot=f(x,t)
% End Octave code

% Compartment: id = V, name = Cell, constant
	compartment_V=1.0;

% Reaction: id = rim11_1, name = Rim11 Dephosphorylation	% Local Parameter:   id =  prim_11, name = prim_11
	reaction_rim11_1_prim_11=0.01;
	% Local Parameter:   id =  urim_11, name = urim_11
	reaction_rim11_1_urim_11=0.1;

	reaction_rim11_1=compartment_V*ODE_Rim11_1_1(x(1), reaction_rim11_1_prim_11, reaction_rim11_1_urim_11);

% Reaction: id = pume6_1, name = Ume6 Phosphorylation	% Local Parameter:   id =  pume_6, name = pume_6
	reaction_pume6_1_pume_6=0.3;
	% Local Parameter:   id =  uume_6, name = uume_6
	reaction_pume6_1_uume_6=0.01;

	reaction_pume6_1=compartment_V*ODE_pUme6_1_1__1(x(1), x(2), reaction_pume6_1_pume_6, reaction_pume6_1_uume_6);

% Reaction: id = sok2_1, name = Production of Phosphorylated Sok2	% Local Parameter:   id =  csok_2, name = csok_2
	reaction_sok2_1_csok_2=0.05;
	% Local Parameter:   id =  psok_2, name = psok_2
	reaction_sok2_1_psok_2=0.7;
	% Local Parameter:   id =  usok_2, name = usok_2
	reaction_sok2_1_usok_2=1.0;

	reaction_sok2_1=compartment_V*ODE_pSok2_1_1__1(x(4), reaction_sok2_1_csok_2, x(3), reaction_sok2_1_psok_2, reaction_sok2_1_usok_2);

% Reaction: id = ime1_1, name = Ime1 Protein Production	% Local Parameter:   id =  c_1, name = c_1
	reaction_ime1_1_c_1=0.01;
	% Local Parameter:   id =  cime_1, name = cime_1
	reaction_ime1_1_cime_1=0.01;
	% Local Parameter:   id =  dime_1, name = dime_1
	reaction_ime1_1_dime_1=1.0;
	% Local Parameter:   id =  dprimeime_1, name = dprimeime_1
	reaction_ime1_1_dprimeime_1=1.0;
	% Local Parameter:   id =  pime_1, name = pime_1
	reaction_ime1_1_pime_1=2.0;
	% Local Parameter:   id =  sime_1, name = sime_1
	reaction_ime1_1_sime_1=10.0;

	reaction_ime1_1=compartment_V*ODE_Ime1_1_1__1(x(4), x(6), x(1), reaction_ime1_1_c_1, reaction_ime1_1_cime_1, reaction_ime1_1_dime_1, reaction_ime1_1_dprimeime_1, x(3), reaction_ime1_1_pime_1, reaction_ime1_1_sime_1);

% Reaction: id = pime1_1, name = Phosphorylation of Ime1	% Local Parameter:   id =  dpime_1, name = dpime_1
	reaction_pime1_1_dpime_1=1.0;
	% Local Parameter:   id =  pime_1, name = pime_1
	reaction_pime1_1_pime_1=2.0;

	reaction_pime1_1=compartment_V*ODE_pIme1_1_1__1(x(4), x(1), reaction_pime1_1_dpime_1, x(5), reaction_pime1_1_pime_1);

% Reaction: id = ime2_1, name = Ime2 Protein Production	% Local Parameter:   id =  c_2, name = c_2
	reaction_ime2_1_c_2=1.4;
	% Local Parameter:   id =  c_3, name = c_3
	reaction_ime2_1_c_3=2.0;
	% Local Parameter:   id =  dime_2, name = dime_2
	reaction_ime2_1_dime_2=8.0;
	% Local Parameter:   id =  sime_2, name = sime_2
	reaction_ime2_1_sime_2=10.0;
	% Local Parameter:   id =  sprimeime_2, name = sprimeime_2
	reaction_ime2_1_sprimeime_2=3.0;

	reaction_ime2_1=compartment_V*ODE_Ime2_1_1_1__1(x(6), reaction_ime2_1_c_2, reaction_ime2_1_c_3, reaction_ime2_1_dime_2, x(5), x(2), reaction_ime2_1_sime_2, reaction_ime2_1_sprimeime_2);

	xdot=zeros(6,1);
	
% Species:   id = Rim11, name = Rim11, affected by kineticLaw
	xdot(1) = (1/(compartment_V))*(( 1.0 * reaction_rim11_1));
	
% Species:   id = pUme6, name = pUme6, affected by kineticLaw
	xdot(2) = (1/(compartment_V))*(( 1.0 * reaction_pume6_1));
	
% Species:   id = pSok2, name = pSok2, affected by kineticLaw
	xdot(3) = (1/(compartment_V))*(( 1.0 * reaction_sok2_1));
	
% Species:   id = Ime1, name = Ime1, affected by kineticLaw
	xdot(4) = (1/(compartment_V))*(( 1.0 * reaction_ime1_1));
	
% Species:   id = pIme1, name = pIme1, affected by kineticLaw
	xdot(5) = (1/(compartment_V))*(( 1.0 * reaction_pime1_1));
	
% Species:   id = Ime2, name = Ime2, affected by kineticLaw
	xdot(6) = (1/(compartment_V))*(( 1.0 * reaction_ime2_1));
end

function z=ODE_pIme1_1_1__1(Ime1,Rim11,dpime_1,pIme1,pime_1), z=(pime_1*Ime1*Rim11-dpime_1*pIme1);end

function z=ODE_pUme6_1_1__1(Rim11,pUme6,pume_6,uume_6), z=((1-pUme6)*pume_6*Rim11-uume_6*pUme6);end

function z=ODE_Ime2_1_1_1__1(Ime2,c_2,c_3,dime_2,pIme1,pUme6,sime_2,sprimeime_2), z=(sime_2*pUme6*pIme1+sprimeime_2*Ime2^5/(c_2^5+Ime2^5)-dime_2*Ime2/(c_3+Ime2));end

function z=ODE_pSok2_1_1__1(Ime1,csok_2,pSok2,psok_2,usok_2), z=(csok_2/(csok_2+Ime1)*(1-pSok2)*psok_2-usok_2*pSok2);end

function z=ODE_Ime1_1_1__1(Ime1,Ime2,Rim11,c_1,cime_1,dime_1,dprimeime_1,pSok2,pime_1,sime_1), z=(cime_1/(cime_1+pSok2)*sime_1-(pime_1*Ime1*Rim11+dime_1*Ime1+dprimeime_1*Ime2*Ime1/(c_1+Ime1)));end

function z=ODE_Rim11_1_1(Rim11,prim_11,urim_11), z=(urim_11*(1-Rim11)-prim_11*Rim11);end

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


