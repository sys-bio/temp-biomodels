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
% Model name = vanEunen2013 - Network dynamics of fatty acid β-oxidation (time-course model)
%
% is http://identifiers.org/biomodels.db/MODEL1312040001
% is http://identifiers.org/biomodels.db/BIOMD0000000506
% isDescribedBy http://identifiers.org/pubmed/23966849
%


function main()
%Initial conditions vector
	x0=zeros(47,1);
	x0(1) = 0.171;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.023;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.11;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.019;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.052;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.017;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.008;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 30.0;
	x0(44) = 0.46;
	x0(45) = 16.0;
	x0(46) = 4970.0;
	x0(47) = 26.8;


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

% Compartment: id = VCYT, name = VCYT, constant
	compartment_VCYT=0.01;
% Compartment: id = VMAT, name = VMAT, constant
	compartment_VMAT=1.8E-6;
% Parameter:   id =  Vfcact, name = Vfcact
	global_par_Vfcact=0.42;
% Parameter:   id =  Vrcact, name = Vrcact
	global_par_Vrcact=0.42;
% Parameter:   id =  KmcactCarMAT, name = KmcactCarMAT
	global_par_KmcactCarMAT=130.0;
% Parameter:   id =  KmcactCarCYT, name = KmcactCarCYT
	global_par_KmcactCarCYT=130.0;
% Parameter:   id =  KicactCarCYT, name = KicactCarCYT
	global_par_KicactCarCYT=200.0;
% Parameter:   id =  Keqcact, name = Keqcact
	global_par_Keqcact=1.0;
% Parameter:   id =  Vcpt2, name = Vcpt2
	global_par_Vcpt2=0.391;
% Parameter:   id =  Kmcpt2C16AcylCarMAT, name = Kmcpt2C16AcylCarMAT
	global_par_Kmcpt2C16AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C14AcylCarMAT, name = Kmcpt2C14AcylCarMAT
	global_par_Kmcpt2C14AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C12AcylCarMAT, name = Kmcpt2C12AcylCarMAT
	global_par_Kmcpt2C12AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C10AcylCarMAT, name = Kmcpt2C10AcylCarMAT
	global_par_Kmcpt2C10AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C8AcylCarMAT, name = Kmcpt2C8AcylCarMAT
	global_par_Kmcpt2C8AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C6AcylCarMAT, name = Kmcpt2C6AcylCarMAT
	global_par_Kmcpt2C6AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C4AcylCarMAT, name = Kmcpt2C4AcylCarMAT
	global_par_Kmcpt2C4AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2CoAMAT, name = Kmcpt2CoAMAT
	global_par_Kmcpt2CoAMAT=30.0;
% Parameter:   id =  Kmcpt2C16AcylCoAMAT, name = Kmcpt2C16AcylCoAMAT
	global_par_Kmcpt2C16AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C14AcylCoAMAT, name = Kmcpt2C14AcylCoAMAT
	global_par_Kmcpt2C14AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C12AcylCoAMAT, name = Kmcpt2C12AcylCoAMAT
	global_par_Kmcpt2C12AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C10AcylCoAMAT, name = Kmcpt2C10AcylCoAMAT
	global_par_Kmcpt2C10AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C8AcylCoAMAT, name = Kmcpt2C8AcylCoAMAT
	global_par_Kmcpt2C8AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C6AcylCoAMAT, name = Kmcpt2C6AcylCoAMAT
	global_par_Kmcpt2C6AcylCoAMAT=1000.0;
% Parameter:   id =  Kmcpt2C4AcylCoAMAT, name = Kmcpt2C4AcylCoAMAT
	global_par_Kmcpt2C4AcylCoAMAT=1000000.0;
% Parameter:   id =  Kmcpt2CarMAT, name = Kmcpt2CarMAT
	global_par_Kmcpt2CarMAT=350.0;
% Parameter:   id =  Keqcpt2, name = Keqcpt2
	global_par_Keqcpt2=2.22;
% Parameter:   id =  Vvlcad, name = Vvlcad
	global_par_Vvlcad=0.008;
% Parameter:   id =  KmvlcadC16AcylCoAMAT, name = KmvlcadC16AcylCoAMAT
	global_par_KmvlcadC16AcylCoAMAT=6.5;
% Parameter:   id =  KmvlcadC14AcylCoAMAT, name = KmvlcadC14AcylCoAMAT
	global_par_KmvlcadC14AcylCoAMAT=4.0;
% Parameter:   id =  KmvlcadC12AcylCoAMAT, name = KmvlcadC12AcylCoAMAT
	global_par_KmvlcadC12AcylCoAMAT=2.7;
% Parameter:   id =  KmvlcadFAD, name = KmvlcadFAD
	global_par_KmvlcadFAD=0.12;
% Parameter:   id =  KmvlcadC16EnoylCoAMAT, name = KmvlcadC16EnoylCoAMAT
	global_par_KmvlcadC16EnoylCoAMAT=1.08;
% Parameter:   id =  KmvlcadC14EnoylCoAMAT, name = KmvlcadC14EnoylCoAMAT
	global_par_KmvlcadC14EnoylCoAMAT=1.08;
% Parameter:   id =  KmvlcadC12EnoylCoAMAT, name = KmvlcadC12EnoylCoAMAT
	global_par_KmvlcadC12EnoylCoAMAT=1.08;
% Parameter:   id =  KmvlcadFADH, name = KmvlcadFADH
	global_par_KmvlcadFADH=24.2;
% Parameter:   id =  Keqvlcad, name = Keqvlcad
	global_par_Keqvlcad=6.0;
% Parameter:   id =  Vlcad, name = Vlcad
	global_par_Vlcad=0.01;
% Parameter:   id =  KmlcadC16AcylCoAMAT, name = KmlcadC16AcylCoAMAT
	global_par_KmlcadC16AcylCoAMAT=2.5;
% Parameter:   id =  KmlcadC14AcylCoAMAT, name = KmlcadC14AcylCoAMAT
	global_par_KmlcadC14AcylCoAMAT=7.4;
% Parameter:   id =  KmlcadC12AcylCoAMAT, name = KmlcadC12AcylCoAMAT
	global_par_KmlcadC12AcylCoAMAT=9.0;
% Parameter:   id =  KmlcadC10AcylCoAMAT, name = KmlcadC10AcylCoAMAT
	global_par_KmlcadC10AcylCoAMAT=24.3;
% Parameter:   id =  KmlcadC8AcylCoAMAT, name = KmlcadC8AcylCoAMAT
	global_par_KmlcadC8AcylCoAMAT=123.0;
% Parameter:   id =  KmlcadFAD, name = KmlcadFAD
	global_par_KmlcadFAD=0.12;
% Parameter:   id =  KmlcadC16EnoylCoAMAT, name = KmlcadC16EnoylCoAMAT
	global_par_KmlcadC16EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC14EnoylCoAMAT, name = KmlcadC14EnoylCoAMAT
	global_par_KmlcadC14EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC12EnoylCoAMAT, name = KmlcadC12EnoylCoAMAT
	global_par_KmlcadC12EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC10EnoylCoAMAT, name = KmlcadC10EnoylCoAMAT
	global_par_KmlcadC10EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC8EnoylCoAMAT, name = KmlcadC8EnoylCoAMAT
	global_par_KmlcadC8EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadFADH, name = KmlcadFADH
	global_par_KmlcadFADH=24.2;
% Parameter:   id =  Keqlcad, name = Keqlcad
	global_par_Keqlcad=6.0;
% Parameter:   id =  Vmcad, name = Vmcad
	global_par_Vmcad=0.081;
% Parameter:   id =  KmmcadC12AcylCoAMAT, name = KmmcadC12AcylCoAMAT
	global_par_KmmcadC12AcylCoAMAT=5.7;
% Parameter:   id =  KmmcadC10AcylCoAMAT, name = KmmcadC10AcylCoAMAT
	global_par_KmmcadC10AcylCoAMAT=5.4;
% Parameter:   id =  KmmcadC8AcylCoAMAT, name = KmmcadC8AcylCoAMAT
	global_par_KmmcadC8AcylCoAMAT=4.0;
% Parameter:   id =  KmmcadC6AcylCoAMAT, name = KmmcadC6AcylCoAMAT
	global_par_KmmcadC6AcylCoAMAT=9.4;
% Parameter:   id =  KmmcadC4AcylCoAMAT, name = KmmcadC4AcylCoAMAT
	global_par_KmmcadC4AcylCoAMAT=135.0;
% Parameter:   id =  KmmcadFAD, name = KmmcadFAD
	global_par_KmmcadFAD=0.12;
% Parameter:   id =  KmmcadC12EnoylCoAMAT, name = KmmcadC12EnoylCoAMAT
	global_par_KmmcadC12EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC10EnoylCoAMAT, name = KmmcadC10EnoylCoAMAT
	global_par_KmmcadC10EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC8EnoylCoAMAT, name = KmmcadC8EnoylCoAMAT
	global_par_KmmcadC8EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC6EnoylCoAMAT, name = KmmcadC6EnoylCoAMAT
	global_par_KmmcadC6EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC4EnoylCoAMAT, name = KmmcadC4EnoylCoAMAT
	global_par_KmmcadC4EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadFADH, name = KmmcadFADH
	global_par_KmmcadFADH=24.2;
% Parameter:   id =  Keqmcad, name = Keqmcad
	global_par_Keqmcad=6.0;
% Parameter:   id =  Vscad, name = Vscad
	global_par_Vscad=0.081;
% Parameter:   id =  KmscadC6AcylCoAMAT, name = KmscadC6AcylCoAMAT
	global_par_KmscadC6AcylCoAMAT=285.0;
% Parameter:   id =  KmscadC4AcylCoAMAT, name = KmscadC4AcylCoAMAT
	global_par_KmscadC4AcylCoAMAT=10.7;
% Parameter:   id =  KmscadFAD, name = KmscadFAD
	global_par_KmscadFAD=0.12;
% Parameter:   id =  KmscadC6EnoylCoAMAT, name = KmscadC6EnoylCoAMAT
	global_par_KmscadC6EnoylCoAMAT=1.08;
% Parameter:   id =  KmscadC4EnoylCoAMAT, name = KmscadC4EnoylCoAMAT
	global_par_KmscadC4EnoylCoAMAT=1.08;
% Parameter:   id =  KmscadFADH, name = KmscadFADH
	global_par_KmscadFADH=24.2;
% Parameter:   id =  Keqscad, name = Keqscad
	global_par_Keqscad=6.0;
% Parameter:   id =  Vcrot, name = Vcrot
	global_par_Vcrot=3.6;
% Parameter:   id =  KmcrotC16EnoylCoAMAT, name = KmcrotC16EnoylCoAMAT
	global_par_KmcrotC16EnoylCoAMAT=150.0;
% Parameter:   id =  KmcrotC14EnoylCoAMAT, name = KmcrotC14EnoylCoAMAT
	global_par_KmcrotC14EnoylCoAMAT=100.0;
% Parameter:   id =  KmcrotC12EnoylCoAMAT, name = KmcrotC12EnoylCoAMAT
	global_par_KmcrotC12EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC10EnoylCoAMAT, name = KmcrotC10EnoylCoAMAT
	global_par_KmcrotC10EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC8EnoylCoAMAT, name = KmcrotC8EnoylCoAMAT
	global_par_KmcrotC8EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC6EnoylCoAMAT, name = KmcrotC6EnoylCoAMAT
	global_par_KmcrotC6EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC4EnoylCoAMAT, name = KmcrotC4EnoylCoAMAT
	global_par_KmcrotC4EnoylCoAMAT=40.0;
% Parameter:   id =  KmcrotC16HydroxyacylCoAMAT, name = KmcrotC16HydroxyacylCoAMAT
	global_par_KmcrotC16HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC14HydroxyacylCoAMAT, name = KmcrotC14HydroxyacylCoAMAT
	global_par_KmcrotC14HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC12HydroxyacylCoAMAT, name = KmcrotC12HydroxyacylCoAMAT
	global_par_KmcrotC12HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC10HydroxyacylCoAMAT, name = KmcrotC10HydroxyacylCoAMAT
	global_par_KmcrotC10HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC8HydroxyacylCoAMAT, name = KmcrotC8HydroxyacylCoAMAT
	global_par_KmcrotC8HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC6HydroxyacylCoAMAT, name = KmcrotC6HydroxyacylCoAMAT
	global_par_KmcrotC6HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC4HydroxyacylCoAMAT, name = KmcrotC4HydroxyacylCoAMAT
	global_par_KmcrotC4HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KicrotC4AcetoacylCoA, name = KicrotC4AcetoacylCoA
	global_par_KicrotC4AcetoacylCoA=1.6;
% Parameter:   id =  Keqcrot, name = Keqcrot
	global_par_Keqcrot=3.13;
% Parameter:   id =  Vmschad, name = Vmschad
	global_par_Vmschad=1.0;
% Parameter:   id =  KmmschadC16HydroxyacylCoAMAT, name = KmmschadC16HydroxyacylCoAMAT
	global_par_KmmschadC16HydroxyacylCoAMAT=1.5;
% Parameter:   id =  KmmschadC14HydroxyacylCoAMAT, name = KmmschadC14HydroxyacylCoAMAT
	global_par_KmmschadC14HydroxyacylCoAMAT=1.8;
% Parameter:   id =  KmmschadC12HydroxyacylCoAMAT, name = KmmschadC12HydroxyacylCoAMAT
	global_par_KmmschadC12HydroxyacylCoAMAT=3.7;
% Parameter:   id =  KmmschadC10HydroxyacylCoAMAT, name = KmmschadC10HydroxyacylCoAMAT
	global_par_KmmschadC10HydroxyacylCoAMAT=8.8;
% Parameter:   id =  KmmschadC8HydroxyacylCoAMAT, name = KmmschadC8HydroxyacylCoAMAT
	global_par_KmmschadC8HydroxyacylCoAMAT=16.3;
% Parameter:   id =  KmmschadC6HydroxyacylCoAMAT, name = KmmschadC6HydroxyacylCoAMAT
	global_par_KmmschadC6HydroxyacylCoAMAT=28.6;
% Parameter:   id =  KmmschadC4HydroxyacylCoAMAT, name = KmmschadC4HydroxyacylCoAMAT
	global_par_KmmschadC4HydroxyacylCoAMAT=69.9;
% Parameter:   id =  KmmschadNADMAT, name = KmmschadNADMAT
	global_par_KmmschadNADMAT=58.5;
% Parameter:   id =  KmmschadC16KetoacylCoAMAT, name = KmmschadC16KetoacylCoAMAT
	global_par_KmmschadC16KetoacylCoAMAT=1.4;
% Parameter:   id =  KmmschadC14KetoacylCoAMAT, name = KmmschadC14KetoacylCoAMAT
	global_par_KmmschadC14KetoacylCoAMAT=1.4;
% Parameter:   id =  KmmschadC12KetoacylCoAMAT, name = KmmschadC12KetoacylCoAMAT
	global_par_KmmschadC12KetoacylCoAMAT=1.6;
% Parameter:   id =  KmmschadC10KetoacylCoAMAT, name = KmmschadC10KetoacylCoAMAT
	global_par_KmmschadC10KetoacylCoAMAT=2.3;
% Parameter:   id =  KmmschadC8KetoacylCoAMAT, name = KmmschadC8KetoacylCoAMAT
	global_par_KmmschadC8KetoacylCoAMAT=4.1;
% Parameter:   id =  KmmschadC6KetoacylCoAMAT, name = KmmschadC6KetoacylCoAMAT
	global_par_KmmschadC6KetoacylCoAMAT=5.8;
% Parameter:   id =  KmmschadC4AcetoacylCoAMAT, name = KmmschadC4AcetoacylCoAMAT
	global_par_KmmschadC4AcetoacylCoAMAT=16.9;
% Parameter:   id =  KmmschadNADHMAT, name = KmmschadNADHMAT
	global_par_KmmschadNADHMAT=5.4;
% Parameter:   id =  Keqmschad, name = Keqmschad
	global_par_Keqmschad=2.17E-4;
% Parameter:   id =  Vmckat, name = Vmckat
	global_par_Vmckat=0.377;
% Parameter:   id =  KmmckatC16KetoacylCoAMAT, name = KmmckatC16KetoacylCoAMAT
	global_par_KmmckatC16KetoacylCoAMAT=1.1;
% Parameter:   id =  KmmckatC14KetoacylCoAMAT, name = KmmckatC14KetoacylCoAMAT
	global_par_KmmckatC14KetoacylCoAMAT=1.2;
% Parameter:   id =  KmmckatC12KetoacylCoAMAT, name = KmmckatC12KetoacylCoAMAT
	global_par_KmmckatC12KetoacylCoAMAT=1.3;
% Parameter:   id =  KmmckatC10KetoacylCoAMAT, name = KmmckatC10KetoacylCoAMAT
	global_par_KmmckatC10KetoacylCoAMAT=2.1;
% Parameter:   id =  KmmckatC8KetoacylCoAMAT, name = KmmckatC8KetoacylCoAMAT
	global_par_KmmckatC8KetoacylCoAMAT=3.2;
% Parameter:   id =  KmmckatC6KetoacylCoAMAT, name = KmmckatC6KetoacylCoAMAT
	global_par_KmmckatC6KetoacylCoAMAT=6.7;
% Parameter:   id =  KmmckatC4AcetoacylCoAMAT, name = KmmckatC4AcetoacylCoAMAT
	global_par_KmmckatC4AcetoacylCoAMAT=12.4;
% Parameter:   id =  KmmckatCoAMAT, name = KmmckatCoAMAT
	global_par_KmmckatCoAMAT=26.6;
% Parameter:   id =  KmmckatC14AcylCoAMAT, name = KmmckatC14AcylCoAMAT
	global_par_KmmckatC14AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC16AcylCoAMAT, name = KmmckatC16AcylCoAMAT
	global_par_KmmckatC16AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC12AcylCoAMAT, name = KmmckatC12AcylCoAMAT
	global_par_KmmckatC12AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC10AcylCoAMAT, name = KmmckatC10AcylCoAMAT
	global_par_KmmckatC10AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC8AcylCoAMAT, name = KmmckatC8AcylCoAMAT
	global_par_KmmckatC8AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC6AcylCoAMAT, name = KmmckatC6AcylCoAMAT
	global_par_KmmckatC6AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC4AcylCoAMAT, name = KmmckatC4AcylCoAMAT
	global_par_KmmckatC4AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatAcetylCoAMAT, name = KmmckatAcetylCoAMAT
	global_par_KmmckatAcetylCoAMAT=30.0;
% Parameter:   id =  Keqmckat, name = Keqmckat
	global_par_Keqmckat=1051.0;
% Parameter:   id =  Vmtp, name = Vmtp
	global_par_Vmtp=2.84;
% Parameter:   id =  KmmtpC16EnoylCoAMAT, name = KmmtpC16EnoylCoAMAT
	global_par_KmmtpC16EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC14EnoylCoAMAT, name = KmmtpC14EnoylCoAMAT
	global_par_KmmtpC14EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC12EnoylCoAMAT, name = KmmtpC12EnoylCoAMAT
	global_par_KmmtpC12EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC10EnoylCoAMAT, name = KmmtpC10EnoylCoAMAT
	global_par_KmmtpC10EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC8EnoylCoAMAT, name = KmmtpC8EnoylCoAMAT
	global_par_KmmtpC8EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpNADMAT, name = KmmtpNADMAT
	global_par_KmmtpNADMAT=60.0;
% Parameter:   id =  KmmtpCoAMAT, name = KmmtpCoAMAT
	global_par_KmmtpCoAMAT=30.0;
% Parameter:   id =  KmmtpC14AcylCoAMAT, name = KmmtpC14AcylCoAMAT
	global_par_KmmtpC14AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC16AcylCoAMAT, name = KmmtpC16AcylCoAMAT
	global_par_KmmtpC16AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC12AcylCoAMAT, name = KmmtpC12AcylCoAMAT
	global_par_KmmtpC12AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC10AcylCoAMAT, name = KmmtpC10AcylCoAMAT
	global_par_KmmtpC10AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC8AcylCoAMAT, name = KmmtpC8AcylCoAMAT
	global_par_KmmtpC8AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC6AcylCoAMAT, name = KmmtpC6AcylCoAMAT
	global_par_KmmtpC6AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpNADHMAT, name = KmmtpNADHMAT
	global_par_KmmtpNADHMAT=50.0;
% Parameter:   id =  KmmtpAcetylCoAMAT, name = KmmtpAcetylCoAMAT
	global_par_KmmtpAcetylCoAMAT=30.0;
% Parameter:   id =  Keqmtp, name = Keqmtp
	global_par_Keqmtp=0.71;
% assignmentRule: variable = CoAMAT
	x(46)=const_species_CoAMATt-(x(3)+x(4)+x(5)+x(6)+x(9)+x(10)+x(11)+x(12)+x(15)+x(16)+x(17)+x(18)+x(21)+x(22)+x(23)+x(24)+x(27)+x(28)+x(29)+x(30)+x(33)+x(34)+x(35)+x(36)+x(39)+x(40)+x(41)+x(42)+x(43));
% assignmentRule: variable = C16AcylCoACYT
	x(47)=26.8*2.71828182845905^((-0.18)*t);

% Reaction: id = vcpt1C16	% Local Parameter:   id =  Keqcpt1, name = Keqcpt1
	reaction_vcpt1C16_Keqcpt1=0.45;
	% Local Parameter:   id =  Kicpt1MalCoACYT, name = Kicpt1MalCoACYT
	reaction_vcpt1C16_Kicpt1MalCoACYT=9.1;
	% Local Parameter:   id =  Kmcpt1C16AcylCarCYT, name = Kmcpt1C16AcylCarCYT
	reaction_vcpt1C16_Kmcpt1C16AcylCarCYT=136.0;
	% Local Parameter:   id =  Kmcpt1C16AcylCoACYT, name = Kmcpt1C16AcylCoACYT
	reaction_vcpt1C16_Kmcpt1C16AcylCoACYT=13.8;
	% Local Parameter:   id =  Kmcpt1CarCYT, name = Kmcpt1CarCYT
	reaction_vcpt1C16_Kmcpt1CarCYT=125.0;
	% Local Parameter:   id =  Kmcpt1CoACYT, name = Kmcpt1CoACYT
	reaction_vcpt1C16_Kmcpt1CoACYT=40.7;
	% Local Parameter:   id =  Vcpt1, name = Vcpt1
	reaction_vcpt1C16_Vcpt1=0.012;
	% Local Parameter:   id =  ncpt1, name = ncpt1
	reaction_vcpt1C16_ncpt1=2.4799;
	% Local Parameter:   id =  sfcpt1C16, name = sfcpt1C16
	reaction_vcpt1C16_sfcpt1C16=1.0;

	reaction_vcpt1C16=CPT1(reaction_vcpt1C16_sfcpt1C16, reaction_vcpt1C16_Vcpt1, reaction_vcpt1C16_Kmcpt1C16AcylCoACYT, reaction_vcpt1C16_Kmcpt1CarCYT, reaction_vcpt1C16_Kmcpt1C16AcylCarCYT, reaction_vcpt1C16_Kmcpt1CoACYT, reaction_vcpt1C16_Kicpt1MalCoACYT, reaction_vcpt1C16_Keqcpt1, x(47), const_species_CarCYT, x(1), const_species_CoACYT, const_species_MalCoACYT, reaction_vcpt1C16_ncpt1);

% Reaction: id = vcactC16	% Local Parameter:   id =  KicactC16AcylCarCYT, name = KicactC16AcylCarCYT
	reaction_vcactC16_KicactC16AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC16AcylCarCYT, name = KmcactC16AcylCarCYT
	reaction_vcactC16_KmcactC16AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC16AcylCarMAT, name = KmcactC16AcylCarMAT
	reaction_vcactC16_KmcactC16AcylCarMAT=15.0;

	reaction_vcactC16=CACT(global_par_Vfcact, global_par_Vrcact, reaction_vcactC16_KmcactC16AcylCarCYT, global_par_KmcactCarMAT, reaction_vcactC16_KmcactC16AcylCarMAT, global_par_KmcactCarCYT, reaction_vcactC16_KicactC16AcylCarCYT, global_par_KicactCarCYT, global_par_Keqcact, x(1), const_species_CarMAT, x(2), const_species_CarCYT);

% Reaction: id = vcactC14	% Local Parameter:   id =  KicactC14AcylCarCYT, name = KicactC14AcylCarCYT
	reaction_vcactC14_KicactC14AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC14AcylCarCYT, name = KmcactC14AcylCarCYT
	reaction_vcactC14_KmcactC14AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC14AcylCarMAT, name = KmcactC14AcylCarMAT
	reaction_vcactC14_KmcactC14AcylCarMAT=15.0;

	reaction_vcactC14=CACT(global_par_Vfcact, global_par_Vrcact, reaction_vcactC14_KmcactC14AcylCarCYT, global_par_KmcactCarMAT, reaction_vcactC14_KmcactC14AcylCarMAT, global_par_KmcactCarCYT, reaction_vcactC14_KicactC14AcylCarCYT, global_par_KicactCarCYT, global_par_Keqcact, x(7), const_species_CarMAT, x(8), const_species_CarCYT);

% Reaction: id = vcactC12	% Local Parameter:   id =  KicactC12AcylCarCYT, name = KicactC12AcylCarCYT
	reaction_vcactC12_KicactC12AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC12AcylCarCYT, name = KmcactC12AcylCarCYT
	reaction_vcactC12_KmcactC12AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC12AcylCarMAT, name = KmcactC12AcylCarMAT
	reaction_vcactC12_KmcactC12AcylCarMAT=15.0;

	reaction_vcactC12=CACT(global_par_Vfcact, global_par_Vrcact, reaction_vcactC12_KmcactC12AcylCarCYT, global_par_KmcactCarMAT, reaction_vcactC12_KmcactC12AcylCarMAT, global_par_KmcactCarCYT, reaction_vcactC12_KicactC12AcylCarCYT, global_par_KicactCarCYT, global_par_Keqcact, x(13), const_species_CarMAT, x(14), const_species_CarCYT);

% Reaction: id = vcactC10	% Local Parameter:   id =  KicactC10AcylCarCYT, name = KicactC10AcylCarCYT
	reaction_vcactC10_KicactC10AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC10AcylCarCYT, name = KmcactC10AcylCarCYT
	reaction_vcactC10_KmcactC10AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC10AcylCarMAT, name = KmcactC10AcylCarMAT
	reaction_vcactC10_KmcactC10AcylCarMAT=15.0;

	reaction_vcactC10=CACT(global_par_Vfcact, global_par_Vrcact, reaction_vcactC10_KmcactC10AcylCarCYT, global_par_KmcactCarMAT, reaction_vcactC10_KmcactC10AcylCarMAT, global_par_KmcactCarCYT, reaction_vcactC10_KicactC10AcylCarCYT, global_par_KicactCarCYT, global_par_Keqcact, x(19), const_species_CarMAT, x(20), const_species_CarCYT);

% Reaction: id = vcactC8	% Local Parameter:   id =  KicactC8AcylCarCYT, name = KicactC8AcylCarCYT
	reaction_vcactC8_KicactC8AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC8AcylCarCYT, name = KmcactC8AcylCarCYT
	reaction_vcactC8_KmcactC8AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC8AcylCarMAT, name = KmcactC8AcylCarMAT
	reaction_vcactC8_KmcactC8AcylCarMAT=15.0;

	reaction_vcactC8=CACT(global_par_Vfcact, global_par_Vrcact, reaction_vcactC8_KmcactC8AcylCarCYT, global_par_KmcactCarMAT, reaction_vcactC8_KmcactC8AcylCarMAT, global_par_KmcactCarCYT, reaction_vcactC8_KicactC8AcylCarCYT, global_par_KicactCarCYT, global_par_Keqcact, x(25), const_species_CarMAT, x(26), const_species_CarCYT);

% Reaction: id = vcactC6	% Local Parameter:   id =  KicactC6AcylCarCYT, name = KicactC6AcylCarCYT
	reaction_vcactC6_KicactC6AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC6AcylCarCYT, name = KmcactC6AcylCarCYT
	reaction_vcactC6_KmcactC6AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC6AcylCarMAT, name = KmcactC6AcylCarMAT
	reaction_vcactC6_KmcactC6AcylCarMAT=15.0;

	reaction_vcactC6=CACT(global_par_Vfcact, global_par_Vrcact, reaction_vcactC6_KmcactC6AcylCarCYT, global_par_KmcactCarMAT, reaction_vcactC6_KmcactC6AcylCarMAT, global_par_KmcactCarCYT, reaction_vcactC6_KicactC6AcylCarCYT, global_par_KicactCarCYT, global_par_Keqcact, x(31), const_species_CarMAT, x(32), const_species_CarCYT);

% Reaction: id = vcactC4	% Local Parameter:   id =  KicactC4AcylCarCYT, name = KicactC4AcylCarCYT
	reaction_vcactC4_KicactC4AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC4AcylCarCYT, name = KmcactC4AcylCarCYT
	reaction_vcactC4_KmcactC4AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC4AcylCarMAT, name = KmcactC4AcylCarMAT
	reaction_vcactC4_KmcactC4AcylCarMAT=15.0;

	reaction_vcactC4=CACT(global_par_Vfcact, global_par_Vrcact, reaction_vcactC4_KmcactC4AcylCarCYT, global_par_KmcactCarMAT, reaction_vcactC4_KmcactC4AcylCarMAT, global_par_KmcactCarCYT, reaction_vcactC4_KicactC4AcylCarCYT, global_par_KicactCarCYT, global_par_Keqcact, x(37), const_species_CarMAT, x(38), const_species_CarCYT);

% Reaction: id = vcpt2C16	% Local Parameter:   id =  sfcpt2C16, name = sfcpt2C16
	reaction_vcpt2C16_sfcpt2C16=0.85;

	reaction_vcpt2C16=CPT2(reaction_vcpt2C16_sfcpt2C16, global_par_Vcpt2, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2CoAMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Keqcpt2, x(2), x(8), x(14), x(20), x(26), x(32), x(38), x(46), x(3), x(9), x(15), x(21), x(27), x(33), x(39), const_species_CarMAT);

% Reaction: id = vcpt2C14	% Local Parameter:   id =  sfcpt2C14, name = sfcpt2C14
	reaction_vcpt2C14_sfcpt2C14=1.0;

	reaction_vcpt2C14=CPT2(reaction_vcpt2C14_sfcpt2C14, global_par_Vcpt2, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2CoAMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Keqcpt2, x(8), x(2), x(14), x(20), x(26), x(32), x(38), x(46), x(9), x(3), x(15), x(21), x(27), x(33), x(39), const_species_CarMAT);

% Reaction: id = vcpt2C12	% Local Parameter:   id =  sfcpt2C12, name = sfcpt2C12
	reaction_vcpt2C12_sfcpt2C12=0.95;

	reaction_vcpt2C12=CPT2(reaction_vcpt2C12_sfcpt2C12, global_par_Vcpt2, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2CoAMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Keqcpt2, x(14), x(2), x(8), x(20), x(26), x(32), x(38), x(46), x(15), x(3), x(9), x(21), x(27), x(33), x(39), const_species_CarMAT);

% Reaction: id = vcpt2C10	% Local Parameter:   id =  sfcpt2C10, name = sfcpt2C10
	reaction_vcpt2C10_sfcpt2C10=0.95;

	reaction_vcpt2C10=CPT2(reaction_vcpt2C10_sfcpt2C10, global_par_Vcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2CoAMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Keqcpt2, x(20), x(2), x(8), x(14), x(26), x(32), x(38), x(46), x(21), x(3), x(9), x(15), x(27), x(33), x(39), const_species_CarMAT);

% Reaction: id = vcpt2C8	% Local Parameter:   id =  sfcpt2C8, name = sfcpt2C8
	reaction_vcpt2C8_sfcpt2C8=0.35;

	reaction_vcpt2C8=CPT2(reaction_vcpt2C8_sfcpt2C8, global_par_Vcpt2, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2CoAMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Keqcpt2, x(26), x(2), x(8), x(14), x(20), x(32), x(38), x(46), x(27), x(3), x(9), x(15), x(21), x(33), x(39), const_species_CarMAT);

% Reaction: id = vcpt2C6	% Local Parameter:   id =  sfcpt2C6, name = sfcpt2C6
	reaction_vcpt2C6_sfcpt2C6=0.15;

	reaction_vcpt2C6=CPT2(reaction_vcpt2C6_sfcpt2C6, global_par_Vcpt2, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2CoAMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Keqcpt2, x(32), x(2), x(8), x(14), x(20), x(26), x(38), x(46), x(33), x(3), x(9), x(15), x(21), x(27), x(39), const_species_CarMAT);

% Reaction: id = vcpt2C4	% Local Parameter:   id =  sfcpt2C4, name = sfcpt2C4
	reaction_vcpt2C4_sfcpt2C4=0.01;

	reaction_vcpt2C4=CPT2(reaction_vcpt2C4_sfcpt2C4, global_par_Vcpt2, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2CoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Keqcpt2, x(38), x(2), x(8), x(14), x(20), x(26), x(32), x(46), x(39), x(3), x(9), x(15), x(21), x(27), x(33), const_species_CarMAT);

% Reaction: id = vvlcadC16	% Local Parameter:   id =  sfvlcadC16, name = sfvlcadC16
	reaction_vvlcadC16_sfvlcadC16=1.0;

	reaction_vvlcadC16=VLCAD(reaction_vvlcadC16_sfvlcadC16, global_par_Vvlcad, global_par_KmvlcadC16AcylCoAMAT, global_par_KmvlcadC14AcylCoAMAT, global_par_KmvlcadC12AcylCoAMAT, global_par_KmvlcadFAD, global_par_KmvlcadC16EnoylCoAMAT, global_par_KmvlcadC14EnoylCoAMAT, global_par_KmvlcadC12EnoylCoAMAT, global_par_KmvlcadFADH, global_par_Keqvlcad, x(3), x(9), x(15), const_species_FADtMAT, x(4), x(10), x(16), x(44));

% Reaction: id = vvlcadC14	% Local Parameter:   id =  sfvlcadC14, name = sfvlcadC14
	reaction_vvlcadC14_sfvlcadC14=0.42;

	reaction_vvlcadC14=VLCAD(reaction_vvlcadC14_sfvlcadC14, global_par_Vvlcad, global_par_KmvlcadC14AcylCoAMAT, global_par_KmvlcadC16AcylCoAMAT, global_par_KmvlcadC12AcylCoAMAT, global_par_KmvlcadFAD, global_par_KmvlcadC14EnoylCoAMAT, global_par_KmvlcadC16EnoylCoAMAT, global_par_KmvlcadC12EnoylCoAMAT, global_par_KmvlcadFADH, global_par_Keqvlcad, x(9), x(3), x(15), const_species_FADtMAT, x(10), x(4), x(16), x(44));

% Reaction: id = vvlcadC12	% Local Parameter:   id =  sfvlcadC12, name = sfvlcadC12
	reaction_vvlcadC12_sfvlcadC12=0.11;

	reaction_vvlcadC12=VLCAD(reaction_vvlcadC12_sfvlcadC12, global_par_Vvlcad, global_par_KmvlcadC12AcylCoAMAT, global_par_KmvlcadC16AcylCoAMAT, global_par_KmvlcadC14AcylCoAMAT, global_par_KmvlcadFAD, global_par_KmvlcadC12EnoylCoAMAT, global_par_KmvlcadC16EnoylCoAMAT, global_par_KmvlcadC14EnoylCoAMAT, global_par_KmvlcadFADH, global_par_Keqvlcad, x(15), x(3), x(9), const_species_FADtMAT, x(16), x(4), x(10), x(44));

% Reaction: id = vlcadC16	% Local Parameter:   id =  sflcadC16, name = sflcadC16
	reaction_vlcadC16_sflcadC16=0.9;

	reaction_vlcadC16=LCAD(reaction_vlcadC16_sflcadC16, global_par_Vlcad, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFADH, global_par_Keqlcad, x(3), x(9), x(15), x(21), x(27), const_species_FADtMAT, x(4), x(10), x(16), x(22), x(28), x(44));

% Reaction: id = vlcadC14	% Local Parameter:   id =  sflcadC14, name = sflcadC14
	reaction_vlcadC14_sflcadC14=1.0;

	reaction_vlcadC14=LCAD(reaction_vlcadC14_sflcadC14, global_par_Vlcad, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFADH, global_par_Keqlcad, x(9), x(3), x(15), x(21), x(27), const_species_FADtMAT, x(10), x(4), x(16), x(22), x(28), x(44));

% Reaction: id = vlcadC12	% Local Parameter:   id =  sflcadC12, name = sflcadC12
	reaction_vlcadC12_sflcadC12=0.9;

	reaction_vlcadC12=LCAD(reaction_vlcadC12_sflcadC12, global_par_Vlcad, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFADH, global_par_Keqlcad, x(15), x(3), x(9), x(21), x(27), const_species_FADtMAT, x(10), x(4), x(10), x(22), x(28), x(44));

% Reaction: id = vlcadC10	% Local Parameter:   id =  sflcadC10, name = sflcadC10
	reaction_vlcadC10_sflcadC10=0.75;

	reaction_vlcadC10=LCAD(reaction_vlcadC10_sflcadC10, global_par_Vlcad, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFADH, global_par_Keqlcad, x(21), x(3), x(9), x(15), x(27), const_species_FADtMAT, x(22), x(4), x(10), x(16), x(28), x(44));

% Reaction: id = vlcadC8	% Local Parameter:   id =  sflcadC8, name = sflcadC8
	reaction_vlcadC8_sflcadC8=0.4;

	reaction_vlcadC8=LCAD(reaction_vlcadC8_sflcadC8, global_par_Vlcad, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadFADH, global_par_Keqlcad, x(27), x(3), x(9), x(15), x(21), const_species_FADtMAT, x(28), x(4), x(10), x(16), x(22), x(44));

% Reaction: id = vmcadC12	% Local Parameter:   id =  sfmcadC12, name = sfmcadC12
	reaction_vmcadC12_sfmcadC12=0.38;

	reaction_vmcadC12=MCAD(reaction_vmcadC12_sfmcadC12, global_par_Vmcad, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadFADH, global_par_Keqmcad, x(15), x(21), x(27), x(33), x(39), const_species_FADtMAT, x(16), x(22), x(28), x(34), x(40), x(44));

% Reaction: id = vmcadC10	% Local Parameter:   id =  sfmcadC10, name = sfmcadC10
	reaction_vmcadC10_sfmcadC10=0.8;

	reaction_vmcadC10=MCAD(reaction_vmcadC10_sfmcadC10, global_par_Vmcad, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadFADH, global_par_Keqmcad, x(21), x(15), x(27), x(33), x(39), const_species_FADtMAT, x(22), x(16), x(28), x(34), x(40), x(44));

% Reaction: id = vmcadC8	% Local Parameter:   id =  sfmcadC8, name = sfmcadC8
	reaction_vmcadC8_sfmcadC8=0.87;

	reaction_vmcadC8=MCAD(reaction_vmcadC8_sfmcadC8, global_par_Vmcad, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadFADH, global_par_Keqmcad, x(27), x(15), x(21), x(33), x(39), const_species_FADtMAT, x(28), x(16), x(22), x(34), x(40), x(44));

% Reaction: id = vmcadC6	% Local Parameter:   id =  sfmcadC6, name = sfmcadC6
	reaction_vmcadC6_sfmcadC6=1.0;

	reaction_vmcadC6=MCAD(reaction_vmcadC6_sfmcadC6, global_par_Vmcad, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadFADH, global_par_Keqmcad, x(33), x(15), x(21), x(27), x(39), const_species_FADtMAT, x(34), x(16), x(22), x(28), x(40), x(44));

% Reaction: id = vmcadC4	% Local Parameter:   id =  sfmcadC4, name = sfmcadC4
	reaction_vmcadC4_sfmcadC4=0.12;

	reaction_vmcadC4=MCAD(reaction_vmcadC4_sfmcadC4, global_par_Vmcad, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadFADH, global_par_Keqmcad, x(39), x(15), x(21), x(27), x(33), const_species_FADtMAT, x(40), x(16), x(22), x(28), x(34), x(44));

% Reaction: id = vscadC6	% Local Parameter:   id =  sfscadC6, name = sfscadC6
	reaction_vscadC6_sfscadC6=0.3;

	reaction_vscadC6=SCAD(reaction_vscadC6_sfscadC6, global_par_Vscad, global_par_KmscadC6AcylCoAMAT, global_par_KmscadC4AcylCoAMAT, global_par_KmscadFAD, global_par_KmscadC6EnoylCoAMAT, global_par_KmscadC4EnoylCoAMAT, global_par_KmscadFADH, global_par_Keqscad, x(33), x(39), const_species_FADtMAT, x(34), x(40), x(44));

% Reaction: id = vscadC4	% Local Parameter:   id =  sfscadC4, name = sfscadC4
	reaction_vscadC4_sfscadC4=1.0;

	reaction_vscadC4=SCAD(reaction_vscadC4_sfscadC4, global_par_Vscad, global_par_KmscadC4AcylCoAMAT, global_par_KmscadC6AcylCoAMAT, global_par_KmscadFAD, global_par_KmscadC4EnoylCoAMAT, global_par_KmscadC6EnoylCoAMAT, global_par_KmscadFADH, global_par_Keqscad, x(39), x(33), const_species_FADtMAT, x(40), x(34), x(44));

% Reaction: id = vcrotC16	% Local Parameter:   id =  sfcrotC16, name = sfcrotC16
	reaction_vcrotC16_sfcrotC16=0.13;

	reaction_vcrotC16=CROT(reaction_vcrotC16_sfcrotC16, global_par_Vcrot, global_par_KmcrotC16EnoylCoAMAT, global_par_KmcrotC14EnoylCoAMAT, global_par_KmcrotC12EnoylCoAMAT, global_par_KmcrotC10EnoylCoAMAT, global_par_KmcrotC8EnoylCoAMAT, global_par_KmcrotC6EnoylCoAMAT, global_par_KmcrotC4EnoylCoAMAT, global_par_KmcrotC16HydroxyacylCoAMAT, global_par_KmcrotC14HydroxyacylCoAMAT, global_par_KmcrotC12HydroxyacylCoAMAT, global_par_KmcrotC10HydroxyacylCoAMAT, global_par_KmcrotC8HydroxyacylCoAMAT, global_par_KmcrotC6HydroxyacylCoAMAT, global_par_KmcrotC4HydroxyacylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqcrot, x(4), x(10), x(16), x(22), x(28), x(34), x(40), x(5), x(11), x(17), x(23), x(29), x(35), x(41), x(42));

% Reaction: id = vcrotC14	% Local Parameter:   id =  sfcrotC14, name = sfcrotC14
	reaction_vcrotC14_sfcrotC14=0.2;

	reaction_vcrotC14=CROT(reaction_vcrotC14_sfcrotC14, global_par_Vcrot, global_par_KmcrotC14EnoylCoAMAT, global_par_KmcrotC16EnoylCoAMAT, global_par_KmcrotC12EnoylCoAMAT, global_par_KmcrotC10EnoylCoAMAT, global_par_KmcrotC8EnoylCoAMAT, global_par_KmcrotC6EnoylCoAMAT, global_par_KmcrotC4EnoylCoAMAT, global_par_KmcrotC14HydroxyacylCoAMAT, global_par_KmcrotC16HydroxyacylCoAMAT, global_par_KmcrotC12HydroxyacylCoAMAT, global_par_KmcrotC10HydroxyacylCoAMAT, global_par_KmcrotC8HydroxyacylCoAMAT, global_par_KmcrotC6HydroxyacylCoAMAT, global_par_KmcrotC4HydroxyacylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqcrot, x(10), x(4), x(16), x(22), x(28), x(34), x(40), x(11), x(5), x(17), x(23), x(29), x(35), x(41), x(42));

% Reaction: id = vcrotC12	% Local Parameter:   id =  sfcrotC12, name = sfcrotC12
	reaction_vcrotC12_sfcrotC12=0.25;

	reaction_vcrotC12=CROT(reaction_vcrotC12_sfcrotC12, global_par_Vcrot, global_par_KmcrotC12EnoylCoAMAT, global_par_KmcrotC16EnoylCoAMAT, global_par_KmcrotC14EnoylCoAMAT, global_par_KmcrotC10EnoylCoAMAT, global_par_KmcrotC8EnoylCoAMAT, global_par_KmcrotC6EnoylCoAMAT, global_par_KmcrotC4EnoylCoAMAT, global_par_KmcrotC12HydroxyacylCoAMAT, global_par_KmcrotC16HydroxyacylCoAMAT, global_par_KmcrotC14HydroxyacylCoAMAT, global_par_KmcrotC10HydroxyacylCoAMAT, global_par_KmcrotC8HydroxyacylCoAMAT, global_par_KmcrotC6HydroxyacylCoAMAT, global_par_KmcrotC4HydroxyacylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqcrot, x(16), x(4), x(10), x(22), x(28), x(34), x(40), x(17), x(5), x(11), x(23), x(29), x(35), x(41), x(42));

% Reaction: id = vcrotC10	% Local Parameter:   id =  sfcrotC10, name = sfcrotC10
	reaction_vcrotC10_sfcrotC10=0.33;

	reaction_vcrotC10=CROT(reaction_vcrotC10_sfcrotC10, global_par_Vcrot, global_par_KmcrotC10EnoylCoAMAT, global_par_KmcrotC16EnoylCoAMAT, global_par_KmcrotC14EnoylCoAMAT, global_par_KmcrotC12EnoylCoAMAT, global_par_KmcrotC8EnoylCoAMAT, global_par_KmcrotC6EnoylCoAMAT, global_par_KmcrotC4EnoylCoAMAT, global_par_KmcrotC10HydroxyacylCoAMAT, global_par_KmcrotC16HydroxyacylCoAMAT, global_par_KmcrotC14HydroxyacylCoAMAT, global_par_KmcrotC12HydroxyacylCoAMAT, global_par_KmcrotC8HydroxyacylCoAMAT, global_par_KmcrotC6HydroxyacylCoAMAT, global_par_KmcrotC4HydroxyacylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqcrot, x(22), x(4), x(10), x(16), x(28), x(34), x(40), x(23), x(5), x(11), x(17), x(29), x(35), x(41), x(42));

% Reaction: id = vcrotC8	% Local Parameter:   id =  sfcrotC8, name = sfcrotC8
	reaction_vcrotC8_sfcrotC8=0.58;

	reaction_vcrotC8=CROT(reaction_vcrotC8_sfcrotC8, global_par_Vcrot, global_par_KmcrotC8EnoylCoAMAT, global_par_KmcrotC16EnoylCoAMAT, global_par_KmcrotC14EnoylCoAMAT, global_par_KmcrotC12EnoylCoAMAT, global_par_KmcrotC10EnoylCoAMAT, global_par_KmcrotC6EnoylCoAMAT, global_par_KmcrotC4EnoylCoAMAT, global_par_KmcrotC8HydroxyacylCoAMAT, global_par_KmcrotC16HydroxyacylCoAMAT, global_par_KmcrotC14HydroxyacylCoAMAT, global_par_KmcrotC12HydroxyacylCoAMAT, global_par_KmcrotC10HydroxyacylCoAMAT, global_par_KmcrotC6HydroxyacylCoAMAT, global_par_KmcrotC4HydroxyacylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqcrot, x(28), x(4), x(10), x(16), x(22), x(34), x(40), x(29), x(5), x(11), x(17), x(23), x(35), x(41), x(42));

% Reaction: id = vcrotC6	% Local Parameter:   id =  sfcrotC6, name = sfcrotC6
	reaction_vcrotC6_sfcrotC6=0.83;

	reaction_vcrotC6=CROT(reaction_vcrotC6_sfcrotC6, global_par_Vcrot, global_par_KmcrotC6EnoylCoAMAT, global_par_KmcrotC16EnoylCoAMAT, global_par_KmcrotC14EnoylCoAMAT, global_par_KmcrotC12EnoylCoAMAT, global_par_KmcrotC10EnoylCoAMAT, global_par_KmcrotC8EnoylCoAMAT, global_par_KmcrotC4EnoylCoAMAT, global_par_KmcrotC6HydroxyacylCoAMAT, global_par_KmcrotC16HydroxyacylCoAMAT, global_par_KmcrotC14HydroxyacylCoAMAT, global_par_KmcrotC12HydroxyacylCoAMAT, global_par_KmcrotC10HydroxyacylCoAMAT, global_par_KmcrotC8HydroxyacylCoAMAT, global_par_KmcrotC4HydroxyacylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqcrot, x(34), x(4), x(10), x(16), x(22), x(28), x(40), x(35), x(5), x(11), x(17), x(23), x(29), x(41), x(42));

% Reaction: id = vcrotC4	% Local Parameter:   id =  sfcrotC4, name = sfcrotC4
	reaction_vcrotC4_sfcrotC4=1.0;

	reaction_vcrotC4=CROT(reaction_vcrotC4_sfcrotC4, global_par_Vcrot, global_par_KmcrotC4EnoylCoAMAT, global_par_KmcrotC16EnoylCoAMAT, global_par_KmcrotC14EnoylCoAMAT, global_par_KmcrotC12EnoylCoAMAT, global_par_KmcrotC10EnoylCoAMAT, global_par_KmcrotC8EnoylCoAMAT, global_par_KmcrotC6EnoylCoAMAT, global_par_KmcrotC4HydroxyacylCoAMAT, global_par_KmcrotC16HydroxyacylCoAMAT, global_par_KmcrotC14HydroxyacylCoAMAT, global_par_KmcrotC12HydroxyacylCoAMAT, global_par_KmcrotC10HydroxyacylCoAMAT, global_par_KmcrotC8HydroxyacylCoAMAT, global_par_KmcrotC6HydroxyacylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqcrot, x(40), x(4), x(10), x(16), x(22), x(28), x(34), x(41), x(5), x(11), x(17), x(23), x(29), x(35), x(42));

% Reaction: id = vmschadC16	% Local Parameter:   id =  sfmschadC16, name = sfmschadC16
	reaction_vmschadC16_sfmschadC16=0.6;

	reaction_vmschadC16=MSCHAD(reaction_vmschadC16_sfmschadC16, global_par_Vmschad, global_par_KmmschadC16HydroxyacylCoAMAT, global_par_KmmschadC14HydroxyacylCoAMAT, global_par_KmmschadC12HydroxyacylCoAMAT, global_par_KmmschadC10HydroxyacylCoAMAT, global_par_KmmschadC8HydroxyacylCoAMAT, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadNADMAT, global_par_KmmschadC16KetoacylCoAMAT, global_par_KmmschadC14KetoacylCoAMAT, global_par_KmmschadC12KetoacylCoAMAT, global_par_KmmschadC10KetoacylCoAMAT, global_par_KmmschadC8KetoacylCoAMAT, global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadNADHMAT, global_par_Keqmschad, x(5), x(11), x(17), x(23), x(29), x(35), x(41), const_species_NADtMAT, x(6), x(12), x(18), x(24), x(30), x(36), x(42), x(45));

% Reaction: id = vmschadC14	% Local Parameter:   id =  sfmschadC14, name = sfmschadC14
	reaction_vmschadC14_sfmschadC14=0.5;

	reaction_vmschadC14=MSCHAD(reaction_vmschadC14_sfmschadC14, global_par_Vmschad, global_par_KmmschadC14HydroxyacylCoAMAT, global_par_KmmschadC16HydroxyacylCoAMAT, global_par_KmmschadC12HydroxyacylCoAMAT, global_par_KmmschadC10HydroxyacylCoAMAT, global_par_KmmschadC8HydroxyacylCoAMAT, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadNADMAT, global_par_KmmschadC14KetoacylCoAMAT, global_par_KmmschadC16KetoacylCoAMAT, global_par_KmmschadC12KetoacylCoAMAT, global_par_KmmschadC10KetoacylCoAMAT, global_par_KmmschadC8KetoacylCoAMAT, global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadNADHMAT, global_par_Keqmschad, x(11), x(5), x(17), x(23), x(29), x(35), x(41), const_species_NADtMAT, x(12), x(6), x(18), x(24), x(30), x(36), x(42), x(45));

% Reaction: id = vmschadC12	% Local Parameter:   id =  sfmschadC12, name = sfmschadC12
	reaction_vmschadC12_sfmschadC12=0.43;

	reaction_vmschadC12=MSCHAD(reaction_vmschadC12_sfmschadC12, global_par_Vmschad, global_par_KmmschadC12HydroxyacylCoAMAT, global_par_KmmschadC16HydroxyacylCoAMAT, global_par_KmmschadC14HydroxyacylCoAMAT, global_par_KmmschadC10HydroxyacylCoAMAT, global_par_KmmschadC8HydroxyacylCoAMAT, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadNADMAT, global_par_KmmschadC12KetoacylCoAMAT, global_par_KmmschadC16KetoacylCoAMAT, global_par_KmmschadC14KetoacylCoAMAT, global_par_KmmschadC10KetoacylCoAMAT, global_par_KmmschadC8KetoacylCoAMAT, global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadNADHMAT, global_par_Keqmschad, x(17), x(5), x(11), x(23), x(29), x(35), x(41), const_species_NADtMAT, x(18), x(6), x(12), x(24), x(30), x(36), x(42), x(45));

% Reaction: id = vmschadC10	% Local Parameter:   id =  sfmschadC10, name = sfmschadC10
	reaction_vmschadC10_sfmschadC10=0.64;

	reaction_vmschadC10=MSCHAD(reaction_vmschadC10_sfmschadC10, global_par_Vmschad, global_par_KmmschadC10HydroxyacylCoAMAT, global_par_KmmschadC16HydroxyacylCoAMAT, global_par_KmmschadC14HydroxyacylCoAMAT, global_par_KmmschadC12HydroxyacylCoAMAT, global_par_KmmschadC8HydroxyacylCoAMAT, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadNADMAT, global_par_KmmschadC10KetoacylCoAMAT, global_par_KmmschadC16KetoacylCoAMAT, global_par_KmmschadC14KetoacylCoAMAT, global_par_KmmschadC12KetoacylCoAMAT, global_par_KmmschadC8KetoacylCoAMAT, global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadNADHMAT, global_par_Keqmschad, x(23), x(5), x(11), x(17), x(29), x(35), x(41), const_species_NADtMAT, x(24), x(6), x(12), x(18), x(30), x(36), x(42), x(45));

% Reaction: id = vmschadC8	% Local Parameter:   id =  sfmschadC8, name = sfmschadC8
	reaction_vmschadC8_sfmschadC8=0.89;

	reaction_vmschadC8=MSCHAD(reaction_vmschadC8_sfmschadC8, global_par_Vmschad, global_par_KmmschadC8HydroxyacylCoAMAT, global_par_KmmschadC16HydroxyacylCoAMAT, global_par_KmmschadC14HydroxyacylCoAMAT, global_par_KmmschadC12HydroxyacylCoAMAT, global_par_KmmschadC10HydroxyacylCoAMAT, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadNADMAT, global_par_KmmschadC8KetoacylCoAMAT, global_par_KmmschadC16KetoacylCoAMAT, global_par_KmmschadC14KetoacylCoAMAT, global_par_KmmschadC12KetoacylCoAMAT, global_par_KmmschadC10KetoacylCoAMAT, global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadNADHMAT, global_par_Keqmschad, x(29), x(5), x(11), x(17), x(23), x(35), x(41), const_species_NADtMAT, x(30), x(6), x(12), x(18), x(24), x(36), x(42), x(45));

% Reaction: id = vmschadC6	% Local Parameter:   id =  sfmschadC6, name = sfmschadC6
	reaction_vmschadC6_sfmschadC6=1.0;

	reaction_vmschadC6=MSCHAD(reaction_vmschadC6_sfmschadC6, global_par_Vmschad, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadC16HydroxyacylCoAMAT, global_par_KmmschadC14HydroxyacylCoAMAT, global_par_KmmschadC12HydroxyacylCoAMAT, global_par_KmmschadC10HydroxyacylCoAMAT, global_par_KmmschadC8HydroxyacylCoAMAT, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadNADMAT, global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadC16KetoacylCoAMAT, global_par_KmmschadC14KetoacylCoAMAT, global_par_KmmschadC12KetoacylCoAMAT, global_par_KmmschadC10KetoacylCoAMAT, global_par_KmmschadC8KetoacylCoAMAT, global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadNADHMAT, global_par_Keqmschad, x(35), x(5), x(11), x(17), x(23), x(29), x(41), const_species_NADtMAT, x(36), x(6), x(12), x(18), x(24), x(30), x(42), x(45));

% Reaction: id = vmschadC4	% Local Parameter:   id =  sfmschadC4, name = sfmschadC4
	reaction_vmschadC4_sfmschadC4=0.67;

	reaction_vmschadC4=MSCHAD(reaction_vmschadC4_sfmschadC4, global_par_Vmschad, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadC16HydroxyacylCoAMAT, global_par_KmmschadC14HydroxyacylCoAMAT, global_par_KmmschadC12HydroxyacylCoAMAT, global_par_KmmschadC10HydroxyacylCoAMAT, global_par_KmmschadC8HydroxyacylCoAMAT, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadNADMAT, global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadC16KetoacylCoAMAT, global_par_KmmschadC14KetoacylCoAMAT, global_par_KmmschadC12KetoacylCoAMAT, global_par_KmmschadC10KetoacylCoAMAT, global_par_KmmschadC8KetoacylCoAMAT, global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadNADHMAT, global_par_Keqmschad, x(41), x(5), x(11), x(17), x(23), x(29), x(35), const_species_NADtMAT, x(42), x(6), x(12), x(18), x(24), x(30), x(36), x(45));

% Reaction: id = vmckatC16	% Local Parameter:   id =  sfmckatC16, name = sfmckatC16
	reaction_vmckatC16_sfmckatC16=0.0;

	reaction_vmckatC16=MCKATA(reaction_vmckatC16_sfmckatC16, global_par_Vmckat, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatAcetylCoAMAT, global_par_Keqmckat, x(6), x(12), x(18), x(24), x(30), x(36), x(42), x(46), x(9), x(3), x(15), x(21), x(27), x(33), x(39), x(43));

% Reaction: id = vmckatC14	% Local Parameter:   id =  sfmckatC14, name = sfmckatC14
	reaction_vmckatC14_sfmckatC14=0.2;

	reaction_vmckatC14=MCKATA(reaction_vmckatC14_sfmckatC14, global_par_Vmckat, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatAcetylCoAMAT, global_par_Keqmckat, x(12), x(6), x(18), x(24), x(30), x(36), x(42), x(46), x(15), x(3), x(9), x(21), x(27), x(33), x(39), x(43));

% Reaction: id = vmckatC12	% Local Parameter:   id =  sfmckatC12, name = sfmckatC12
	reaction_vmckatC12_sfmckatC12=0.38;

	reaction_vmckatC12=MCKATA(reaction_vmckatC12_sfmckatC12, global_par_Vmckat, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatAcetylCoAMAT, global_par_Keqmckat, x(18), x(6), x(12), x(24), x(30), x(36), x(42), x(46), x(21), x(3), x(9), x(15), x(27), x(33), x(39), x(43));

% Reaction: id = vmckatC10	% Local Parameter:   id =  sfmckatC10, name = sfmckatC10
	reaction_vmckatC10_sfmckatC10=0.65;

	reaction_vmckatC10=MCKATA(reaction_vmckatC10_sfmckatC10, global_par_Vmckat, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatAcetylCoAMAT, global_par_Keqmckat, x(24), x(6), x(12), x(18), x(30), x(36), x(42), x(46), x(27), x(3), x(9), x(15), x(21), x(33), x(39), x(43));

% Reaction: id = vmckatC8	% Local Parameter:   id =  sfmckatC8, name = sfmckatC8
	reaction_vmckatC8_sfmckatC8=0.81;

	reaction_vmckatC8=MCKATA(reaction_vmckatC8_sfmckatC8, global_par_Vmckat, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatAcetylCoAMAT, global_par_Keqmckat, x(30), x(6), x(12), x(18), x(24), x(36), x(42), x(46), x(33), x(3), x(9), x(15), x(21), x(27), x(39), x(43));

% Reaction: id = vmckatC6	% Local Parameter:   id =  sfmckatC6, name = sfmckatC6
	reaction_vmckatC6_sfmckatC6=1.0;

	reaction_vmckatC6=MCKATA(reaction_vmckatC6_sfmckatC6, global_par_Vmckat, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatAcetylCoAMAT, global_par_Keqmckat, x(36), x(6), x(12), x(18), x(24), x(30), x(42), x(46), x(39), x(3), x(9), x(15), x(21), x(27), x(33), x(43));

% Reaction: id = vmckatC4	% Local Parameter:   id =  sfmckatC4, name = sfmckatC4
	reaction_vmckatC4_sfmckatC4=0.49;

	reaction_vmckatC4=MCKATB(reaction_vmckatC4_sfmckatC4, global_par_Vmckat, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatAcetylCoAMAT, global_par_Keqmckat, x(42), x(6), x(12), x(18), x(24), x(30), x(36), x(46), x(39), x(3), x(9), x(15), x(21), x(27), x(33), x(43));

% Reaction: id = vmtpC16	% Local Parameter:   id =  sfmtpC16, name = sfmtpC16
	reaction_vmtpC16_sfmtpC16=1.0;

	reaction_vmtpC16=MTP(reaction_vmtpC16_sfmtpC16, global_par_Vmtp, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpNADMAT, global_par_KmmtpCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpAcetylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqmtp, x(4), x(10), x(16), x(22), x(28), const_species_NADtMAT, x(46), x(9), x(3), x(15), x(21), x(27), x(33), x(45), x(43), x(42));

% Reaction: id = vmtpC14	% Local Parameter:   id =  sfmtpC14, name = sfmtpC14
	reaction_vmtpC14_sfmtpC14=0.9;

	reaction_vmtpC14=MTP(reaction_vmtpC14_sfmtpC14, global_par_Vmtp, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpNADMAT, global_par_KmmtpCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpAcetylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqmtp, x(10), x(4), x(16), x(22), x(28), const_species_NADtMAT, x(46), x(15), x(3), x(9), x(21), x(27), x(33), x(45), x(43), x(42));

% Reaction: id = vmtpC12	% Local Parameter:   id =  sfmtpC12, name = sfmtpC12
	reaction_vmtpC12_sfmtpC12=0.81;

	reaction_vmtpC12=MTP(reaction_vmtpC12_sfmtpC12, global_par_Vmtp, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpNADMAT, global_par_KmmtpCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpAcetylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqmtp, x(16), x(4), x(10), x(22), x(28), const_species_NADtMAT, x(46), x(21), x(3), x(9), x(15), x(27), x(33), x(45), x(43), x(42));

% Reaction: id = vmtpC10	% Local Parameter:   id =  sfmtpC10, name = sfmtpC10
	reaction_vmtpC10_sfmtpC10=0.73;

	reaction_vmtpC10=MTP(reaction_vmtpC10_sfmtpC10, global_par_Vmtp, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpNADMAT, global_par_KmmtpCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpAcetylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqmtp, x(22), x(4), x(10), x(16), x(28), const_species_NADtMAT, x(46), x(27), x(3), x(9), x(15), x(21), x(33), x(45), x(43), x(42));

% Reaction: id = vmtpC8	% Local Parameter:   id =  sfmtpC8, name = sfmtpC8
	reaction_vmtpC8_sfmtpC8=0.34;

	reaction_vmtpC8=MTP(reaction_vmtpC8_sfmtpC8, global_par_Vmtp, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpNADMAT, global_par_KmmtpCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpAcetylCoAMAT, global_par_KicrotC4AcetoacylCoA, global_par_Keqmtp, x(28), x(4), x(10), x(16), x(22), const_species_NADtMAT, x(46), x(33), x(3), x(9), x(15), x(21), x(27), x(45), x(43), x(42));

% Reaction: id = vacesink	% Local Parameter:   id =  K1acesink, name = K1acesink
	reaction_vacesink_K1acesink=30.0;
	% Local Parameter:   id =  Ksacesink, name = Ksacesink
	reaction_vacesink_Ksacesink=6000000.0;

	reaction_vacesink=RES(reaction_vacesink_Ksacesink, x(43), reaction_vacesink_K1acesink);

% Reaction: id = vfadhsink	% Local Parameter:   id =  K1fadhsink, name = K1fadhsink
	reaction_vfadhsink_K1fadhsink=0.46;
	% Local Parameter:   id =  Ksfadhsink, name = Ksfadhsink
	reaction_vfadhsink_Ksfadhsink=6000000.0;

	reaction_vfadhsink=RES(reaction_vfadhsink_Ksfadhsink, x(44), reaction_vfadhsink_K1fadhsink);

% Reaction: id = vnadhsink	% Local Parameter:   id =  K1nadhsink, name = K1nadhsink
	reaction_vnadhsink_K1nadhsink=16.0;
	% Local Parameter:   id =  Ksnadhsink, name = Ksnadhsink
	reaction_vnadhsink_Ksnadhsink=6000000.0;

	reaction_vnadhsink=RES(reaction_vnadhsink_Ksnadhsink, x(45), reaction_vnadhsink_K1nadhsink);

% Species:   id = CarCYT, name = CarCYT, constant	const_species_CarCYT=400.0;

% Species:   id = CoACYT, name = CoACYT, constant	const_species_CoACYT=140.0;

% Species:   id = MalCoACYT, name = MalCoACYT, constant	const_species_MalCoACYT=0.0;

% Species:   id = CarMAT, name = CarMAT, constant	const_species_CarMAT=950.0;

% Species:   id = FADtMAT, name = FADtMAT, constant	const_species_FADtMAT=0.77;

% Species:   id = NADtMAT, name = NADtMAT, constant	const_species_NADtMAT=250.0;

% Species:   id = CoAMATt, name = CoAMATt, constant	const_species_CoAMATt=5000.0;

	xdot=zeros(47,1);
	
% Species:   id = C16AcylCarCYT, name = C16AcylCarCYT, affected by kineticLaw
	xdot(1) = (1/(compartment_VCYT))*(( 1.0 * reaction_vcpt1C16) + (-1.0 * reaction_vcactC16));
	
% Species:   id = C16AcylCarMAT, name = C16AcylCarMAT, affected by kineticLaw
	xdot(2) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC16) + (-1.0 * reaction_vcpt2C16));
	
% Species:   id = C16AcylCoAMAT, name = C16AcylCoAMAT, affected by kineticLaw
	xdot(3) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C16) + (-1.0 * reaction_vvlcadC16) + (-1.0 * reaction_vlcadC16));
	
% Species:   id = C16EnoylCoAMAT, name = C16EnoylCoAMAT, affected by kineticLaw
	xdot(4) = (1/(compartment_VMAT))*(( 1.0 * reaction_vvlcadC16) + ( 1.0 * reaction_vlcadC16) + (-1.0 * reaction_vcrotC16) + (-1.0 * reaction_vmtpC16));
	
% Species:   id = C16HydroxyacylCoAMAT, name = C16HydroxyacylCoAMAT, affected by kineticLaw
	xdot(5) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcrotC16) + (-1.0 * reaction_vmschadC16));
	
% Species:   id = C16KetoacylCoAMAT, name = C16KetoacylCoAMAT, affected by kineticLaw
	xdot(6) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC16) + (-1.0 * reaction_vmckatC16));
	
% Species:   id = C14AcylCarCYT, name = C14AcylCarCYT, affected by kineticLaw
	xdot(7) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC14));
	
% Species:   id = C14AcylCarMAT, name = C14AcylCarMAT, affected by kineticLaw
	xdot(8) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC14) + (-1.0 * reaction_vcpt2C14));
	
% Species:   id = C14AcylCoAMAT, name = C14AcylCoAMAT, affected by kineticLaw
	xdot(9) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C14) + (-1.0 * reaction_vvlcadC14) + (-1.0 * reaction_vlcadC14) + ( 1.0 * reaction_vmckatC16) + ( 1.0 * reaction_vmtpC16));
	
% Species:   id = C14EnoylCoAMAT, name = C14EnoylCoAMAT, affected by kineticLaw
	xdot(10) = (1/(compartment_VMAT))*(( 1.0 * reaction_vvlcadC14) + ( 1.0 * reaction_vlcadC14) + (-1.0 * reaction_vcrotC14) + (-1.0 * reaction_vmtpC14));
	
% Species:   id = C14HydroxyacylCoAMAT, name = C14HydroxyacylCoAMAT, affected by kineticLaw
	xdot(11) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcrotC14) + (-1.0 * reaction_vmschadC14));
	
% Species:   id = C14KetoacylCoAMAT, name = C14KetoacylCoAMAT, affected by kineticLaw
	xdot(12) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC14) + (-1.0 * reaction_vmckatC14));
	
% Species:   id = C12AcylCarCYT, name = C12AcylCarCYT, affected by kineticLaw
	xdot(13) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC12));
	
% Species:   id = C12AcylCarMAT, name = C12AcylCarMAT, affected by kineticLaw
	xdot(14) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC12) + (-1.0 * reaction_vcpt2C12));
	
% Species:   id = C12AcylCoAMAT, name = C12AcylCoAMAT, affected by kineticLaw
	xdot(15) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C12) + (-1.0 * reaction_vvlcadC12) + (-1.0 * reaction_vlcadC12) + (-1.0 * reaction_vmcadC12) + ( 1.0 * reaction_vmckatC14) + ( 1.0 * reaction_vmtpC14));
	
% Species:   id = C12EnoylCoAMAT, name = C12EnoylCoAMAT, affected by kineticLaw
	xdot(16) = (1/(compartment_VMAT))*(( 1.0 * reaction_vvlcadC12) + ( 1.0 * reaction_vlcadC12) + ( 1.0 * reaction_vmcadC12) + (-1.0 * reaction_vcrotC12) + (-1.0 * reaction_vmtpC12));
	
% Species:   id = C12HydroxyacylCoAMAT, name = C12HydroxyacylCoAMAT, affected by kineticLaw
	xdot(17) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcrotC12) + (-1.0 * reaction_vmschadC12));
	
% Species:   id = C12KetoacylCoAMAT, name = C12KetoacylCoAMAT, affected by kineticLaw
	xdot(18) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC12) + (-1.0 * reaction_vmckatC12));
	
% Species:   id = C10AcylCarCYT, name = C10AcylCarCYT, affected by kineticLaw
	xdot(19) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC10));
	
% Species:   id = C10AcylCarMAT, name = C10AcylCarMAT, affected by kineticLaw
	xdot(20) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC10) + (-1.0 * reaction_vcpt2C10));
	
% Species:   id = C10AcylCoAMAT, name = C10AcylCoAMAT, affected by kineticLaw
	xdot(21) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C10) + (-1.0 * reaction_vlcadC10) + (-1.0 * reaction_vmcadC10) + ( 1.0 * reaction_vmckatC12) + ( 1.0 * reaction_vmtpC12));
	
% Species:   id = C10EnoylCoAMAT, name = C10EnoylCoAMAT, affected by kineticLaw
	xdot(22) = (1/(compartment_VMAT))*(( 1.0 * reaction_vlcadC10) + ( 1.0 * reaction_vmcadC10) + (-1.0 * reaction_vcrotC10) + (-1.0 * reaction_vmtpC10));
	
% Species:   id = C10HydroxyacylCoAMAT, name = C10HydroxyacylCoAMAT, affected by kineticLaw
	xdot(23) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcrotC10) + (-1.0 * reaction_vmschadC10));
	
% Species:   id = C10KetoacylCoAMAT, name = C10KetoacylCoAMAT, affected by kineticLaw
	xdot(24) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC10) + (-1.0 * reaction_vmckatC10));
	
% Species:   id = C8AcylCarCYT, name = C8AcylCarCYT, affected by kineticLaw
	xdot(25) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC8));
	
% Species:   id = C8AcylCarMAT, name = C8AcylCarMAT, affected by kineticLaw
	xdot(26) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC8) + (-1.0 * reaction_vcpt2C8));
	
% Species:   id = C8AcylCoAMAT, name = C8AcylCoAMAT, affected by kineticLaw
	xdot(27) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C8) + (-1.0 * reaction_vlcadC8) + (-1.0 * reaction_vmcadC8) + ( 1.0 * reaction_vmckatC10) + ( 1.0 * reaction_vmtpC10));
	
% Species:   id = C8EnoylCoAMAT, name = C8EnoylCoAMAT, affected by kineticLaw
	xdot(28) = (1/(compartment_VMAT))*(( 1.0 * reaction_vlcadC8) + ( 1.0 * reaction_vmcadC8) + (-1.0 * reaction_vcrotC8) + (-1.0 * reaction_vmtpC8));
	
% Species:   id = C8HydroxyacylCoAMAT, name = C8HydroxyacylCoAMAT, affected by kineticLaw
	xdot(29) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcrotC8) + (-1.0 * reaction_vmschadC8));
	
% Species:   id = C8KetoacylCoAMAT, name = C8KetoacylCoAMAT, affected by kineticLaw
	xdot(30) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC8) + (-1.0 * reaction_vmckatC8));
	
% Species:   id = C6AcylCarCYT, name = C6AcylCarCYT, affected by kineticLaw
	xdot(31) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC6));
	
% Species:   id = C6AcylCarMAT, name = C6AcylCarMAT, affected by kineticLaw
	xdot(32) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC6) + (-1.0 * reaction_vcpt2C6));
	
% Species:   id = C6AcylCoAMAT, name = C6AcylCoAMAT, affected by kineticLaw
	xdot(33) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C6) + (-1.0 * reaction_vmcadC6) + (-1.0 * reaction_vscadC6) + ( 1.0 * reaction_vmckatC8) + ( 1.0 * reaction_vmtpC8));
	
% Species:   id = C6EnoylCoAMAT, name = C6EnoylCoAMAT, affected by kineticLaw
	xdot(34) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmcadC6) + ( 1.0 * reaction_vscadC6) + (-1.0 * reaction_vcrotC6));
	
% Species:   id = C6HydroxyacylCoAMAT, name = C6HydroxyacylCoAMAT, affected by kineticLaw
	xdot(35) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcrotC6) + (-1.0 * reaction_vmschadC6));
	
% Species:   id = C6KetoacylCoAMAT, name = C6KetoacylCoAMAT, affected by kineticLaw
	xdot(36) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC6) + (-1.0 * reaction_vmckatC6));
	
% Species:   id = C4AcylCarCYT, name = C4AcylCarCYT, affected by kineticLaw
	xdot(37) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC4));
	
% Species:   id = C4AcylCarMAT, name = C4AcylCarMAT, affected by kineticLaw
	xdot(38) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC4) + (-1.0 * reaction_vcpt2C4));
	
% Species:   id = C4AcylCoAMAT, name = C4AcylCoAMAT, affected by kineticLaw
	xdot(39) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C4) + (-1.0 * reaction_vmcadC4) + (-1.0 * reaction_vscadC4) + ( 1.0 * reaction_vmckatC6));
	
% Species:   id = C4EnoylCoAMAT, name = C4EnoylCoAMAT, affected by kineticLaw
	xdot(40) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmcadC4) + ( 1.0 * reaction_vscadC4) + (-1.0 * reaction_vcrotC4));
	
% Species:   id = C4HydroxyacylCoAMAT, name = C4HydroxyacylCoAMAT, affected by kineticLaw
	xdot(41) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcrotC4) + (-1.0 * reaction_vmschadC4));
	
% Species:   id = C4AcetoacylCoAMAT, name = C4AcetoacylCoAMAT, affected by kineticLaw
	xdot(42) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC4) + (-1.0 * reaction_vmckatC4));
	
% Species:   id = AcetylCoAMAT, name = AcetylCoAMAT, affected by kineticLaw
	xdot(43) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmckatC16) + ( 1.0 * reaction_vmckatC14) + ( 1.0 * reaction_vmckatC12) + ( 1.0 * reaction_vmckatC10) + ( 1.0 * reaction_vmckatC8) + ( 1.0 * reaction_vmckatC6) + ( 2.0 * reaction_vmckatC4) + ( 1.0 * reaction_vmtpC16) + ( 1.0 * reaction_vmtpC14) + ( 1.0 * reaction_vmtpC12) + ( 1.0 * reaction_vmtpC10) + ( 1.0 * reaction_vmtpC8) + (-1.0 * reaction_vacesink));
	
% Species:   id = FADHMAT, name = FADHMAT, affected by kineticLaw
	xdot(44) = (1/(compartment_VMAT))*(( 1.0 * reaction_vvlcadC16) + ( 1.0 * reaction_vvlcadC14) + ( 1.0 * reaction_vvlcadC12) + ( 1.0 * reaction_vlcadC16) + ( 1.0 * reaction_vlcadC14) + ( 1.0 * reaction_vlcadC12) + ( 1.0 * reaction_vlcadC10) + ( 1.0 * reaction_vlcadC8) + ( 1.0 * reaction_vmcadC12) + ( 1.0 * reaction_vmcadC10) + ( 1.0 * reaction_vmcadC8) + ( 1.0 * reaction_vmcadC6) + ( 1.0 * reaction_vmcadC4) + ( 1.0 * reaction_vscadC6) + ( 1.0 * reaction_vscadC4) + (-1.0 * reaction_vfadhsink));
	
% Species:   id = NADHMAT, name = NADHMAT, affected by kineticLaw
	xdot(45) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmschadC16) + ( 1.0 * reaction_vmschadC14) + ( 1.0 * reaction_vmschadC12) + ( 1.0 * reaction_vmschadC10) + ( 1.0 * reaction_vmschadC8) + ( 1.0 * reaction_vmschadC6) + ( 1.0 * reaction_vmschadC4) + ( 1.0 * reaction_vmtpC16) + ( 1.0 * reaction_vmtpC14) + ( 1.0 * reaction_vmtpC12) + ( 1.0 * reaction_vmtpC10) + ( 1.0 * reaction_vmtpC8) + (-1.0 * reaction_vnadhsink));
	
% Species:   id = CoAMAT, name = CoAMAT, involved in a rule 	xdot(46) = x(46);
	
% Species:   id = C16AcylCoACYT, name = C16AcylCoACYT, involved in a rule 	xdot(47) = x(47);
end

function z=CPT1(sf,V,Kms1,Kms2,Kmp1,Kmp2,Ki1,Keq,S1,S2,P1,P2,I1,n), z=(sf*V*(S1*S2/(Kms1*Kms2)-P1*P2/(Kms1*Kms2*Keq))/((1+S1/Kms1+P1/Kmp1+(I1/Ki1)^n)*(1+S2/Kms2+P2/Kmp2)));end

function z=CACT(Vf,Vr,Kms1,Kms2,Kmp1,Kmp2,Kis1,Kip2,Keq,S1,S2,P1,P2), z=(Vf*(S1*S2-P1*P2/Keq)/(S1*S2+Kms2*S1+Kms1*S2*(1+P2/Kip2)+Vf/(Vr*Keq)*(Kmp2*P1*(1+S1/Kis1)+P2*(Kmp1+P1))));end

function z=CPT2(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Keq,S1,S2,S3,S4,S5,S6,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8), z=(sf*V*(S1*S8/(Kms1*Kms8)-P1*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7)*(1+S8/Kms8+P8/Kmp8)));end

function z=VLCAD(sf,V,Kms1,Kms2,Kms3,Kms4,Kmp1,Kmp2,Kmp3,Kmp4,Keq,S1,S2,S3,S4,P1,P2,P3,P4), z=(sf*V*(S1*(S4-P4)/(Kms1*Kms4)-P1*P4/(Kms1*Kms4*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3)*(1+(S4-P4)/Kms4+P4/Kmp4)));end

function z=LCAD(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Keq,S1,S2,S3,S4,S5,S6,P1,P2,P3,P4,P5,P6), z=(sf*V*(S1*(S6-P6)/(Kms1*Kms6)-P1*P6/(Kms1*Kms6*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5)*(1+(S6-P6)/Kms6+P6/Kmp6)));end

function z=MCAD(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Keq,S1,S2,S3,S4,S5,S6,P1,P2,P3,P4,P5,P6), z=(sf*V*(S1*(S6-P6)/(Kms1*Kms6)-P1*P6/(Kms1*Kms6*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5)*(1+(S6-P6)/Kms6+P6/Kmp6)));end

function z=SCAD(sf,V,Kms1,Kms2,Kms3,Kmp1,Kmp2,Kmp3,Keq,S1,S2,S3,P1,P2,P3), z=(sf*V*(S1*(S3-P3)/(Kms1*Kms3)-P1*P3/(Kms1*Kms3*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2)*(1+(S3-P3)/Kms3+P3/Kmp3)));end

function z=CROT(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Ki1,Keq,S1,S2,S3,S4,S5,S6,S7,P1,P2,P3,P4,P5,P6,P7,I1), z=(sf*V*(S1/Kms1-P1/(Kms1*Keq))/(1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7+I1/Ki1));end

function z=MSCHAD(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Keq,S1,S2,S3,S4,S5,S6,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8), z=(sf*V*(S1*(S8-P8)/(Kms1*Kms8)-P1*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7)*(1+(S8-P8)/Kms8+P8/Kmp8)));end

function z=MCKATA(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Keq,S1,S2,S3,S4,S5,S6,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8), z=(sf*V*(S1*S8/(Kms1*Kms8)-P1*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7+P8/Kmp8)*(1+S8/Kms8+P8/Kmp8)));end

function z=MCKATB(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Keq,S1,S2,S3,S4,S5,S6,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8), z=(sf*V*(S1*S8/(Kms1*Kms8)-P8*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7+P8/Kmp8)*(1+S8/Kms8+P8/Kmp8)));end

function z=MTP(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Ki1,Keq,S1,S2,S3,S4,S5,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8,I1), z=(sf*V*(S1*(S7-P7)*S8/(Kms1*Kms7*Kms8)-P1*P7*P8/(Kms1*Kms7*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+P6/Kmp6+I1/Ki1)*(1+(S7-P7)/Kms7+P7/Kmp7)*(1+S8/Kms8+P8/Kmp8)));end

function z=RES(Ks,S,K1), z=(Ks*(S-K1));end

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


