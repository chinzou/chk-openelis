DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Determine(Plasma)' )  and sample_type_id =  (select id from type_of_sample where description = 'Plasma') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Determine(Plasma)' )  ,    (select id from type_of_sample where description = 'Plasma')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Determine(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Determine(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Determine(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Determine(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Bioline(Plasma)' )  and sample_type_id =  (select id from type_of_sample where description = 'Plasma') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Bioline(Plasma)' )  ,    (select id from type_of_sample where description = 'Plasma')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Bioline(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Bioline(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Bioline(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Bioline(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Stat PaK(Plasma)' )  and sample_type_id =  (select id from type_of_sample where description = 'Plasma') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Stat PaK(Plasma)' )  ,    (select id from type_of_sample where description = 'Plasma')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Stat PaK(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Stat PaK(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Stat PaK(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Stat PaK(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'D??nombrement des lymphocytes CD4 (mm3)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'D??nombrement des lymphocytes CD4 (mm3)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'D??nombrement des lymphocytes  CD4 (%)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'D??nombrement des lymphocytes  CD4 (%)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Transaminases GPT (37??C)(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Transaminases GPT (37??C)(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Transaminases G0T (37??C)(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Transaminases G0T (37??C)(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Glucose(Plasma)' )  and sample_type_id =  (select id from type_of_sample where description = 'Plasma') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Glucose(Plasma)' )  ,    (select id from type_of_sample where description = 'Plasma')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Glucose(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Glucose(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Cr??atinine(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Cr??atinine(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Amylase(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Amylase(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Albumine recherche miction(Urines)' )  and sample_type_id =  (select id from type_of_sample where description = 'Urines') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Albumine recherche miction(Urines)' )  ,    (select id from type_of_sample where description = 'Urines')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Cholest??rol total(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Cholest??rol total(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Cholest??rol HDL(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Cholest??rol HDL(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Triglyc??rides(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Triglyc??rides(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Mesure de la charge virale(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Mesure de la charge virale(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Prolans (BHCG) urines de 24 h(Urines)' )  and sample_type_id =  (select id from type_of_sample where description = 'Urines') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Prolans (BHCG) urines de 24 h(Urines)' )  ,    (select id from type_of_sample where description = 'Urines')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Num??ration des globules blancs(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Num??ration des globules blancs(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Num??ration des globules rouges(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Num??ration des globules rouges(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'H??moglobine(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'H??moglobine(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'H??motocrite(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'H??motocrite(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Volume Globulaire Moyen(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Volume Globulaire Moyen(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Teneur Corpusculaire Moyenne en H??moglobine(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Teneur Corpusculaire Moyenne en H??moglobine(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Concentration Corpusculaire Moyenne en H??moglobine(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Concentration Corpusculaire Moyenne en H??moglobine(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Plaquette(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Plaquette(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Polynucl??aires Neutrophiles (%)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Polynucl??aires Neutrophiles (%)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Polynucl??aires Neutrophiles (Abs)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Polynucl??aires Neutrophiles (Abs)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Polynucl??aires Eosinophiles (%)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Polynucl??aires Eosinophiles (%)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Polynucl??aires Eosinophiles (Abs)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Polynucl??aires Eosinophiles (Abs)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Polynucl??aires basophiles (%)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Polynucl??aires basophiles (%)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Polynucl??aires basophiles (Abs)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Polynucl??aires basophiles (Abs)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Lymphocytes (%)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Lymphocytes (%)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Lymphocytes (Abs)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Lymphocytes (Abs)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Monocytes (%)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Monocytes (%)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Monocytes (Abs)(Sang total)' )  and sample_type_id =  (select id from type_of_sample where description = 'Sang total') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Monocytes (Abs)(Sang total)' )  ,    (select id from type_of_sample where description = 'Sang total')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'HBs AG (antig??n australia)(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'HBs AG (antig??n australia)(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Test urinaire de grossesse(Urines)' )  and sample_type_id =  (select id from type_of_sample where description = 'Urines') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Test urinaire de grossesse(Urines)' )  ,    (select id from type_of_sample where description = 'Urines')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Prot??inurie sur bandelette(Urines)' )  and sample_type_id =  (select id from type_of_sample where description = 'Urines') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Prot??inurie sur bandelette(Urines)' )  ,    (select id from type_of_sample where description = 'Urines')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Genie II(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Genie II(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Genie II(Plasma)' )  and sample_type_id =  (select id from type_of_sample where description = 'Plasma') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Genie II(Plasma)' )  ,    (select id from type_of_sample where description = 'Plasma')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Genie II 1/10(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Genie II 1/10(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Genie II 1/10(Plasma)' )  and sample_type_id =  (select id from type_of_sample where description = 'Plasma') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Genie II 1/10(Plasma)' )  ,    (select id from type_of_sample where description = 'Plasma')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Genie II 1/100(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Genie II 1/100(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Genie II 1/100(Plasma)' )  and sample_type_id =  (select id from type_of_sample where description = 'Plasma') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Genie II 1/100(Plasma)' )  ,    (select id from type_of_sample where description = 'Plasma')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Vironstika(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Vironstika(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Murex(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Murex(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Integral(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Integral(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Western blot 1(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Western blot 1(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'Western blot 2(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'Western blot 2(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'p24Ag(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'p24Ag(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
DELETE from clinlims.sampletype_test where test_id =  (select id from test where description = 'DNA PCR(Serum)' )  and sample_type_id =  (select id from type_of_sample where description = 'Serum') ;
INSERT INTO clinlims.sampletype_test (id, test_id , sample_type_id) VALUES 
	(nextval( 'sample_type_test_seq' ) , (select id from test where description = 'DNA PCR(Serum)' )  ,    (select id from type_of_sample where description = 'Serum')  );
