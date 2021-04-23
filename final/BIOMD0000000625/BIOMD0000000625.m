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
% Model name = Leber2016 - Expanded model of Tfh-Tfr differentiation - Helicobacter pylori infection
%
% is http://identifiers.org/biomodels.db/MODEL1603010000
% is http://identifiers.org/biomodels.db/BIOMD0000000625
% isDescribedBy http://identifiers.org/pubmed/26947272
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 200.0;
	x0(2) = 100.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;
	x0(11) = 1.0;
	x0(12) = 1.0;
	x0(13) = 1.0;
	x0(14) = 1.0;
	x0(15) = 1.0;
	x0(16) = 1.0;
	x0(17) = 1.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;

% Reaction: id = NaiveCD4_Death, name = NaiveCD4 Death	% Local Parameter:   id =  k1, name = k1
	reaction_NaiveCD4_Death_k1=0.035655;

	reaction_NaiveCD4_Death=compartment_compartment*reaction_NaiveCD4_Death_k1*x(1);

% Reaction: id = nTreg_Death, name = nTreg Death	% Local Parameter:   id =  k1, name = k1
	reaction_nTreg_Death_k1=0.03;

	reaction_nTreg_Death=compartment_compartment*reaction_nTreg_Death_k1*x(2);

% Reaction: id = Tfh_Differentiation, name = Tfh Differentiation	% Local Parameter:   id =  alpha, name = alpha
	reaction_Tfh_Differentiation_alpha=0.1;
	% Local Parameter:   id =  gamma, name = gamma
	reaction_Tfh_Differentiation_gamma=0.364318;

	reaction_Tfh_Differentiation=compartment_compartment*Cell_Differentiation__1A_1I__1(x(5), x(11), x(1), reaction_Tfh_Differentiation_alpha, reaction_Tfh_Differentiation_gamma);

% Reaction: id = Tfr_Differentiation, name = Tfr Differentiation	% Local Parameter:   id =  gamma1, name = gamma1
	reaction_Tfr_Differentiation_gamma1=0.0555708;
	% Local Parameter:   id =  gamma2, name = gamma2
	reaction_Tfr_Differentiation_gamma2=0.111444;

	reaction_Tfr_Differentiation=compartment_compartment*Cell_Differentiation__2A__1(x(5), x(13), reaction_Tfr_Differentiation_gamma1, reaction_Tfr_Differentiation_gamma2, x(2));

% Reaction: id = Tfh_Death, name = Tfh Death	% Local Parameter:   id =  k1, name = k1
	reaction_Tfh_Death_k1=0.03;

	reaction_Tfh_Death=compartment_compartment*reaction_Tfh_Death_k1*x(3);

% Reaction: id = Tfr_Death, name = Tfr Death	% Local Parameter:   id =  k1, name = k1
	reaction_Tfr_Death_k1=0.03;

	reaction_Tfr_Death=compartment_compartment*reaction_Tfr_Death_k1*x(4);

% Reaction: id = Bcl6_Activation, name = Bcl6 Activation	% Local Parameter:   id =  alpha1, name = alpha1
	reaction_Bcl6_Activation_alpha1=0.20001;
	% Local Parameter:   id =  alpha2, name = alpha2
	reaction_Bcl6_Activation_alpha2=1.36752;
	% Local Parameter:   id =  alpha3, name = alpha3
	reaction_Bcl6_Activation_alpha3=0.1253;
	% Local Parameter:   id =  sigma1, name = sigma1
	reaction_Bcl6_Activation_sigma1=3.24417;
	% Local Parameter:   id =  sigma2, name = sigma2
	reaction_Bcl6_Activation_sigma2=3.2195;

	reaction_Bcl6_Activation=compartment_compartment*Molecule_Production__2A_3I__v2_1(x(6), x(14), x(17), x(8), const_species_STAT5, reaction_Bcl6_Activation_alpha1, reaction_Bcl6_Activation_alpha2, reaction_Bcl6_Activation_alpha3, reaction_Bcl6_Activation_sigma1, reaction_Bcl6_Activation_sigma2);

% Reaction: id = Blimp1_Activation, name = Blimp1 Activation	% Local Parameter:   id =  alpha, name = alpha
	reaction_Blimp1_Activation_alpha=2.386;
	% Local Parameter:   id =  sigma, name = sigma
	reaction_Blimp1_Activation_sigma=3.59995;

	reaction_Blimp1_Activation=compartment_compartment*Molecule_Production__1A_1I__1(x(5), x(4), reaction_Blimp1_Activation_alpha, reaction_Blimp1_Activation_sigma);

% Reaction: id = FoxP3_Activation, name = FoxP3 Activation	% Local Parameter:   id =  sigma, name = sigma
	reaction_FoxP3_Activation_sigma=0.1;

	reaction_FoxP3_Activation=compartment_compartment*Molecule_Production__1A_0I__1(x(2), reaction_FoxP3_Activation_sigma);

% Reaction: id = STAT3_Activation, name = STAT3 Activation	% Local Parameter:   id =  sigma1, name = sigma1
	reaction_STAT3_Activation_sigma1=0.1253;
	% Local Parameter:   id =  sigma2, name = sigma2
	reaction_STAT3_Activation_sigma2=0.1;

	reaction_STAT3_Activation=compartment_compartment*Molecule_Production__2A_0I__1(x(12), x(10), reaction_STAT3_Activation_sigma1, reaction_STAT3_Activation_sigma2);

% Reaction: id = STAT5_Activation, name = STAT5 Activation	% Local Parameter:   id =  sigma, name = sigma
	reaction_STAT5_Activation_sigma=10.0;

	reaction_STAT5_Activation=compartment_compartment*Molecule_Production__1A_0I__2(const_species_IL2, reaction_STAT5_Activation_sigma);

% Reaction: id = CXCR5_Production, name = CXCR5 Production	% Local Parameter:   id =  alpha, name = alpha
	reaction_CXCR5_Production_alpha=0.0539319;
	% Local Parameter:   id =  sigma1, name = sigma1
	reaction_CXCR5_Production_sigma1=3.0403;
	% Local Parameter:   id =  sigma2, name = sigma2
	reaction_CXCR5_Production_sigma2=2.92243;

	reaction_CXCR5_Production=compartment_compartment*Molecule_Production__2A_1I__1(x(6), x(3), x(4), reaction_CXCR5_Production_alpha, reaction_CXCR5_Production_sigma1, reaction_CXCR5_Production_sigma2);

% Reaction: id = ICOS_Production, name = ICOS Production	% Local Parameter:   id =  sigma, name = sigma
	reaction_ICOS_Production_sigma=0.01787;

	reaction_ICOS_Production=compartment_compartment*Molecule_Production__1A_0I__3(x(3), reaction_ICOS_Production_sigma);

% Reaction: id = IL4_Production, name = IL4 Production	% Local Parameter:   id =  sigma, name = sigma
	reaction_IL4_Production_sigma=0.014555;

	reaction_IL4_Production=compartment_compartment*Molecule_Production__1A_0I__3(x(3), reaction_IL4_Production_sigma);

% Reaction: id = IL6_Production, name = IL6 Production	% Local Parameter:   id =  alpha1, name = alpha1
	reaction_IL6_Production_alpha1=0.43475;
	% Local Parameter:   id =  sigma1, name = sigma1
	reaction_IL6_Production_sigma1=0.9901;

	reaction_IL6_Production=compartment_compartment*Molecule_Production__0A_1I__1(x(9), reaction_IL6_Production_alpha1, reaction_IL6_Production_sigma1);

% Reaction: id = IL10_Production, name = IL10 Production	% Local Parameter:   id =  sigma, name = sigma
	reaction_IL10_Production_sigma=0.0677;

	reaction_IL10_Production=compartment_compartment*Molecule_Production__1A_0I__4(x(4), reaction_IL10_Production_sigma);

% Reaction: id = Bcl6_Degradation, name = Bcl6 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Bcl6_Degradation_k1=0.16373;

	reaction_Bcl6_Degradation=compartment_compartment*reaction_Bcl6_Degradation_k1*x(5);

% Reaction: id = Blimp1_Degradation, name = Blimp1 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Blimp1_Degradation_k1=0.1106;

	reaction_Blimp1_Degradation=compartment_compartment*reaction_Blimp1_Degradation_k1*x(6);

% Reaction: id = FoxP3_Degradation, name = FoxP3 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_FoxP3_Degradation_k1=0.1;

	reaction_FoxP3_Degradation=compartment_compartment*reaction_FoxP3_Degradation_k1*x(7);

% Reaction: id = STAT3_Degradation, name = STAT3 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT3_Degradation_k1=0.1;

	reaction_STAT3_Degradation=compartment_compartment*reaction_STAT3_Degradation_k1*x(8);

% Reaction: id = STAT5_Degradation, name = STAT5 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT5_Degradation_k1=0.1;

	reaction_STAT5_Degradation=compartment_compartment*reaction_STAT5_Degradation_k1*const_species_STAT5;

% Reaction: id = CXCR5_Degradation, name = CXCR5 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_CXCR5_Degradation_k1=0.1;

	reaction_CXCR5_Degradation=compartment_compartment*reaction_CXCR5_Degradation_k1*x(13);

% Reaction: id = ICOS_Degradation, name = ICOS Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_ICOS_Degradation_k1=0.1;

	reaction_ICOS_Degradation=compartment_compartment*reaction_ICOS_Degradation_k1*x(14);

% Reaction: id = IL2_Degradation, name = IL2 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_IL2_Degradation_k1=0.1;

	reaction_IL2_Degradation=compartment_compartment*reaction_IL2_Degradation_k1*const_species_IL2;

% Reaction: id = IL4_Degradation, name = IL4 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_IL4_Degradation_k1=0.1;

	reaction_IL4_Degradation=compartment_compartment*reaction_IL4_Degradation_k1*x(9);

% Reaction: id = IL6_Degradation, name = IL6 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_IL6_Degradation_k1=0.69675;

	reaction_IL6_Degradation=compartment_compartment*reaction_IL6_Degradation_k1*x(10);

% Reaction: id = IL10_Degradation, name = IL10 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_IL10_Degradation_k1=0.1;

	reaction_IL10_Degradation=compartment_compartment*reaction_IL10_Degradation_k1*x(11);

% Reaction: id = IL21_Degradation, name = IL21 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_IL21_Degradation_k1=0.1;

	reaction_IL21_Degradation=compartment_compartment*reaction_IL21_Degradation_k1*x(12);

% Reaction: id = IL21_Production, name = IL21 Production	% Local Parameter:   id =  sigma, name = sigma
	reaction_IL21_Production_sigma=0.06005;

	reaction_IL21_Production=compartment_compartment*Molecule_Production__1A_0I__3(x(3), reaction_IL21_Production_sigma);

% Reaction: id = TGFb_Production, name = TGFb Production	% Local Parameter:   id =  sigma, name = sigma
	reaction_TGFb_Production_sigma=0.1;

	reaction_TGFb_Production=compartment_compartment*Molecule_Production__1A_0I__5(x(11), reaction_TGFb_Production_sigma);

% Reaction: id = TGFb_Degradation, name = TGFb Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_TGFb_Degradation_k1=0.1;

	reaction_TGFb_Degradation=compartment_compartment*reaction_TGFb_Degradation_k1*x(15);

% Reaction: id = RXR_Activation, name = RXR Activation	% Local Parameter:   id =  alpha, name = alpha
	reaction_RXR_Activation_alpha=3.04985;
	% Local Parameter:   id =  sigma, name = sigma
	reaction_RXR_Activation_sigma=0.05;

	reaction_RXR_Activation=compartment_compartment*Molecule_Production__1A_1I__2(x(15), x(16), reaction_RXR_Activation_alpha, reaction_RXR_Activation_sigma);

% Reaction: id = Tgif1_Production, name = Tgif1 Production	% Local Parameter:   id =  sigma, name = sigma
	reaction_Tgif1_Production_sigma=0.1;

	reaction_Tgif1_Production=compartment_compartment*Molecule_Production__1A_0I__3(x(3), reaction_Tgif1_Production_sigma);

% Reaction: id = RXR_Degradation, name = RXR Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_RXR_Degradation_k1=0.08465;

	reaction_RXR_Degradation=compartment_compartment*reaction_RXR_Degradation_k1*x(17);

% Reaction: id = Tgif1_Degradation, name = Tgif1 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Tgif1_Degradation_k1=0.1;

	reaction_Tgif1_Degradation=compartment_compartment*reaction_Tgif1_Degradation_k1*x(16);

% Species:   id = STAT5, name = STAT5, constant	const_species_STAT5=0.0;

% Species:   id = IL2, name = IL2, constant	const_species_IL2=1.0E-4;

	xdot=zeros(17,1);
	
% Species:   id = NaiveCD4, name = NaiveCD4, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_NaiveCD4_Source) + (-1.0 * reaction_NaiveCD4_Death) + (-1.0 * reaction_Tfh_Differentiation));
	
% Species:   id = nTreg, name = nTreg, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_nTreg_Source) + (-1.0 * reaction_nTreg_Death) + (-1.0 * reaction_Tfr_Differentiation));
	
% Species:   id = Tfh, name = Tfh, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Tfh_Differentiation) + (-1.0 * reaction_Tfh_Death));
	
% Species:   id = Tfr, name = Tfr, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Tfr_Differentiation) + (-1.0 * reaction_Tfr_Death));
	
% Species:   id = Bcl6, name = Bcl6, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Bcl6_Activation) + (-1.0 * reaction_Bcl6_Degradation));
	
% Species:   id = Blimp1, name = Blimp1, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Blimp1_Activation) + (-1.0 * reaction_Blimp1_Degradation));
	
% Species:   id = FoxP3, name = FoxP3, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_FoxP3_Activation) + (-1.0 * reaction_FoxP3_Degradation));
	
% Species:   id = STAT3, name = STAT3, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT3_Activation) + (-1.0 * reaction_STAT3_Degradation));
	
% Species:   id = IL4, name = IL4, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_IL4_Production) + (-1.0 * reaction_IL4_Degradation));
	
% Species:   id = IL6, name = IL6, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_IL6_Production) + (-1.0 * reaction_IL6_Degradation));
	
% Species:   id = IL10, name = IL10, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_IL10_Production) + (-1.0 * reaction_IL10_Degradation));
	
% Species:   id = IL21, name = IL21, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_IL21_Degradation) + ( 1.0 * reaction_IL21_Production));
	
% Species:   id = CXCR5, name = CXCR5, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_CXCR5_Production) + (-1.0 * reaction_CXCR5_Degradation));
	
% Species:   id = ICOS, name = ICOS, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_ICOS_Production) + (-1.0 * reaction_ICOS_Degradation));
	
% Species:   id = TGFb, name = TGFb, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_TGFb_Production) + (-1.0 * reaction_TGFb_Degradation));
	
% Species:   id = Tgif1, name = Tgif1, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_Tgif1_Production) + (-1.0 * reaction_Tgif1_Degradation));
	
% Species:   id = RXR, name = RXR, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_RXR_Activation) + (-1.0 * reaction_RXR_Degradation));
end

function z=Molecule_Production__1A_0I__2(IL2,sigma), z=(sigma*IL2);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Molecule_Production__1A_0I__1(nTreg,sigma), z=(sigma*nTreg);end

function z=Molecule_Production__2A_3I__v2_1(Blimp1,ICOS,RXR,STAT3,STAT5,alpha1,alpha2,alpha3,sigma1,sigma2), z=((sigma1*ICOS+sigma2*STAT3)/((alpha1+Blimp1)*(alpha2+STAT5)*(alpha3+RXR)));end

function z=Molecule_Production__0A_1I__1(IL4,alpha1,sigma1), z=(sigma1/(alpha1+IL4));end

function z=Molecule_Production__1A_0I__5(IL10,sigma), z=(sigma*IL10);end

function z=Cell_Differentiation__2A__1(Bcl6,CXCR5,gamma1,gamma2,nTreg), z=(gamma1*nTreg*Bcl6+gamma2*nTreg*CXCR5);end

function z=Molecule_Production__2A_0I__1(IL21,IL6,sigma1,sigma2), z=(sigma1*IL6+sigma2*IL21);end

function z=Molecule_Production__2A_1I__1(Blimp1,Tfh,Tfr,alpha,sigma1,sigma2), z=((sigma1*Tfh+sigma2*Tfr)/(alpha+Blimp1));end

function z=Molecule_Production__1A_0I__4(Tfr,sigma), z=(sigma*Tfr);end

function z=Molecule_Production__1A_1I__2(TGFb,Tgif1,alpha,sigma), z=(sigma*TGFb/(alpha+Tgif1));end

function z=Molecule_Production__1A_1I__1(Bcl6,Tfr,alpha,sigma), z=(sigma*Tfr/(alpha+Bcl6));end

function z=Molecule_Production__1A_0I__3(Tfh,sigma), z=(sigma*Tfh);end

function z=Cell_Differentiation__1A_1I__1(Bcl6,IL10,NaiveCD4,alpha,gamma), z=(gamma*NaiveCD4*Bcl6/(alpha+IL10));end

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


