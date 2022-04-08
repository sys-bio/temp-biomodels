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
% Model name = Qu2003_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL6931308526
% is http://identifiers.org/biomodels.db/BIOMD0000000110
% isDescribedBy http://identifiers.org/pubmed/14645053
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 200.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=300.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=30.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=30.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.1;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=10.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=100.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=10.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=1.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=1.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=2.0;
% Parameter:   id =  k2u, name = k2u
	global_par_k2u=50.0;
% Parameter:   id =  k7u, name = k7u
	global_par_k7u=0.0;
% Parameter:   id =  k16u, name = k16u
	global_par_k16u=25.0;
% Parameter:   id =  a, name = a
	global_par_a=4.0;
% Parameter:   id =  az, name = az
	global_par_az=10.0;
% Parameter:   id =  aw, name = aw
	global_par_aw=10.0;
% Parameter:   id =  ai, name = ai
	global_par_ai=10.0;
% Parameter:   id =  bz, name = bz
	global_par_bz=0.1;
% Parameter:   id =  bw, name = bw
	global_par_bw=0.1;
% Parameter:   id =  bi, name = bi
	global_par_bi=0.1;
% Parameter:   id =  cz, name = cz
	global_par_cz=1.0;
% Parameter:   id =  cw, name = cw
	global_par_cw=1.0;
% Parameter:   id =  ci, name = ci
	global_par_ci=1.0;
% Parameter:   id =  Tau, name = Tau
	global_par_Tau=25.0;
% assignmentRule: variable = c
	x(4)=(x(3)-(x(2)+x(1)+x(12)+x(13)))/(x(3)*compartment_cell);
% assignmentRule: variable = totalCyclin
	x(15)=x(2)+x(1)+x(14);

% Reaction: id = reaction_0000001, name = Free cyclin synthesis
	reaction_reaction_0000001=global_par_k1*compartment_cell;

% Reaction: id = reaction_0000002, name = Cyclin binding with CDK
	reaction_reaction_0000002=compartment_cell*(global_par_k3*x(4)*x(14)-x(1)*global_par_k4);

% Reaction: id = reaction_0000003, name = Cyclin degradation
	reaction_reaction_0000003=compartment_cell*(global_par_k2+global_par_k2u*x(10))*x(14);

% Reaction: id = reaction_0000004, name = z0 phosphorylation
	reaction_reaction_0000004=compartment_cell*((global_par_bz+global_par_cz*x(2))*x(5)-x(6)*global_par_az);

% Reaction: id = reaction_0000005, name = x phosphorylation
	reaction_reaction_0000005=compartment_cell*((global_par_k6+x(8))*x(2)-(global_par_k5+x(7))*x(1));

% Reaction: id = reaction_0000006, name = z1 phosphorylation
	reaction_reaction_0000006=compartment_cell*((global_par_bz+global_par_cz*x(2))*x(6)-global_par_az*x(7));

% Reaction: id = reaction_0000007, name = unphosphorylated wee1 synthesis
	reaction_reaction_0000007=global_par_k10*compartment_cell;

% Reaction: id = reaction_000008, name = wee1 phosphorylation
	reaction_reaction_000008=compartment_cell*((global_par_bw+global_par_cw*x(2))*x(8)-global_par_aw*x(9));

% Reaction: id = reaction_000009, name = SKP2 synthesis
	reaction_reaction_000009=compartment_cell*x(2)^2/(global_par_a^2+x(2)^2)/global_par_Tau;

% Reaction: id = reaction_0000010, name = CKI synthesis
	reaction_reaction_0000010=global_par_k12*compartment_cell;

% Reaction: id = reaction_0000011, name = CKI binding to Active Cyclin:CDK complex
	reaction_reaction_0000011=(global_par_k14*x(2)*x(11)-global_par_k15*x(12))*compartment_cell;

% Reaction: id = reaction_0000014, name = ix phosphorylation
	reaction_reaction_0000014=compartment_cell*((global_par_bi+global_par_ci*x(2))*x(12)-global_par_ai*x(13));

% Reaction: id = reaction_0000013, name = SKP2 degradation
	reaction_reaction_0000013=compartment_cell*x(10)/global_par_Tau;

% Reaction: id = reaction_0000015, name = CKI degradation
	reaction_reaction_0000015=compartment_cell*global_par_k13*x(11);

% Reaction: id = reaction_0000016, name = Cyclin:CDK:CKIp degradation
	reaction_reaction_0000016=compartment_cell*global_par_k16*global_par_k16u*x(13);

% Reaction: id = reaction_0000017, name = unphosphorylated wee1 degradation
	reaction_reaction_0000017=compartment_cell*x(8)*global_par_k11;

% Reaction: id = reaction_0000018, name = phosphorylated wee1 degradation
	reaction_reaction_0000018=compartment_cell*global_par_k11*x(9);

% Reaction: id = reaction_0000019, name = Unphosphorylated CDC25 degradation
	reaction_reaction_0000019=compartment_cell*global_par_k9*x(5);

% Reaction: id = reaction_0000020, name = One site phosphorylated CDC25 degradaton
	reaction_reaction_0000020=compartment_cell*global_par_k9*x(6);

% Reaction: id = reaction_0000021, name = Two site phosphorylated CDC25 degradation
	reaction_reaction_0000021=compartment_cell*global_par_k9*x(7);

% Reaction: id = reaction_0000022, name = Unphosphorylation CDC25 synthesis
	reaction_reaction_0000022=compartment_cell*global_par_k8;

% Reaction: id = reaction_0000023, name = Active cyclin:CDK complex degradation
	reaction_reaction_0000023=compartment_cell*(global_par_k7+global_par_k7u*x(10))*x(2);

	xdot=zeros(15,1);
	
% Species:   id = x1, name =  Inactive Cyclin:CDK complex, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000002) + ( 1.0 * reaction_reaction_0000005));
	
% Species:   id = x, name = Active Cyclin:CDK complex, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000005) + (-1.0 * reaction_reaction_0000011) + ( 1.0 * reaction_reaction_0000016) + (-1.0 * reaction_reaction_0000023));
	
% Species:   id = c0, name = Total CDK
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = c, name = Free CDK, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = z0, name = Unphosphorylated CDC25, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000019) + ( 1.0 * reaction_reaction_0000022));
	
% Species:   id = z1, name = One-site phosphorylated CDC25, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000006) + (-1.0 * reaction_reaction_0000020));
	
% Species:   id = z2, name = Two-site phosphorylated CDC25, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000006) + (-1.0 * reaction_reaction_0000021));
	
% Species:   id = w0, name = Unphosphorylated wee1, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000007) + (-1.0 * reaction_reaction_000008) + (-1.0 * reaction_reaction_0000017));
	
% Species:   id = w1, name = phosphorylated wee1, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_000008) + (-1.0 * reaction_reaction_0000018));
	
% Species:   id = u, name = Active SKP2 or APC, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_000009) + (-1.0 * reaction_reaction_0000013));
	
% Species:   id = i, name = Free CKI, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000010) + (-1.0 * reaction_reaction_0000011) + (-1.0 * reaction_reaction_0000015));
	
% Species:   id = ix, name = Cyclin:CDK:CKI complex with CKI unphosphorylated, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000011) + (-1.0 * reaction_reaction_0000014));
	
% Species:   id = ixp, name = Cyclin:CDK:CKI complex with CKI phosphorylated, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000014) + (-1.0 * reaction_reaction_0000016));
	
% Species:   id = y, name = Free cyclin, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000001) + (-1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000003));
	
% Species:   id = totalCyclin, name = totalCyclin, defined in a rule 	xdot(15) = x(15);
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


