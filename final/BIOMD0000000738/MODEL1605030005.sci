
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Duodenum   id: Duodenum
	compartment_Duodenum=3.84615E-5;
		
// compartment_RBC   id: RBC
	compartment_RBC=0.00079;
		
// compartment_Spleen   id: Spleen
	compartment_Spleen=6.73077E-5;
		
// compartment_Liver   id: Liver
	compartment_Liver=0.001161905;
		
// compartment_Plasma   id: Plasma
	compartment_Plasma=0.0013;
		
// compartment_RestOfBody   id: RestOfBody
	compartment_RestOfBody=0.019694766;
		
// compartment_BoneMarrow   id: BoneMarrow
	compartment_BoneMarrow=0.000214286;
		
// kNTBI_Fe1Tf_p   id: kNTBI_Fe1Tf
	kNTBI_Fe1Tf_p=1084322005;
		
// kInDuo_p   id: kInDuo
	kInDuo_p=0.0689984226081531;
		
// kInLiver_p   id: kInLiver
	kInLiver_p=2.97790545667672;
		
// kInRBC_p   id: kInRBC
	kInRBC_p=1.08447580176706;
		
// kInRest_p   id: kInRest
	kInRest_p=6.16356235352873;
		
// Km_p   id: Km
	Km_p=0.0159421218669513;
		
// Ki_p   id: Ki
	Ki_p=1E-9;
		
// kFe1Tf_Fe2Tf_p   id: kFe1Tf_Fe2Tf
	kFe1Tf_Fe2Tf_p=1084322005;
		
// VDuoNTBI_p   id: VDuoNTBI
	VDuoNTBI_p=0.200241893786814;
		
// VLiverNTBI_p   id: VLiverNTBI
	VLiverNTBI_p=0.0261147638001175;
		
// VSpleenNTBI_p   id: VSpleenNTBI
	VSpleenNTBI_p=1.342204923;
		
// VRestNTBI_p   id: VRestNTBI
	VRestNTBI_p=0.0109451335200198;
		
// kDuoLoss_p   id: kDuoLoss
	kDuoLoss_p=0.0270113302698216;
		
// vRBCSpleen_p   id: vRBCSpleen
	vRBCSpleen_p=0.0235286;
		
// kRestLoss_p   id: kRestLoss
	kRestLoss_p=0.023533240736163;
		
// Total_Fe__particle_p   id: Total_Fe__particle
	Total_Fe__particle_p=2.37232434371626E19;
		
// Total_Fe__conc_p   id: Total_Fe__conc
	Total_Fe__conc_p=0.0017088588213676;
		
// FePlasma__particle_p   id: FePlasma__particle
	FePlasma__particle_p=2.85251917169835E16;
		
// kInBM_p   id: kInBM
	kInBM_p=15.7690636138556;
		
// kBMSpleen_p   id: kBMSpleen
	kBMSpleen_p=0.061902954378781;
		
// Total_Fe__g_p   id: Total_Fe__g
	Total_Fe__g_p=0.00219992251253245;
		
// Total_Tf__particle_p   id: Total_Tf__particle
	Total_Tf__particle_p=3.029739534549E16;
		
// Total_Tf__conc_p   id: Total_Tf__conc
	Total_Tf__conc_p=3.87E-5;
		
// Total_Tf__mg_ml_p   id: Total_Tf__mg_ml
	Total_Tf__mg_ml_p=0.003096;
		
// vDiet_p   id: vDiet
	vDiet_p=0.00415624;
		
// FePlasma_conc_p   id: FePlasma_conc
	FePlasma_conc_p=3.6436297802464E-5;
		
// TfSaturation_p   id: TfSaturation
	TfSaturation_p=47.0322824186031;
		
// quantity_to_number_factor_p   id: quantity_to_number_factor
	quantity_to_number_factor_p=6.02214179E23;
		
// Avogadro_p   id: Avogadro
	Avogadro_p=6.02214179E23;
		
// ModelValue_13_p   id: ModelValue_13
	ModelValue_13_p=6.02214179E23;
		
// FeOutside_s   id: FeOutside
	FeOutside_s=0;
		
// v_HepcidinSynthesis   id: v     reactionID: HepcidinSynthesis
	v_HepcidinSynthesis=2.30942E-8;
	
// k1_HepcidinDecay   id: k1     reactionID: HepcidinDecay
	k1_HepcidinDecay=0.75616;
	



xdot=[
//x(1)   ID: FeDuo  initialValue: 0.0117590568706314
	(1/compartment_Duodenum)*( (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* (compartment_Duodenum*()) + (1)*(2)* () + (1)*(1)* () );
	
//x(2)   ID: FeRBC  initialValue: 0.0379799887571665
	(1/compartment_RBC)*( (-1)*(1)* () + (1)*(1)* () );
	
//x(3)   ID: FeSpleen  initialValue: 0.00394239990123767
	(1/compartment_Spleen)*( (-1)*(1)* () + (1)*(1)* () + (1)*(1)* () );
	
//x(4)   ID: FeLiver  initialValue: 0.00200010981212238
	(1/compartment_Liver)*( (-1)*(1)* () + (1)*(2)* () + (1)*(1)* () );
	
//x(5)   ID: Tf  initialValue: 1.5821833083706E-5
	(1/compartment_Plasma)*( (-1)*(1)* (compartment_Plasma*kNTBI_Fe1Tf_p* x(9) * x(5) ) + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () );
	
//x(6)   ID: Hepcidin  initialValue: 2.30017456622937E-8
	(1/compartment_Plasma)*( (-1)*(1)* (compartment_Plasma*k1_HepcidinDecay* x(6) ) + (1)*(1)* (compartment_Plasma*()) );
	
//x(7)   ID: Fe2Tf  initialValue: 1.35248196757048E-5
	(1/compartment_Plasma)*( (-1)*(1)* () + (-1)*(1)* () + (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* (compartment_Plasma*kFe1Tf_Fe2Tf_p* x(8) * x(9) ) );
	
//x(8)   ID: Fe1Tf  initialValue: 9.35334724058915E-6
	(1/compartment_Plasma)*( (-1)*(1)* (compartment_Plasma*kFe1Tf_Fe2Tf_p* x(8) * x(9) ) + (-1)*(1)* () + (-1)*(1)* () + (-1)*(1)* () + (-1)*(1)* () + (1)*(1)* (compartment_Plasma*kNTBI_Fe1Tf_p* x(9) * x(5) ) );
	
//x(9)   ID: NTBI  initialValue: 3.3311210465159E-8
	(1/compartment_Plasma)*( (-1)*(1)* (compartment_Plasma*kNTBI_Fe1Tf_p* x(9) * x(5) ) + (-1)*(1)* (compartment_Plasma*kFe1Tf_Fe2Tf_p* x(8) * x(9) ) + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () + (1)*(1)* () );
	
//x(10)   ID: FeRest  initialValue: 0.000286841656341217
	(1/compartment_RestOfBody)*( (-1)*(1)* (compartment_RestOfBody*kRestLoss_p* x(10) ) + (-1)*(1)* () + (1)*(2)* () + (1)*(1)* () );
	
//x(11)   ID: FeBM  initialValue: 0.00303783614844319
	(1/compartment_BoneMarrow)*( (-1)*(1)* () + (-1)*(1)* () + (1)*(2)* () + (1)*(1)* () )
	];


	
endfunction
        x0=[0.0117590568706314;0.0379799887571665;0.00394239990123767;0.00200010981212238;1.5821833083706E-5;2.30017456622937E-8;1.35248196757048E-5;9.35334724058915E-6;3.3311210465159E-8;0.000286841656341217;0.00303783614844319];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: FeDuo  initialValue: 0.0117590568706314
	
//x(2)   id: FeRBC  initialValue: 0.0379799887571665
	
//x(3)   id: FeSpleen  initialValue: 0.00394239990123767
	
//x(4)   id: FeLiver  initialValue: 0.00200010981212238
	
//x(5)   id: Tf  initialValue: 1.5821833083706E-5
	
//x(6)   id: Hepcidin  initialValue: 2.30017456622937E-8
	
//x(7)   id: Fe2Tf  initialValue: 1.35248196757048E-5
	
//x(8)   id: Fe1Tf  initialValue: 9.35334724058915E-6
	
//x(9)   id: NTBI  initialValue: 3.3311210465159E-8
	
//x(10)   id: FeRest  initialValue: 0.000286841656341217
	
//x(11)   id: FeBM  initialValue: 0.00303783614844319