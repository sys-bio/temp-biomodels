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
% Model name = Kongas2007 - Creatine Kinase in energy metabolic signaling in muscle
%
% is http://identifiers.org/biomodels.db/MODEL6622188656
% is http://identifiers.org/biomodels.db/BIOMD0000000041
% isDescribedBy http://identifiers.org/doi/10.1038/npre.2007.1317.1
% isDerivedFrom http://identifiers.org/pubmed/10751324
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 9700.0;
	x0(8) = 26000.0;
	x0(9) = 32000.0;
	x0(10) = 0.0;


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

% Compartment: id = IMS, name = IMS, constant
	compartment_IMS=0.0625;
% Compartment: id = CYT, name = CYT, constant
	compartment_CYT=0.75;

% Reaction: id = OxPhos, name = Vsyn	% Local Parameter:   id =  V_1, name = Vsynmax
	reaction_OxPhos_V_1=4600.0;
	% Local Parameter:   id =  Ka_1, name = Kadp
	reaction_OxPhos_Ka_1=800.0;
	% Local Parameter:   id =  Kb_1, name = Kpi
	reaction_OxPhos_Kb_1=20.0;

	reaction_OxPhos=compartment_IMS*reaction_OxPhos_V_1*x(1)*x(9)/(reaction_OxPhos_Ka_1*reaction_OxPhos_Kb_1*(1+x(1)/reaction_OxPhos_Ka_1+x(9)/reaction_OxPhos_Kb_1+x(1)*x(9)/(reaction_OxPhos_Ka_1*reaction_OxPhos_Kb_1)));

% Reaction: id = MiCK, name = Vmick	% Local Parameter:   id =  Vf_2, name = Vf_2
	reaction_MiCK_Vf_2=2658.0;
	% Local Parameter:   id =  Kia_2, name = Kia_2
	reaction_MiCK_Kia_2=750.0;
	% Local Parameter:   id =  Kb_2, name = Kb_2
	reaction_MiCK_Kb_2=5200.0;
	% Local Parameter:   id =  Vb_2, name = Vb_2
	reaction_MiCK_Vb_2=11160.0;
	% Local Parameter:   id =  Kic_2, name = Kic_2
	reaction_MiCK_Kic_2=204.8;
	% Local Parameter:   id =  Kd_2, name = Kd_2
	reaction_MiCK_Kd_2=500.0;
	% Local Parameter:   id =  Kib_2, name = Kib_2
	reaction_MiCK_Kib_2=28800.0;
	% Local Parameter:   id =  Kid_2, name = Kid_2
	reaction_MiCK_Kid_2=1600.0;

	reaction_MiCK=compartment_IMS*(reaction_MiCK_Vf_2*x(2)*x(3)/(reaction_MiCK_Kia_2*reaction_MiCK_Kb_2)-reaction_MiCK_Vb_2*x(1)*x(4)/(reaction_MiCK_Kic_2*reaction_MiCK_Kd_2))/(1+x(3)/reaction_MiCK_Kib_2+x(4)/reaction_MiCK_Kid_2+x(2)*(1/reaction_MiCK_Kia_2+x(3)/(reaction_MiCK_Kia_2*reaction_MiCK_Kb_2))+x(1)*(1/reaction_MiCK_Kic_2+x(3)/(reaction_MiCK_Kic_2*reaction_MiCK_Kib_2)+x(4)/(reaction_MiCK_Kid_2*reaction_MiCK_Kic_2*reaction_MiCK_Kd_2/reaction_MiCK_Kid_2)));

% Reaction: id = MMCK, name = Vmmck	% Local Parameter:   id =  Vf_3, name = Vf_3
	reaction_MMCK_Vf_3=6966.0;
	% Local Parameter:   id =  Kia_3, name = Kia_3
	reaction_MMCK_Kia_3=900.0;
	% Local Parameter:   id =  Kb_3, name = Kb_3
	reaction_MMCK_Kb_3=15500.0;
	% Local Parameter:   id =  Vb_3, name = Vb_3
	reaction_MMCK_Vb_3=29250.0;
	% Local Parameter:   id =  Kic_3, name = Kic_3
	reaction_MMCK_Kic_3=222.4;
	% Local Parameter:   id =  Kd_3, name = Kd_3
	reaction_MMCK_Kd_3=1670.0;
	% Local Parameter:   id =  Kib_3, name = Kib_3
	reaction_MMCK_Kib_3=34900.0;
	% Local Parameter:   id =  Kid_3, name = Kid_3
	reaction_MMCK_Kid_3=4730.0;

	reaction_MMCK=compartment_CYT*(reaction_MMCK_Vf_3*x(7)*x(8)/(reaction_MMCK_Kia_3*reaction_MMCK_Kb_3)-reaction_MMCK_Vb_3*x(6)*x(5)/(reaction_MMCK_Kic_3*reaction_MMCK_Kd_3))/(1+x(8)/reaction_MMCK_Kib_3+x(5)/reaction_MMCK_Kid_3+x(7)*(1/reaction_MMCK_Kia_3+x(8)/(reaction_MMCK_Kia_3*reaction_MMCK_Kb_3))+x(6)*(1/reaction_MMCK_Kic_3+x(8)/(reaction_MMCK_Kic_3*reaction_MMCK_Kib_3)+x(5)/(reaction_MMCK_Kid_3*reaction_MMCK_Kic_3*reaction_MMCK_Kd_3/reaction_MMCK_Kid_3)));

% Reaction: id = ATPase, name = Vhyd	% Local Parameter:   id =  v_4, name = Vhyd
	reaction_ATPase_v_4=4600.0;

	reaction_ATPase=compartment_CYT*reaction_ATPase_v_4*x(7);

% Reaction: id = Pi_diffusion, name = Jpi	% Local Parameter:   id =  k2_5, name = Rpi
	reaction_Pi_diffusion_k2_5=18.4;

	reaction_Pi_diffusion=compartment_IMS*reaction_Pi_diffusion_k2_5*x(9)-compartment_CYT*reaction_Pi_diffusion_k2_5*x(10);

% Reaction: id = Cr_diffusion, name = Jcr	% Local Parameter:   id =  k1_6, name = Rcr
	reaction_Cr_diffusion_k1_6=14.6;

	reaction_Cr_diffusion=compartment_IMS*reaction_Cr_diffusion_k1_6*x(3)-compartment_CYT*reaction_Cr_diffusion_k1_6*x(8);

% Reaction: id = ADP_diffusion, name = Jadp	% Local Parameter:   id =  k1_7, name = Radp
	reaction_ADP_diffusion_k1_7=8.16;

	reaction_ADP_diffusion=compartment_IMS*reaction_ADP_diffusion_k1_7*x(1)-compartment_CYT*reaction_ADP_diffusion_k1_7*x(6);

% Reaction: id = PCr_diffusion, name = Jpcr	% Local Parameter:   id =  k1_8, name = Jpcr
	reaction_PCr_diffusion_k1_8=14.6;

	reaction_PCr_diffusion=compartment_IMS*reaction_PCr_diffusion_k1_8*x(4)-compartment_CYT*reaction_PCr_diffusion_k1_8*x(5);

% Reaction: id = ATP_diffusion, name = Jatp	% Local Parameter:   id =  k1_9, name = Jatp
	reaction_ATP_diffusion_k1_9=8.16;

	reaction_ATP_diffusion=compartment_IMS*reaction_ATP_diffusion_k1_9*x(2)-compartment_CYT*reaction_ATP_diffusion_k1_9*x(7);

	xdot=zeros(10,1);
	
% Species:   id = ADPi, name = ADPi, affected by kineticLaw
	xdot(1) = (1/(compartment_IMS))*((-1.0 * reaction_OxPhos) + ( 1.0 * reaction_MiCK) + (-1.0 * reaction_ADP_diffusion));
	
% Species:   id = ATPi, name = ATPi, affected by kineticLaw
	xdot(2) = (1/(compartment_IMS))*(( 1.0 * reaction_OxPhos) + (-1.0 * reaction_MiCK) + (-1.0 * reaction_ATP_diffusion));
	
% Species:   id = Cri, name = Cri, affected by kineticLaw
	xdot(3) = (1/(compartment_IMS))*((-1.0 * reaction_MiCK) + (-1.0 * reaction_Cr_diffusion));
	
% Species:   id = PCri, name = PCri, affected by kineticLaw
	xdot(4) = (1/(compartment_IMS))*(( 1.0 * reaction_MiCK) + (-1.0 * reaction_PCr_diffusion));
	
% Species:   id = PCr, name = PCr, affected by kineticLaw
	xdot(5) = (1/(compartment_CYT))*(( 1.0 * reaction_MMCK) + ( 1.0 * reaction_PCr_diffusion));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(6) = (1/(compartment_CYT))*(( 1.0 * reaction_MMCK) + ( 1.0 * reaction_ATPase) + ( 1.0 * reaction_ADP_diffusion));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(7) = (1/(compartment_CYT))*((-1.0 * reaction_MMCK) + (-1.0 * reaction_ATPase) + ( 1.0 * reaction_ATP_diffusion));
	
% Species:   id = Cr, name = Cr, affected by kineticLaw
	xdot(8) = (1/(compartment_CYT))*((-1.0 * reaction_MMCK) + ( 1.0 * reaction_Cr_diffusion));
	
% Species:   id = Pi, name = Pii, affected by kineticLaw
	xdot(9) = (1/(compartment_IMS))*((-1.0 * reaction_OxPhos) + (-1.0 * reaction_Pi_diffusion));
	
% Species:   id = P, name = Pi, affected by kineticLaw
	xdot(10) = (1/(compartment_CYT))*(( 1.0 * reaction_ATPase) + ( 1.0 * reaction_Pi_diffusion));
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


