
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell_nsclc   id: cell_nsclc
	compartment_cell_nsclc=1;
		
// gamma_IGFR_p   id: gamma_IGFR
	gamma_IGFR_p=0.02;
		
// kd_PI3K_a_p   id: kd_PI3K_a
	kd_PI3K_a_p=0.005;
		
// k_P90Rsk_ERKActive_p   id: k_P90Rsk_ERKActive
	k_P90Rsk_ERKActive_p=0.0213697;
		
// KM_P90Rsk_ERKActive_p   id: KM_P90Rsk_ERKActive
	KM_P90Rsk_ERKActive_p=763523;
		
// gamma_EGFR_p   id: gamma_EGFR
	gamma_EGFR_p=0.02;
		
// k_SOS_E_SOS_conformational_activation   id: k_SOS_E     reactionID: SOS_conformational_activation
	k_SOS_E_SOS_conformational_activation=694.731;
	
// n_SOS_SOS_conformational_activation   id: n_SOS     reactionID: SOS_conformational_activation
	n_SOS_SOS_conformational_activation=1;
	
// KM_SOS_E_SOS_conformational_activation   id: KM_SOS_E     reactionID: SOS_conformational_activation
	KM_SOS_E_SOS_conformational_activation=6086070;
	
// k_Ras_SOS_kRas_Activation   id: k_Ras_SOS     reactionID: kRas_Activation
	k_Ras_SOS_kRas_Activation=32.344;
	
// n_Ras_SOS_kRas_Activation   id: n_Ras_SOS     reactionID: kRas_Activation
	n_Ras_SOS_kRas_Activation=1;
	
// KM_Ras_SOS_kRas_Activation   id: KM_Ras_SOS     reactionID: kRas_Activation
	KM_Ras_SOS_kRas_Activation=3.59543E4;
	
// k_ERK_MekActive_ERK_activationBy_Mek   id: k_ERK_MekActive     reactionID: ERK_activationBy_Mek
	k_ERK_MekActive_ERK_activationBy_Mek=9.85367;
	
// KM_ERK_MekActive_ERK_activationBy_Mek   id: KM_ERK_MekActive     reactionID: ERK_activationBy_Mek
	KM_ERK_MekActive_ERK_activationBy_Mek=1007340;
	
// k_D_SOS_P90Rsk_SOS_deactivationBy_P90   id: k_D_SOS_P90Rsk     reactionID: SOS_deactivationBy_P90
	k_D_SOS_P90Rsk_SOS_deactivationBy_P90=161197;
	
// n_D_SOS_SOS_deactivationBy_P90   id: n_D_SOS     reactionID: SOS_deactivationBy_P90
	n_D_SOS_SOS_deactivationBy_P90=1;
	
// KM_D_SOS_P90Rsk_SOS_deactivationBy_P90   id: KM_D_SOS_P90Rsk     reactionID: SOS_deactivationBy_P90
	KM_D_SOS_P90Rsk_SOS_deactivationBy_P90=896896;
	
// k_A_SOS_I_SOS_activationBy_IGF   id: k_A_SOS_I     reactionID: SOS_activationBy_IGF
	k_A_SOS_I_SOS_activationBy_IGF=500;
	
// n_A_SOS_I_SOS_activationBy_IGF   id: n_A_SOS_I     reactionID: SOS_activationBy_IGF
	n_A_SOS_I_SOS_activationBy_IGF=1;
	
// KM_A_SOS_I_SOS_activationBy_IGF   id: KM_A_SOS_I     reactionID: SOS_activationBy_IGF
	KM_A_SOS_I_SOS_activationBy_IGF=100000;
	
// k_PI3K_IGF1R_PI3KCA_activationBy_IGF1R   id: k_PI3K_IGF1R     reactionID: PI3KCA_activationBy_IGF1R
	k_PI3K_IGF1R_PI3KCA_activationBy_IGF1R=10.6737;
	
// n_PI3K_I_PI3KCA_activationBy_IGF1R   id: n_PI3K_I     reactionID: PI3KCA_activationBy_IGF1R
	n_PI3K_I_PI3KCA_activationBy_IGF1R=1;
	
// KM_PI3K_IGF1R_PI3KCA_activationBy_IGF1R   id: KM_PI3K_IGF1R     reactionID: PI3KCA_activationBy_IGF1R
	KM_PI3K_IGF1R_PI3KCA_activationBy_IGF1R=184912;
	
// k_PI3K_EGF1R_PI3KCA_activationBy_EGF   id: k_PI3K_EGF1R     reactionID: PI3KCA_activationBy_EGF
	k_PI3K_EGF1R_PI3KCA_activationBy_EGF=10.6737;
	
// n_PI3K_E_PI3KCA_activationBy_EGF   id: n_PI3K_E     reactionID: PI3KCA_activationBy_EGF
	n_PI3K_E_PI3KCA_activationBy_EGF=1;
	
// KM_PI3K_EGF1R_PI3KCA_activationBy_EGF   id: KM_PI3K_EGF1R     reactionID: PI3KCA_activationBy_EGF
	KM_PI3K_EGF1R_PI3KCA_activationBy_EGF=184912;
	
// k_AKT_PI3K_Akt_activationBy_PI3KCA   id: k_AKT_PI3K     reactionID: Akt_activationBy_PI3KCA
	k_AKT_PI3K_Akt_activationBy_PI3KCA=0.0566279;
	
// n_AKT_PI3K_Akt_activationBy_PI3KCA   id: n_AKT_PI3K     reactionID: Akt_activationBy_PI3KCA
	n_AKT_PI3K_Akt_activationBy_PI3KCA=1;
	
// KM_AKT_PI3K_Akt_activationBy_PI3KCA   id: KM_AKT_PI3K     reactionID: Akt_activationBy_PI3KCA
	KM_AKT_PI3K_Akt_activationBy_PI3KCA=653951;
	
// kd_AKT_Akt_deactivation   id: kd_AKT     reactionID: Akt_deactivation
	kd_AKT_Akt_deactivation=0.005;
	
// k_ERKactive_PP2A_ERK_deactivationBy_PP2A   id: k_ERKactive_PP2A     reactionID: ERK_deactivationBy_PP2A
	k_ERKactive_PP2A_ERK_deactivationBy_PP2A=8.8912;
	
// n_ERKactive_PP2A_ERK_deactivationBy_PP2A   id: n_ERKactive_PP2A     reactionID: ERK_deactivationBy_PP2A
	n_ERKactive_PP2A_ERK_deactivationBy_PP2A=1;
	
// KM_ERKactive_PP2A_ERK_deactivationBy_PP2A   id: KM_ERKactive_PP2A     reactionID: ERK_deactivationBy_PP2A
	KM_ERKactive_PP2A_ERK_deactivationBy_PP2A=3496490;
	
// k_PI3K_Ras_PI3KCA_activationBy_kRas   id: k_PI3K_Ras     reactionID: PI3KCA_activationBy_kRas
	k_PI3K_Ras_PI3KCA_activationBy_kRas=0.0771067;
	
// n_PI3K_Ras_PI3KCA_activationBy_kRas   id: n_PI3K_Ras     reactionID: PI3KCA_activationBy_kRas
	n_PI3K_Ras_PI3KCA_activationBy_kRas=1;
	
// KM_PI3K_Ras_PI3KCA_activationBy_kRas   id: KM_PI3K_Ras     reactionID: PI3KCA_activationBy_kRas
	KM_PI3K_Ras_PI3KCA_activationBy_kRas=272056;
	
// k_Raf_RasActive_Raf_activationBy_kRas   id: k_Raf_RasActive     reactionID: Raf_activationBy_kRas
	k_Raf_RasActive_Raf_activationBy_kRas=0.884096;
	
// n_Raf_RasActive_Raf_activationBy_kRas   id: n_Raf_RasActive     reactionID: Raf_activationBy_kRas
	n_Raf_RasActive_Raf_activationBy_kRas=1;
	
// KM_Raf_RasActive_Raf_activationBy_kRas   id: KM_Raf_RasActive     reactionID: Raf_activationBy_kRas
	KM_Raf_RasActive_Raf_activationBy_kRas=6.24646E4;
	
// k_Mek_PP2A_Mek_activationBy_Raf   id: k_Mek_PP2A     reactionID: Mek_activationBy_Raf
	k_Mek_PP2A_Mek_activationBy_Raf=185.759;
	
// n_Mek_PP2A_Mek_activationBy_Raf   id: n_Mek_PP2A     reactionID: Mek_activationBy_Raf
	n_Mek_PP2A_Mek_activationBy_Raf=1;
	
// KM_MekPP2A_Mek_activationBy_Raf   id: KM_MekPP2A     reactionID: Mek_activationBy_Raf
	KM_MekPP2A_Mek_activationBy_Raf=4768350;
	
// k_Raf_AKT_Raf_deactivationBy_Akt   id: k_Raf_AKT     reactionID: Raf_deactivationBy_Akt
	k_Raf_AKT_Raf_deactivationBy_Akt=15.1212;
	
// n_Raf_AKT_Raf_deactivationBy_Akt   id: n_Raf_AKT     reactionID: Raf_deactivationBy_Akt
	n_Raf_AKT_Raf_deactivationBy_Akt=1;
	
// KM_Raf_AKT_Raf_deactivationBy_Akt   id: KM_Raf_AKT     reactionID: Raf_deactivationBy_Akt
	KM_Raf_AKT_Raf_deactivationBy_Akt=119355;
	
// k_RasActiveRasGap_Ras_deactivation   id: k_RasActiveRasGap     reactionID: Ras_deactivation
	k_RasActiveRasGap_Ras_deactivation=1509.36;
	
// n_RasActiveRasGap_Ras_deactivation   id: n_RasActiveRasGap     reactionID: Ras_deactivation
	n_RasActiveRasGap_Ras_deactivation=1;
	
// KM_RasActiveRasGap_Ras_deactivation   id: KM_RasActiveRasGap     reactionID: Ras_deactivation
	KM_RasActiveRasGap_Ras_deactivation=1432410;
	
// k_MekActivePP2A_Mek_deactivation   id: k_MekActivePP2A     reactionID: Mek_deactivation
	k_MekActivePP2A_Mek_deactivation=2.83243;
	
// n_MekActivePP2A_Mek_deactivation   id: n_MekActivePP2A     reactionID: Mek_deactivation
	n_MekActivePP2A_Mek_deactivation=1;
	
// KM_MekActivePP2A_Mek_deactivation   id: KM_MekActivePP2A     reactionID: Mek_deactivation
	KM_MekActivePP2A_Mek_deactivation=518753;
	
// k_RasActive_RafPP_Raf_deactivation   id: k_RasActive_RafPP     reactionID: Raf_deactivation
	k_RasActive_RafPP_Raf_deactivation=0.126329;
	
// n_RasActive_RafPP_Raf_deactivation   id: n_RasActive_RafPP     reactionID: Raf_deactivation
	n_RasActive_RafPP_Raf_deactivation=1;
	
// KM_RasActive_RafPP_Raf_deactivation   id: KM_RasActive_RafPP     reactionID: Raf_deactivation
	KM_RasActive_RafPP_Raf_deactivation=1061.71;
	
// kd_P90Rsk_P90_deactivation   id: kd_P90Rsk     reactionID: P90_deactivation
	kd_P90Rsk_P90_deactivation=0.005;
	



xdot=[
//x(1)   ID: EGFR_active  initialValue: 8000
	(1/compartment_cell_nsclc)*( (-1)*(1)* ((k_SOS_E_SOS_conformational_activation* x(1) *(power( x(2) ,n_SOS_SOS_conformational_activation)))/((power(KM_SOS_E_SOS_conformational_activation,n_SOS_SOS_conformational_activation))+(power( x(2) ,n_SOS_SOS_conformational_activation)))) + (-1)*(1)* (gamma_EGFR_p* x(1) ) + (-1)*(1)* (( x(1) *k_PI3K_EGF1R_PI3KCA_activationBy_EGF* x(1) *(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))/((power(KM_PI3K_EGF1R_PI3KCA_activationBy_EGF,n_PI3K_E_PI3KCA_activationBy_EGF))+(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))) + (1)*(1)* ((k_SOS_E_SOS_conformational_activation* x(1) *(power( x(2) ,n_SOS_SOS_conformational_activation)))/((power(KM_SOS_E_SOS_conformational_activation,n_SOS_SOS_conformational_activation))+(power( x(2) ,n_SOS_SOS_conformational_activation)))) + (1)*(1)* (( x(1) *k_PI3K_EGF1R_PI3KCA_activationBy_EGF* x(1) *(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))/((power(KM_PI3K_EGF1R_PI3KCA_activationBy_EGF,n_PI3K_E_PI3KCA_activationBy_EGF))+(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))) );
	
//x(2)   ID: D_SOS  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* ((k_SOS_E_SOS_conformational_activation* x(1) *(power( x(2) ,n_SOS_SOS_conformational_activation)))/((power(KM_SOS_E_SOS_conformational_activation,n_SOS_SOS_conformational_activation))+(power( x(2) ,n_SOS_SOS_conformational_activation)))) + (-1)*(1)* (( x(9) *k_A_SOS_I_SOS_activationBy_IGF*(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))/((power(KM_A_SOS_I_SOS_activationBy_IGF,n_A_SOS_I_SOS_activationBy_IGF))+(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))) + (1)*(1)* (( x(21) *k_D_SOS_P90Rsk_SOS_deactivationBy_P90*(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))/((power(KM_D_SOS_P90Rsk_SOS_deactivationBy_P90,n_D_SOS_SOS_deactivationBy_P90))+(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))) );
	
//x(3)   ID: A_SOS  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(3) *k_Ras_SOS_kRas_Activation*(power( x(15) ,n_Ras_SOS_kRas_Activation)))/((power(KM_Ras_SOS_kRas_Activation,n_Ras_SOS_kRas_Activation))+(power( x(15) ,n_Ras_SOS_kRas_Activation)))) + (-1)*(1)* (( x(21) *k_D_SOS_P90Rsk_SOS_deactivationBy_P90*(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))/((power(KM_D_SOS_P90Rsk_SOS_deactivationBy_P90,n_D_SOS_SOS_deactivationBy_P90))+(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))) + (1)*(1)* ((k_SOS_E_SOS_conformational_activation* x(1) *(power( x(2) ,n_SOS_SOS_conformational_activation)))/((power(KM_SOS_E_SOS_conformational_activation,n_SOS_SOS_conformational_activation))+(power( x(2) ,n_SOS_SOS_conformational_activation)))) + (1)*(1)* (( x(3) *k_Ras_SOS_kRas_Activation*(power( x(15) ,n_Ras_SOS_kRas_Activation)))/((power(KM_Ras_SOS_kRas_Activation,n_Ras_SOS_kRas_Activation))+(power( x(15) ,n_Ras_SOS_kRas_Activation)))) + (1)*(1)* (( x(9) *k_A_SOS_I_SOS_activationBy_IGF*(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))/((power(KM_A_SOS_I_SOS_activationBy_IGF,n_A_SOS_I_SOS_activationBy_IGF))+(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))) );
	
//x(4)   ID: Raf  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(5) *k_Raf_RasActive_Raf_activationBy_kRas*(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))/(KM_Raf_RasActive_Raf_activationBy_kRas+(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))) + (1)*(1)* (( x(12) *k_Raf_AKT_Raf_deactivationBy_Akt*(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))/((power(KM_Raf_AKT_Raf_deactivationBy_Akt,n_Raf_AKT_Raf_deactivationBy_Akt))+(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))) + (1)*(1)* (( x(19) *k_RasActive_RafPP_Raf_deactivation*(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))/((power(KM_RasActive_RafPP_Raf_deactivation,n_RasActive_RafPP_Raf_deactivation))+(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))) );
	
//x(5)   ID: Ras_active  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(5) *k_PI3K_Ras_PI3KCA_activationBy_kRas*(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))/((power(KM_PI3K_Ras_PI3KCA_activationBy_kRas,n_PI3K_Ras_PI3KCA_activationBy_kRas))+(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))) + (-1)*(1)* (( x(5) *k_Raf_RasActive_Raf_activationBy_kRas*(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))/(KM_Raf_RasActive_Raf_activationBy_kRas+(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))) + (-1)*(1)* (( x(18) *k_RasActiveRasGap_Ras_deactivation*(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))/((power(KM_RasActiveRasGap_Ras_deactivation,n_RasActiveRasGap_Ras_deactivation))+(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))) + (1)*(1)* (( x(3) *k_Ras_SOS_kRas_Activation*(power( x(15) ,n_Ras_SOS_kRas_Activation)))/((power(KM_Ras_SOS_kRas_Activation,n_Ras_SOS_kRas_Activation))+(power( x(15) ,n_Ras_SOS_kRas_Activation)))) + (1)*(1)* (( x(5) *k_PI3K_Ras_PI3KCA_activationBy_kRas*(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))/((power(KM_PI3K_Ras_PI3KCA_activationBy_kRas,n_PI3K_Ras_PI3KCA_activationBy_kRas))+(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))) + (1)*(1)* (( x(5) *k_Raf_RasActive_Raf_activationBy_kRas*(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))/(KM_Raf_RasActive_Raf_activationBy_kRas+(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))) );
	
//x(6)   ID: Mek_active  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(6) *k_ERK_MekActive_ERK_activationBy_Mek* x(7) )/(KM_ERK_MekActive_ERK_activationBy_Mek+ x(7) )) + (-1)*(1)* (( x(14) *k_MekActivePP2A_Mek_deactivation*(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))/((power(KM_MekActivePP2A_Mek_deactivation,n_MekActivePP2A_Mek_deactivation))+(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))) + (1)*(1)* (( x(6) *k_ERK_MekActive_ERK_activationBy_Mek* x(7) )/(KM_ERK_MekActive_ERK_activationBy_Mek+ x(7) )) + (1)*(1)* (( x(16) *k_Mek_PP2A_Mek_activationBy_Raf*(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))/((power(KM_MekPP2A_Mek_activationBy_Raf,n_Mek_PP2A_Mek_activationBy_Raf))+(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))) );
	
//x(7)   ID: ERK  initialValue: 600000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(6) *k_ERK_MekActive_ERK_activationBy_Mek* x(7) )/(KM_ERK_MekActive_ERK_activationBy_Mek+ x(7) )) + (1)*(1)* (( x(14) *k_ERKactive_PP2A_ERK_deactivationBy_PP2A*(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))/((power(KM_ERKactive_PP2A_ERK_deactivationBy_PP2A,n_ERKactive_PP2A_ERK_deactivationBy_PP2A))+(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))) );
	
//x(8)   ID: ERK_active  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(14) *k_ERKactive_PP2A_ERK_deactivationBy_PP2A*(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))/((power(KM_ERKactive_PP2A_ERK_deactivationBy_PP2A,n_ERKactive_PP2A_ERK_deactivationBy_PP2A))+(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))) + (-1)*(1)* (( x(8) *k_P90Rsk_ERKActive_p* x(20) )/(KM_P90Rsk_ERKActive_p+ x(20) )) + (1)*(1)* (( x(6) *k_ERK_MekActive_ERK_activationBy_Mek* x(7) )/(KM_ERK_MekActive_ERK_activationBy_Mek+ x(7) )) + (1)*(1)* (( x(8) *k_P90Rsk_ERKActive_p* x(20) )/(KM_P90Rsk_ERKActive_p+ x(20) )) );
	
//x(9)   ID: IGFR_active  initialValue: 800
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(9) *k_A_SOS_I_SOS_activationBy_IGF*(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))/((power(KM_A_SOS_I_SOS_activationBy_IGF,n_A_SOS_I_SOS_activationBy_IGF))+(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))) + (-1)*(1)* (( x(9) *k_PI3K_IGF1R_PI3KCA_activationBy_IGF1R*(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))/((power(KM_PI3K_IGF1R_PI3KCA_activationBy_IGF1R,n_PI3K_I_PI3KCA_activationBy_IGF1R))+(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))) + (-1)*(1)* (gamma_IGFR_p* x(9) ) + (1)*(1)* (( x(9) *k_A_SOS_I_SOS_activationBy_IGF*(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))/((power(KM_A_SOS_I_SOS_activationBy_IGF,n_A_SOS_I_SOS_activationBy_IGF))+(power( x(2) ,n_A_SOS_I_SOS_activationBy_IGF)))) + (1)*(1)* (( x(9) *k_PI3K_IGF1R_PI3KCA_activationBy_IGF1R*(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))/((power(KM_PI3K_IGF1R_PI3KCA_activationBy_IGF1R,n_PI3K_I_PI3KCA_activationBy_IGF1R))+(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))) );
	
//x(10)   ID: PI3KCA  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(9) *k_PI3K_IGF1R_PI3KCA_activationBy_IGF1R*(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))/((power(KM_PI3K_IGF1R_PI3KCA_activationBy_IGF1R,n_PI3K_I_PI3KCA_activationBy_IGF1R))+(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))) + (-1)*(1)* (( x(1) *k_PI3K_EGF1R_PI3KCA_activationBy_EGF* x(1) *(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))/((power(KM_PI3K_EGF1R_PI3KCA_activationBy_EGF,n_PI3K_E_PI3KCA_activationBy_EGF))+(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))) + (-1)*(1)* (( x(5) *k_PI3K_Ras_PI3KCA_activationBy_kRas*(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))/((power(KM_PI3K_Ras_PI3KCA_activationBy_kRas,n_PI3K_Ras_PI3KCA_activationBy_kRas))+(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))) + (1)*(1)* (kd_PI3K_a_p* x(11) ) );
	
//x(11)   ID: PI3KCA_active  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(11) *k_AKT_PI3K_Akt_activationBy_PI3KCA*(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))/((power(KM_AKT_PI3K_Akt_activationBy_PI3KCA,n_AKT_PI3K_Akt_activationBy_PI3KCA))+(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))) + (-1)*(1)* (kd_PI3K_a_p* x(11) ) + (1)*(1)* (( x(9) *k_PI3K_IGF1R_PI3KCA_activationBy_IGF1R*(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))/((power(KM_PI3K_IGF1R_PI3KCA_activationBy_IGF1R,n_PI3K_I_PI3KCA_activationBy_IGF1R))+(power( x(10) ,n_PI3K_I_PI3KCA_activationBy_IGF1R)))) + (1)*(1)* (( x(1) *k_PI3K_EGF1R_PI3KCA_activationBy_EGF* x(1) *(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))/((power(KM_PI3K_EGF1R_PI3KCA_activationBy_EGF,n_PI3K_E_PI3KCA_activationBy_EGF))+(power( x(10) ,n_PI3K_E_PI3KCA_activationBy_EGF)))) + (1)*(1)* (( x(11) *k_AKT_PI3K_Akt_activationBy_PI3KCA*(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))/((power(KM_AKT_PI3K_Akt_activationBy_PI3KCA,n_AKT_PI3K_Akt_activationBy_PI3KCA))+(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))) + (1)*(1)* (( x(5) *k_PI3K_Ras_PI3KCA_activationBy_kRas*(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))/((power(KM_PI3K_Ras_PI3KCA_activationBy_kRas,n_PI3K_Ras_PI3KCA_activationBy_kRas))+(power( x(10) ,n_PI3K_Ras_PI3KCA_activationBy_kRas)))) );
	
//x(12)   ID: AKT_active  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (kd_AKT_Akt_deactivation* x(12) ) + (-1)*(1)* (( x(12) *k_Raf_AKT_Raf_deactivationBy_Akt*(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))/((power(KM_Raf_AKT_Raf_deactivationBy_Akt,n_Raf_AKT_Raf_deactivationBy_Akt))+(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))) + (1)*(1)* (( x(11) *k_AKT_PI3K_Akt_activationBy_PI3KCA*(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))/((power(KM_AKT_PI3K_Akt_activationBy_PI3KCA,n_AKT_PI3K_Akt_activationBy_PI3KCA))+(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))) + (1)*(1)* (( x(12) *k_Raf_AKT_Raf_deactivationBy_Akt*(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))/((power(KM_Raf_AKT_Raf_deactivationBy_Akt,n_Raf_AKT_Raf_deactivationBy_Akt))+(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))) );
	
//x(13)   ID: AKT  initialValue: 600000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(11) *k_AKT_PI3K_Akt_activationBy_PI3KCA*(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))/((power(KM_AKT_PI3K_Akt_activationBy_PI3KCA,n_AKT_PI3K_Akt_activationBy_PI3KCA))+(power( x(13) ,n_AKT_PI3K_Akt_activationBy_PI3KCA)))) + (1)*(1)* (kd_AKT_Akt_deactivation* x(12) ) );
	
//x(14)   ID: PP2A  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(14) *k_ERKactive_PP2A_ERK_deactivationBy_PP2A*(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))/((power(KM_ERKactive_PP2A_ERK_deactivationBy_PP2A,n_ERKactive_PP2A_ERK_deactivationBy_PP2A))+(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))) + (-1)*(1)* (( x(14) *k_MekActivePP2A_Mek_deactivation*(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))/((power(KM_MekActivePP2A_Mek_deactivation,n_MekActivePP2A_Mek_deactivation))+(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))) + (1)*(1)* (( x(14) *k_ERKactive_PP2A_ERK_deactivationBy_PP2A*(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))/((power(KM_ERKactive_PP2A_ERK_deactivationBy_PP2A,n_ERKactive_PP2A_ERK_deactivationBy_PP2A))+(power( x(8) ,n_ERKactive_PP2A_ERK_deactivationBy_PP2A)))) + (1)*(1)* (( x(14) *k_MekActivePP2A_Mek_deactivation*(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))/((power(KM_MekActivePP2A_Mek_deactivation,n_MekActivePP2A_Mek_deactivation))+(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))) );
	
//x(15)   ID: Ras  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(3) *k_Ras_SOS_kRas_Activation*(power( x(15) ,n_Ras_SOS_kRas_Activation)))/((power(KM_Ras_SOS_kRas_Activation,n_Ras_SOS_kRas_Activation))+(power( x(15) ,n_Ras_SOS_kRas_Activation)))) + (1)*(1)* (( x(18) *k_RasActiveRasGap_Ras_deactivation*(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))/((power(KM_RasActiveRasGap_Ras_deactivation,n_RasActiveRasGap_Ras_deactivation))+(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))) );
	
//x(16)   ID: Raf_active  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(16) *k_Mek_PP2A_Mek_activationBy_Raf*(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))/((power(KM_MekPP2A_Mek_activationBy_Raf,n_Mek_PP2A_Mek_activationBy_Raf))+(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))) + (-1)*(1)* (( x(12) *k_Raf_AKT_Raf_deactivationBy_Akt*(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))/((power(KM_Raf_AKT_Raf_deactivationBy_Akt,n_Raf_AKT_Raf_deactivationBy_Akt))+(power( x(16) ,n_Raf_AKT_Raf_deactivationBy_Akt)))) + (-1)*(1)* (( x(19) *k_RasActive_RafPP_Raf_deactivation*(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))/((power(KM_RasActive_RafPP_Raf_deactivation,n_RasActive_RafPP_Raf_deactivation))+(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))) + (1)*(1)* (( x(5) *k_Raf_RasActive_Raf_activationBy_kRas*(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))/(KM_Raf_RasActive_Raf_activationBy_kRas+(power( x(4) ,n_Raf_RasActive_Raf_activationBy_kRas)))) + (1)*(1)* (( x(16) *k_Mek_PP2A_Mek_activationBy_Raf*(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))/((power(KM_MekPP2A_Mek_activationBy_Raf,n_Mek_PP2A_Mek_activationBy_Raf))+(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))) );
	
//x(17)   ID: Mek  initialValue: 600000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(16) *k_Mek_PP2A_Mek_activationBy_Raf*(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))/((power(KM_MekPP2A_Mek_activationBy_Raf,n_Mek_PP2A_Mek_activationBy_Raf))+(power( x(17) ,n_Mek_PP2A_Mek_activationBy_Raf)))) + (1)*(1)* (( x(14) *k_MekActivePP2A_Mek_deactivation*(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))/((power(KM_MekActivePP2A_Mek_deactivation,n_MekActivePP2A_Mek_deactivation))+(power( x(6) ,n_MekActivePP2A_Mek_deactivation)))) );
	
//x(18)   ID: RasGapActive  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(18) *k_RasActiveRasGap_Ras_deactivation*(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))/((power(KM_RasActiveRasGap_Ras_deactivation,n_RasActiveRasGap_Ras_deactivation))+(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))) + (1)*(1)* (( x(18) *k_RasActiveRasGap_Ras_deactivation*(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))/((power(KM_RasActiveRasGap_Ras_deactivation,n_RasActiveRasGap_Ras_deactivation))+(power( x(5) ,n_RasActiveRasGap_Ras_deactivation)))) );
	
//x(19)   ID: RafPP  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(19) *k_RasActive_RafPP_Raf_deactivation*(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))/((power(KM_RasActive_RafPP_Raf_deactivation,n_RasActive_RafPP_Raf_deactivation))+(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))) + (1)*(1)* (( x(19) *k_RasActive_RafPP_Raf_deactivation*(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))/((power(KM_RasActive_RafPP_Raf_deactivation,n_RasActive_RafPP_Raf_deactivation))+(power( x(16) ,n_RasActive_RafPP_Raf_deactivation)))) );
	
//x(20)   ID: P90RskInactive  initialValue: 120000
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(8) *k_P90Rsk_ERKActive_p* x(20) )/(KM_P90Rsk_ERKActive_p+ x(20) )) + (1)*(1)* (kd_P90Rsk_P90_deactivation* x(21) ) );
	
//x(21)   ID: P90Rsk_Active  initialValue: 0
	(1/compartment_cell_nsclc)*( (-1)*(1)* (( x(21) *k_D_SOS_P90Rsk_SOS_deactivationBy_P90*(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))/((power(KM_D_SOS_P90Rsk_SOS_deactivationBy_P90,n_D_SOS_SOS_deactivationBy_P90))+(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))) + (-1)*(1)* (kd_P90Rsk_P90_deactivation* x(21) ) + (1)*(1)* (( x(21) *k_D_SOS_P90Rsk_SOS_deactivationBy_P90*(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))/((power(KM_D_SOS_P90Rsk_SOS_deactivationBy_P90,n_D_SOS_SOS_deactivationBy_P90))+(power( x(3) ,n_D_SOS_SOS_deactivationBy_P90)))) + (1)*(1)* (( x(8) *k_P90Rsk_ERKActive_p* x(20) )/(KM_P90Rsk_ERKActive_p+ x(20) )) )
	];


	
endfunction
        x0=[8000;120000;0;120000;0;0;600000;0;800;120000;0;0;600000;120000;120000;0;600000;120000;120000;120000;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21])

//real_variable:
	
	
//x(1)   id: EGFR_active  initialValue: 8000
	
//x(2)   id: D_SOS  initialValue: 120000
	
//x(3)   id: A_SOS  initialValue: 0
	
//x(4)   id: Raf  initialValue: 120000
	
//x(5)   id: Ras_active  initialValue: 0
	
//x(6)   id: Mek_active  initialValue: 0
	
//x(7)   id: ERK  initialValue: 600000
	
//x(8)   id: ERK_active  initialValue: 0
	
//x(9)   id: IGFR_active  initialValue: 800
	
//x(10)   id: PI3KCA  initialValue: 120000
	
//x(11)   id: PI3KCA_active  initialValue: 0
	
//x(12)   id: AKT_active  initialValue: 0
	
//x(13)   id: AKT  initialValue: 600000
	
//x(14)   id: PP2A  initialValue: 120000
	
//x(15)   id: Ras  initialValue: 120000
	
//x(16)   id: Raf_active  initialValue: 0
	
//x(17)   id: Mek  initialValue: 600000
	
//x(18)   id: RasGapActive  initialValue: 120000
	
//x(19)   id: RafPP  initialValue: 120000
	
//x(20)   id: P90RskInactive  initialValue: 120000
	
//x(21)   id: P90Rsk_Active  initialValue: 0