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
% Model name = SmithAE2002_RanTransport
%
% is http://identifiers.org/biomodels.db/MODEL1886921294
% is http://identifiers.org/biomodels.db/BIOMD0000000164
% isDescribedBy http://identifiers.org/pubmed/11799242
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(1) = 11.8952664327711;
	x0(2) = 0.00182967434742422;
	x0(3) = 0.5;
	x0(4) = 2.91577340630959;
	x0(5) = 0.0842265936904004;
	x0(6) = 0.560888580955963;
	x0(7) = 0.0466849733424111;
	x0(8) = 0.4;
	x0(9) = 0.0118032373274648;
	x0(10) = 0.939111419044037;
	x0(11) = 10.8211328580636;
	x0(12) = 1.75546095870568;
	x0(13) = 11.5694219089212;
	x0(14) = 1.47617820113791;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 1.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.023821798862085;
	x0(25) = 0.0;
	x0(26) = 0.0;


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

% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = EC, name = EC, constant
	compartment_EC=1.40845070422535;
% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=0.408450704225352;
% Compartment: id = Nuc_membrane, name = Nuc_membrane, constant
	compartment_Nuc_membrane=0.245070422535211;
% Compartment: id = PM, name = PM, constant
	compartment_PM=1.40845070422535;
% Parameter:   id =  RanGAP_Kcat_FRanGTP_dephosphorylation, name = RanGAP_Kcat_FRanGTP_dephosphorylation
	global_par_RanGAP_Kcat_FRanGTP_dephosphorylation=6.0;
% Parameter:   id =  Vmax_RanGTP_dephosphorylation_FRanGTP_dephosphorylation, name = Vmax_RanGTP_dephosphorylation_FRanGTP_dephosphorylation
% Parameter:   id =  RanGAP_Kcat_dephosphorylationF, name = RanGAP_Kcat_dephosphorylationF
	global_par_RanGAP_Kcat_dephosphorylationF=6.0;
% Parameter:   id =  Vmax_dephosphorylation_dephosphorylationF, name = Vmax_dephosphorylation_dephosphorylationF
% Parameter:   id =  RanGAP_Kcat_RanGTP_dephosphorylation, name = RanGAP_Kcat_RanGTP_dephosphorylation
	global_par_RanGAP_Kcat_RanGTP_dephosphorylation=6.0;
% Parameter:   id =  Vmax_RanGTP_dephosphorylation_RanGTP_dephosphorylation, name = Vmax_RanGTP_dephosphorylation_RanGTP_dephosphorylation
% Parameter:   id =  RanGAP_Kcat_dephosphorylation, name = RanGAP_Kcat_dephosphorylation
	global_par_RanGAP_Kcat_dephosphorylation=6.0;
% Parameter:   id =  Vmax_dephosphorylation_dephosphorylation, name = Vmax_dephosphorylation_dephosphorylation
% Parameter:   id =  kinj, name = kinj
	global_par_kinj=25.0;
% Parameter:   id =  start, name = start
	global_par_start=1.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.4;
% Parameter:   id =  ar_for_Microinj, name = ar_for_Microinj
% assignmentRule: variable = Vmax_RanGTP_dephosphorylation_FRanGTP_dephosphorylation
	global_par_Vmax_RanGTP_dephosphorylation_FRanGTP_dephosphorylation=global_par_RanGAP_Kcat_FRanGTP_dephosphorylation*x(3);
% assignmentRule: variable = Vmax_dephosphorylation_dephosphorylationF
	global_par_Vmax_dephosphorylation_dephosphorylationF=x(3)*global_par_RanGAP_Kcat_dephosphorylationF;
% assignmentRule: variable = Vmax_RanGTP_dephosphorylation_RanGTP_dephosphorylation
	global_par_Vmax_RanGTP_dephosphorylation_RanGTP_dephosphorylation=global_par_RanGAP_Kcat_RanGTP_dephosphorylation*x(3);
% assignmentRule: variable = Vmax_dephosphorylation_dephosphorylation
	global_par_Vmax_dephosphorylation_dephosphorylation=x(3)*global_par_RanGAP_Kcat_dephosphorylation;
% assignmentRule: variable = ar_for_Microinj
	global_par_ar_for_Microinj=piecewise(global_par_kinj*0.0016611295681*x(25), (t > global_par_start) && (t < (global_par_start+global_par_tau)), 0);

% Reaction: id = Carrier_FRanGTP_binding, name = Carrier FRanGTP binding	% Local Parameter:   id =  Kon_Carrier_RanGTP_binding, name = Kon_Carrier_RanGTP_binding
	reaction_Carrier_FRanGTP_binding_Kon_Carrier_RanGTP_binding=0.0;
	% Local Parameter:   id =  Koff_Carrier_RanGTP_binding, name = Koff_Carrier_RanGTP_binding
	reaction_Carrier_FRanGTP_binding_Koff_Carrier_RanGTP_binding=0.0;

	reaction_Carrier_FRanGTP_binding=(reaction_Carrier_FRanGTP_binding_Kon_Carrier_RanGTP_binding*x(1)*x(15)+(-reaction_Carrier_FRanGTP_binding_Koff_Carrier_RanGTP_binding*x(16)))*compartment_Cytosol;

% Reaction: id = FRanGTP_dephosphorylation, name = FRanGTP dephosphorylation	% Local Parameter:   id =  Km_RanGTP_dephosphorylation, name = Km_RanGTP_dephosphorylation
	reaction_FRanGTP_dephosphorylation_Km_RanGTP_dephosphorylation=0.43;

	reaction_FRanGTP_dephosphorylation=global_par_Vmax_RanGTP_dephosphorylation_FRanGTP_dephosphorylation*x(15)*1/(reaction_FRanGTP_dephosphorylation_Km_RanGTP_dephosphorylation+x(15))*compartment_Cytosol;

% Reaction: id = dephosphorylationF, name = dephosphorylationF	% Local Parameter:   id =  Km_dephosphorylation, name = Km_dephosphorylation
	reaction_dephosphorylationF_Km_dephosphorylation=0.43;

	reaction_dephosphorylationF=global_par_Vmax_dephosphorylation_dephosphorylationF*x(19)*1/(reaction_dephosphorylationF_Km_dephosphorylation+x(19))*compartment_Cytosol;

% Reaction: id = FRanGTP_Carrier_binding, name = FRanGTP Carrier binding	% Local Parameter:   id =  Kon_RanGTP_Carrier_binding, name = Kon_RanGTP_Carrier_binding
	reaction_FRanGTP_Carrier_binding_Kon_RanGTP_Carrier_binding=100.0;
	% Local Parameter:   id =  Koff_RanGTP_Carrier_binding, name = Koff_RanGTP_Carrier_binding
	reaction_FRanGTP_Carrier_binding_Koff_RanGTP_Carrier_binding=1.0;

	reaction_FRanGTP_Carrier_binding=(reaction_FRanGTP_Carrier_binding_Kon_RanGTP_Carrier_binding*x(11)*x(23)+(-reaction_FRanGTP_Carrier_binding_Koff_RanGTP_Carrier_binding*x(20)))*compartment_Nucleus;

% Reaction: id = NTF2_FRanGDP_Unbinding, name = NTF2_FRanGDP Unbinding	% Local Parameter:   id =  Kon_NTF2_RanGDP_binding, name = Kon_NTF2_RanGDP_binding
	reaction_NTF2_FRanGDP_Unbinding_Kon_NTF2_RanGDP_binding=100.0;
	% Local Parameter:   id =  Koff_NTF2_RanGDP_binding, name = Koff_NTF2_RanGDP_binding
	reaction_NTF2_FRanGDP_Unbinding_Koff_NTF2_RanGDP_binding=2.5;

	reaction_NTF2_FRanGDP_Unbinding=(reaction_NTF2_FRanGDP_Unbinding_Kon_NTF2_RanGDP_binding*x(24)*x(17)+(-reaction_NTF2_FRanGDP_Unbinding_Koff_NTF2_RanGDP_binding*x(18)))*compartment_Cytosol;

% Reaction: id = RanBP1_bindingF, name = RanBP1 bindingF	% Local Parameter:   id =  Kon_RanBP1_binding, name = Kon_RanBP1_binding
	reaction_RanBP1_bindingF_Kon_RanBP1_binding=100.0;
	% Local Parameter:   id =  Koff_RanBP1_binding, name = Koff_RanBP1_binding
	reaction_RanBP1_bindingF_Koff_RanBP1_binding=0.5;

	reaction_RanBP1_bindingF=(reaction_RanBP1_bindingF_Kon_RanBP1_binding*x(16)*x(4)+(-reaction_RanBP1_bindingF_Koff_RanBP1_binding*x(19)))*compartment_Cytosol;

% Reaction: id = NTF2_FRanGDP_unbinding, name = NTF2_FRanGDP unbinding	% Local Parameter:   id =  Koff_NTF2_RanGDP_unbinding, name = Koff_NTF2_RanGDP_unbinding
	reaction_NTF2_FRanGDP_unbinding_Koff_NTF2_RanGDP_unbinding=2.5;
	% Local Parameter:   id =  Kon_NTF2_RanGDP_unbinding, name = Kon_NTF2_RanGDP_unbinding
	reaction_NTF2_FRanGDP_unbinding_Kon_NTF2_RanGDP_unbinding=100.0;

	reaction_NTF2_FRanGDP_unbinding=(reaction_NTF2_FRanGDP_unbinding_Koff_NTF2_RanGDP_unbinding*x(22)+(-reaction_NTF2_FRanGDP_unbinding_Kon_NTF2_RanGDP_unbinding*x(6)*x(21)))*compartment_Nucleus;

% Reaction: id = Microinj, name = Microinj
	reaction_Microinj=global_par_ar_for_Microinj*compartment_Cytosol*1;

% Reaction: id = FRanGDP_to_FRanGTP, name = FRanGDP to FRanGTP	% Local Parameter:   id =  RCC1Kcat, name = RCC1Kcat
	reaction_FRanGDP_to_FRanGTP_RCC1Kcat=8.5;
	% Local Parameter:   id =  RCC1Km, name = RCC1Km
	reaction_FRanGDP_to_FRanGTP_RCC1Km=1.1;

	reaction_FRanGDP_to_FRanGTP=0.75*reaction_FRanGDP_to_FRanGTP_RCC1Kcat*x(8)*x(21)*1/(reaction_FRanGDP_to_FRanGTP_RCC1Km+x(21)+x(10))*compartment_Nucleus;

% Reaction: id = RanGTP_dephosphorylation, name = RanGTP dephosphorylation	% Local Parameter:   id =  Km_RanGTP_dephosphorylation, name = Km_RanGTP_dephosphorylation
	reaction_RanGTP_dephosphorylation_Km_RanGTP_dephosphorylation=0.43;

	reaction_RanGTP_dephosphorylation=global_par_Vmax_RanGTP_dephosphorylation_RanGTP_dephosphorylation*x(26)*1/(reaction_RanGTP_dephosphorylation_Km_RanGTP_dephosphorylation+x(26))*compartment_Cytosol;

% Reaction: id = RanGTP_Carrier_binding, name = RanGTP Carrier binding	% Local Parameter:   id =  Kon_RanGTP_Carrier_binding, name = Kon_RanGTP_Carrier_binding
	reaction_RanGTP_Carrier_binding_Kon_RanGTP_Carrier_binding=100.0;
	% Local Parameter:   id =  Koff_RanGTP_Carrier_binding, name = Koff_RanGTP_Carrier_binding
	reaction_RanGTP_Carrier_binding_Koff_RanGTP_Carrier_binding=1.0;

	reaction_RanGTP_Carrier_binding=(reaction_RanGTP_Carrier_binding_Kon_RanGTP_Carrier_binding*x(9)*x(11)+(-reaction_RanGTP_Carrier_binding_Koff_RanGTP_Carrier_binding*x(13)))*compartment_Nucleus;

% Reaction: id = NTF2_RanGDP_Unbinding, name = NTF2_RanGDP Unbinding	% Local Parameter:   id =  Kon_NTF2_RanGDP_binding, name = Kon_NTF2_RanGDP_binding
	reaction_NTF2_RanGDP_Unbinding_Kon_NTF2_RanGDP_binding=100.0;
	% Local Parameter:   id =  Koff_NTF2_RanGDP_binding, name = Koff_NTF2_RanGDP_binding
	reaction_NTF2_RanGDP_Unbinding_Koff_NTF2_RanGDP_binding=2.5;

	reaction_NTF2_RanGDP_Unbinding=(reaction_NTF2_RanGDP_Unbinding_Kon_NTF2_RanGDP_binding*x(12)*x(24)+(-reaction_NTF2_RanGDP_Unbinding_Koff_NTF2_RanGDP_binding*x(14)))*compartment_Cytosol;

% Reaction: id = dephosphorylation, name = dephosphorylation	% Local Parameter:   id =  Km_dephosphorylation, name = Km_dephosphorylation
	reaction_dephosphorylation_Km_dephosphorylation=0.43;

	reaction_dephosphorylation=global_par_Vmax_dephosphorylation_dephosphorylation*x(5)*1/(reaction_dephosphorylation_Km_dephosphorylation+x(5))*compartment_Cytosol;

% Reaction: id = RanGDP_to_RanGTP, name = RanGDP to RanGTP	% Local Parameter:   id =  RCC1Kcat, name = RCC1Kcat
	reaction_RanGDP_to_RanGTP_RCC1Kcat=8.5;
	% Local Parameter:   id =  RCC1Km, name = RCC1Km
	reaction_RanGDP_to_RanGTP_RCC1Km=1.1;

	reaction_RanGDP_to_RanGTP=0.75*reaction_RanGDP_to_RanGTP_RCC1Kcat*x(8)*x(7)*1/(reaction_RanGDP_to_RanGTP_RCC1Km+x(7)+x(10))*compartment_Nucleus;

% Reaction: id = NTF2_RAN_Nuc_Exchange, name = NTF2_RAN_Nuc_Exchange	% Local Parameter:   id =  RCC1Kcat, name = RCC1Kcat
	reaction_NTF2_RAN_Nuc_Exchange_RCC1Kcat=8.5;
	% Local Parameter:   id =  RCC1Km, name = RCC1Km
	reaction_NTF2_RAN_Nuc_Exchange_RCC1Km=1.1;

	reaction_NTF2_RAN_Nuc_Exchange=0.25*reaction_NTF2_RAN_Nuc_Exchange_RCC1Kcat*x(8)*x(10)*1/(reaction_NTF2_RAN_Nuc_Exchange_RCC1Km+x(7)+x(10))*compartment_Nucleus;

% Reaction: id = NTF2_RanGDP_unbinding, name = NTF2_RanGDP unbinding	% Local Parameter:   id =  Koff_NTF2_RanGDP_unbinding, name = Koff_NTF2_RanGDP_unbinding
	reaction_NTF2_RanGDP_unbinding_Koff_NTF2_RanGDP_unbinding=2.5;
	% Local Parameter:   id =  Kon_NTF2_RanGDP_unbinding, name = Kon_NTF2_RanGDP_unbinding
	reaction_NTF2_RanGDP_unbinding_Kon_NTF2_RanGDP_unbinding=100.0;

	reaction_NTF2_RanGDP_unbinding=(reaction_NTF2_RanGDP_unbinding_Koff_NTF2_RanGDP_unbinding*x(10)+(-reaction_NTF2_RanGDP_unbinding_Kon_NTF2_RanGDP_unbinding*x(7)*x(6)))*compartment_Nucleus;

% Reaction: id = Carrier_RanGTP_binding, name = Carrier RanGTP binding	% Local Parameter:   id =  Kon_Carrier_RanGTP_binding, name = Kon_Carrier_RanGTP_binding
	reaction_Carrier_RanGTP_binding_Kon_Carrier_RanGTP_binding=0.0;
	% Local Parameter:   id =  Koff_Carrier_RanGTP_binding, name = Koff_Carrier_RanGTP_binding
	reaction_Carrier_RanGTP_binding_Koff_Carrier_RanGTP_binding=0.0;

	reaction_Carrier_RanGTP_binding=(reaction_Carrier_RanGTP_binding_Kon_Carrier_RanGTP_binding*x(26)*x(1)+(-reaction_Carrier_RanGTP_binding_Koff_Carrier_RanGTP_binding*x(2)))*compartment_Cytosol;

% Reaction: id = NTF2_FRAN_Nuc_Exchange, name = NTF2_FRAN_Nuc_Exchange	% Local Parameter:   id =  RCC1Kcat, name = RCC1Kcat
	reaction_NTF2_FRAN_Nuc_Exchange_RCC1Kcat=8.5;
	% Local Parameter:   id =  RCC1Km, name = RCC1Km
	reaction_NTF2_FRAN_Nuc_Exchange_RCC1Km=1.1;

	reaction_NTF2_FRAN_Nuc_Exchange=0.25*reaction_NTF2_FRAN_Nuc_Exchange_RCC1Kcat*x(8)*x(22)*1/(reaction_NTF2_FRAN_Nuc_Exchange_RCC1Km+x(7)+x(22))*compartment_Nucleus;

% Reaction: id = RanBP1_binding, name = RanBP1 binding	% Local Parameter:   id =  Kon_RanBP1_binding, name = Kon_RanBP1_binding
	reaction_RanBP1_binding_Kon_RanBP1_binding=100.0;
	% Local Parameter:   id =  Koff_RanBP1_binding, name = Koff_RanBP1_binding
	reaction_RanBP1_binding_Koff_RanBP1_binding=0.5;

	reaction_RanBP1_binding=(reaction_RanBP1_binding_Kon_RanBP1_binding*x(4)*x(2)+(-reaction_RanBP1_binding_Koff_RanBP1_binding*x(5)))*compartment_Cytosol;

% Reaction: id = Carrier_RanGTP_flux, name = Carrier_RanGTP flux	% Local Parameter:   id =  I, name = I
	reaction_Carrier_RanGTP_flux_I=0.0;
	% Local Parameter:   id =  Carrier_RanGTP_Kperm, name = Carrier_RanGTP_Kperm
	reaction_Carrier_RanGTP_flux_Carrier_RanGTP_Kperm=0.173333;

	reaction_Carrier_RanGTP_flux=reaction_Carrier_RanGTP_flux_Carrier_RanGTP_Kperm*(x(2)+(-x(13)))*compartment_Nuc_membrane;

% Reaction: id = NTF2_flux, name = NTF2 flux	% Local Parameter:   id =  I, name = I
	reaction_NTF2_flux_I=0.0;
	% Local Parameter:   id =  NTF2_Kperm, name = NTF2_Kperm
	reaction_NTF2_flux_NTF2_Kperm=3.73333;

	reaction_NTF2_flux=reaction_NTF2_flux_NTF2_Kperm*(x(24)+(-x(6)))*compartment_Nuc_membrane;

% Reaction: id = NTF2_RanGDP_flux, name = NTF2_RanGDP flux	% Local Parameter:   id =  I, name = I
	reaction_NTF2_RanGDP_flux_I=0.0;
	% Local Parameter:   id =  NTF2_RanGDP_Kperm, name = NTF2_RanGDP_Kperm
	reaction_NTF2_RanGDP_flux_NTF2_RanGDP_Kperm=3.73333;

	reaction_NTF2_RanGDP_flux=reaction_NTF2_RanGDP_flux_NTF2_RanGDP_Kperm*(x(14)+(-x(10)))*compartment_Nuc_membrane;

% Reaction: id = Carrier_flux, name = Carrier flux	% Local Parameter:   id =  I, name = I
	reaction_Carrier_flux_I=0.0;
	% Local Parameter:   id =  Carrier_Kperm, name = Carrier_Kperm
	reaction_Carrier_flux_Carrier_Kperm=1.86667;

	reaction_Carrier_flux=reaction_Carrier_flux_Carrier_Kperm*(x(1)+(-x(11)))*compartment_Nuc_membrane;

% Reaction: id = FRanGDP_flux, name = FRanGDP flux	% Local Parameter:   id =  I, name = I
	reaction_FRanGDP_flux_I=0.0;
	% Local Parameter:   id =  RanGDP_Kperm, name = RanGDP_Kperm
	reaction_FRanGDP_flux_RanGDP_Kperm=0.0;

	reaction_FRanGDP_flux=reaction_FRanGDP_flux_RanGDP_Kperm*(x(17)+(-x(21)))*compartment_Nuc_membrane;

% Reaction: id = Carrier_FRanGTP_flux, name = Carrier_FRanGTP flux	% Local Parameter:   id =  I, name = I
	reaction_Carrier_FRanGTP_flux_I=0.0;
	% Local Parameter:   id =  Carrier_RanGTP_Kperm, name = Carrier_RanGTP_Kperm
	reaction_Carrier_FRanGTP_flux_Carrier_RanGTP_Kperm=0.173333;

	reaction_Carrier_FRanGTP_flux=reaction_Carrier_FRanGTP_flux_Carrier_RanGTP_Kperm*(x(16)+(-x(20)))*compartment_Nuc_membrane;

% Reaction: id = FNTF2_RanGDP_flux, name = FNTF2_RanGDP flux	% Local Parameter:   id =  I, name = I
	reaction_FNTF2_RanGDP_flux_I=0.0;
	% Local Parameter:   id =  NTF2_RanGDP_Kperm, name = NTF2_RanGDP_Kperm
	reaction_FNTF2_RanGDP_flux_NTF2_RanGDP_Kperm=3.73333;

	reaction_FNTF2_RanGDP_flux=reaction_FNTF2_RanGDP_flux_NTF2_RanGDP_Kperm*(x(18)+(-x(22)))*compartment_Nuc_membrane;

% Reaction: id = FRanGTP_flux, name = FRanGTP flux	% Local Parameter:   id =  I, name = I
	reaction_FRanGTP_flux_I=0.0;
	% Local Parameter:   id =  RanGTP_Kperm, name = RanGTP_Kperm
	reaction_FRanGTP_flux_RanGTP_Kperm=0.0;

	reaction_FRanGTP_flux=reaction_FRanGTP_flux_RanGTP_Kperm*(x(15)+(-x(23)))*compartment_Nuc_membrane;

% Reaction: id = RanGDP_flux, name = RanGDP flux	% Local Parameter:   id =  I, name = I
	reaction_RanGDP_flux_I=0.0;
	% Local Parameter:   id =  RanGDP_Kperm, name = RanGDP_Kperm
	reaction_RanGDP_flux_RanGDP_Kperm=0.0;

	reaction_RanGDP_flux=reaction_RanGDP_flux_RanGDP_Kperm*(x(12)+(-x(7)))*compartment_Nuc_membrane;

% Reaction: id = RanGTP_flux, name = RanGTP flux	% Local Parameter:   id =  I, name = I
	reaction_RanGTP_flux_I=0.0;
	% Local Parameter:   id =  RanGTP_Kperm, name = RanGTP_Kperm
	reaction_RanGTP_flux_RanGTP_Kperm=0.0;

	reaction_RanGTP_flux=reaction_RanGTP_flux_RanGTP_Kperm*(x(26)+(-x(9)))*compartment_Nuc_membrane;

	xdot=zeros(26,1);
	
% Species:   id = Carrier_Cytosol, name = Carrier_Cytosol, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytosol))*((-1.0 * reaction_Carrier_FRanGTP_binding) + ( 1.0 * reaction_dephosphorylationF) + ( 1.0 * reaction_dephosphorylation) + (-1.0 * reaction_Carrier_RanGTP_binding) + (-1.0 * reaction_Carrier_flux));
	
% Species:   id = Carrier_RanGTP_Cytosol, name = Carrier_RanGTP_Cytosol, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*(( 1.0 * reaction_Carrier_RanGTP_binding) + (-1.0 * reaction_RanBP1_binding) + (-1.0 * reaction_Carrier_RanGTP_flux));
	
% Species:   id = RanGAP_Cytosol, name = RanGAP_Cytosol
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = RanBP1_Cytosol, name = RanBP1_Cytosol, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytosol))*(( 1.0 * reaction_dephosphorylationF) + (-1.0 * reaction_RanBP1_bindingF) + ( 1.0 * reaction_dephosphorylation) + (-1.0 * reaction_RanBP1_binding));
	
% Species:   id = RanBP1_Carrier_RanGTP_Cytosol, name = RanBP1_Carrier_RanGTP_Cytosol, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytosol))*((-1.0 * reaction_dephosphorylation) + ( 1.0 * reaction_RanBP1_binding));
	
% Species:   id = NTF2_Nucleus, name = NTF2_Nucleus, affected by kineticLaw
	xdot(6) = (1/(compartment_Nucleus))*(( 1.0 * reaction_NTF2_FRanGDP_unbinding) + ( 4.0 * reaction_NTF2_RAN_Nuc_Exchange) + ( 1.0 * reaction_NTF2_RanGDP_unbinding) + ( 4.0 * reaction_NTF2_FRAN_Nuc_Exchange) + ( 1.0 * reaction_NTF2_flux));
	
% Species:   id = RanGDP_Nucleus, name = RanGDP_Nucleus, affected by kineticLaw
	xdot(7) = (1/(compartment_Nucleus))*((-1.0 * reaction_RanGDP_to_RanGTP) + ( 1.0 * reaction_NTF2_RAN_Nuc_Exchange) + ( 1.0 * reaction_NTF2_RanGDP_unbinding) + ( 1.0 * reaction_RanGDP_flux));
	
% Species:   id = RCC1_Nucleus, name = RCC1_Nucleus
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = RanGTP_Nucleus, name = RanGTP_Nucleus, affected by kineticLaw
	xdot(9) = (1/(compartment_Nucleus))*((-1.0 * reaction_RanGTP_Carrier_binding) + ( 1.0 * reaction_RanGDP_to_RanGTP) + ( 3.0 * reaction_NTF2_RAN_Nuc_Exchange) + ( 1.0 * reaction_RanGTP_flux));
	
% Species:   id = NTF2_RanGDP_Nucleus, name = NTF2_RanGDP_Nucleus, affected by kineticLaw
	xdot(10) = (1/(compartment_Nucleus))*((-4.0 * reaction_NTF2_RAN_Nuc_Exchange) + (-1.0 * reaction_NTF2_RanGDP_unbinding) + ( 1.0 * reaction_NTF2_RanGDP_flux));
	
% Species:   id = Carrier_Nucleus, name = Carrier_Nucleus, affected by kineticLaw
	xdot(11) = (1/(compartment_Nucleus))*((-1.0 * reaction_FRanGTP_Carrier_binding) + (-1.0 * reaction_RanGTP_Carrier_binding) + ( 1.0 * reaction_Carrier_flux));
	
% Species:   id = RanGDP_Cytosol, name = RanGDP_Cytosol, affected by kineticLaw
	xdot(12) = (1/(compartment_Cytosol))*(( 1.0 * reaction_RanGTP_dephosphorylation) + (-1.0 * reaction_NTF2_RanGDP_Unbinding) + ( 1.0 * reaction_dephosphorylation) + (-1.0 * reaction_RanGDP_flux));
	
% Species:   id = Carrier_RanGTP_Nucleus, name = Carrier_RanGTP_Nucleus, affected by kineticLaw
	xdot(13) = (1/(compartment_Nucleus))*(( 1.0 * reaction_RanGTP_Carrier_binding) + ( 1.0 * reaction_Carrier_RanGTP_flux));
	
% Species:   id = NTF2_RanGDP_Cytosol, name = NTF2_RanGDP_Cytosol, affected by kineticLaw
	xdot(14) = (1/(compartment_Cytosol))*(( 1.0 * reaction_NTF2_RanGDP_Unbinding) + (-1.0 * reaction_NTF2_RanGDP_flux));
	
% Species:   id = FRanGTP_Cytosol, name = FRanGTP_Cytosol, affected by kineticLaw
	xdot(15) = (1/(compartment_Cytosol))*((-1.0 * reaction_Carrier_FRanGTP_binding) + (-1.0 * reaction_FRanGTP_dephosphorylation) + (-1.0 * reaction_FRanGTP_flux));
	
% Species:   id = FCarrier_RanGTP_Cytosol, name = FCarrier_RanGTP_Cytosol, affected by kineticLaw
	xdot(16) = (1/(compartment_Cytosol))*(( 1.0 * reaction_Carrier_FRanGTP_binding) + (-1.0 * reaction_RanBP1_bindingF) + (-1.0 * reaction_Carrier_FRanGTP_flux));
	
% Species:   id = FRanGDP_Cytosol, name = FRanGDP_Cytosol, affected by kineticLaw
	xdot(17) = (1/(compartment_Cytosol))*(( 1.0 * reaction_FRanGTP_dephosphorylation) + ( 1.0 * reaction_dephosphorylationF) + (-1.0 * reaction_NTF2_FRanGDP_Unbinding) + ( 1.0 * reaction_Microinj) + (-1.0 * reaction_FRanGDP_flux));
	
% Species:   id = FNTF2_RanGDP_Cytosol, name = FNTF2_RanGDP_Cytosol, affected by kineticLaw
	xdot(18) = (1/(compartment_Cytosol))*(( 1.0 * reaction_NTF2_FRanGDP_Unbinding) + (-1.0 * reaction_FNTF2_RanGDP_flux));
	
% Species:   id = FRanBP1_Carrier_RanGTP_Cytosol, name = FRanBP1_Carrier_RanGTP_Cytosol, affected by kineticLaw
	xdot(19) = (1/(compartment_Cytosol))*((-1.0 * reaction_dephosphorylationF) + ( 1.0 * reaction_RanBP1_bindingF));
	
% Species:   id = FCarrier_RanGTP_Nucleus, name = FCarrier_RanGTP_Nucleus, affected by kineticLaw
	xdot(20) = (1/(compartment_Nucleus))*(( 1.0 * reaction_FRanGTP_Carrier_binding) + ( 1.0 * reaction_Carrier_FRanGTP_flux));
	
% Species:   id = FRanGDP_Nucleus, name = FRanGDP_Nucleus, affected by kineticLaw
	xdot(21) = (1/(compartment_Nucleus))*(( 1.0 * reaction_NTF2_FRanGDP_unbinding) + (-1.0 * reaction_FRanGDP_to_FRanGTP) + ( 1.0 * reaction_NTF2_FRAN_Nuc_Exchange) + ( 1.0 * reaction_FRanGDP_flux));
	
% Species:   id = FNTF2_RanGDP_Nucleus, name = FNTF2_RanGDP_Nucleus, affected by kineticLaw
	xdot(22) = (1/(compartment_Nucleus))*((-1.0 * reaction_NTF2_FRanGDP_unbinding) + (-4.0 * reaction_NTF2_FRAN_Nuc_Exchange) + ( 1.0 * reaction_FNTF2_RanGDP_flux));
	
% Species:   id = FRanGTP_Nucleus, name = FRanGTP_Nucleus, affected by kineticLaw
	xdot(23) = (1/(compartment_Nucleus))*((-1.0 * reaction_FRanGTP_Carrier_binding) + ( 1.0 * reaction_FRanGDP_to_FRanGTP) + ( 3.0 * reaction_NTF2_FRAN_Nuc_Exchange) + ( 1.0 * reaction_FRanGTP_flux));
	
% Species:   id = NTF2_Cytosol, name = NTF2_Cytosol, affected by kineticLaw
	xdot(24) = (1/(compartment_Cytosol))*((-1.0 * reaction_NTF2_FRanGDP_Unbinding) + (-1.0 * reaction_NTF2_RanGDP_Unbinding) + (-1.0 * reaction_NTF2_flux));
	
% Species:   id = Pipet_Cytosol, name = Pipet_Cytosol
% Warning species is not changed by either rules or reactions
	xdot(25) = ;
	
% Species:   id = RanGTP_Cytosol, name = RanGTP_Cytosol, affected by kineticLaw
	xdot(26) = (1/(compartment_Cytosol))*((-1.0 * reaction_RanGTP_dephosphorylation) + (-1.0 * reaction_Carrier_RanGTP_binding) + (-1.0 * reaction_RanGTP_flux));
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


