--------------------------------------------------------
--  File creato - martedì-settembre-12-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORIE
--------------------------------------------------------

  CREATE TABLE "TRAVELDB"."CATEGORIE" 
   (	"ID_CATEGORIA" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOME_CATEGORIA" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FAVORITI
--------------------------------------------------------

  CREATE TABLE "TRAVELDB"."FAVORITI" 
   (	"POST_ID" NUMBER(19,0), 
	"UTENTE_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table IMMAGINI
--------------------------------------------------------

  CREATE TABLE "TRAVELDB"."IMMAGINI" 
   (	"ID_IMMAGINE" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"POST_ID" NUMBER(19,0), 
	"URL" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POSTS
--------------------------------------------------------

  CREATE TABLE "TRAVELDB"."POSTS" 
   (	"DATA" DATE, 
	"ID_POST" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"UTENTE_ID" NUMBER(19,0), 
	"TITOLO" VARCHAR2(255 CHAR), 
	"CONTENUTO" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAGS
--------------------------------------------------------

  CREATE TABLE "TRAVELDB"."TAGS" 
   (	"CATEGORIA_ID" NUMBER(19,0), 
	"POST_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UTENTI
--------------------------------------------------------

  CREATE TABLE "TRAVELDB"."UTENTI" 
   (	"ID_UTENTE" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"COGNOME" VARCHAR2(255 CHAR), 
	"EMAIL" VARCHAR2(255 CHAR), 
	"NOME" VARCHAR2(255 CHAR), 
	"PASSWORD" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TRAVELDB.CATEGORIE
SET DEFINE OFF;
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('1','Natura');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('2','Città');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('81','Europa');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('82','Africa');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('83','Oceania');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('84','Asia');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('85','America del Nord');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('86','America del Sud');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('87','America Centrale');
Insert into TRAVELDB.CATEGORIE (ID_CATEGORIA,NOME_CATEGORIA) values ('88','Antartide');
REM INSERTING into TRAVELDB.FAVORITI
SET DEFINE OFF;
Insert into TRAVELDB.FAVORITI (POST_ID,UTENTE_ID) values ('171','1');
Insert into TRAVELDB.FAVORITI (POST_ID,UTENTE_ID) values ('170','82');
Insert into TRAVELDB.FAVORITI (POST_ID,UTENTE_ID) values ('191','82');
Insert into TRAVELDB.FAVORITI (POST_ID,UTENTE_ID) values ('169','82');
Insert into TRAVELDB.FAVORITI (POST_ID,UTENTE_ID) values ('170','2');
Insert into TRAVELDB.FAVORITI (POST_ID,UTENTE_ID) values ('169','2');
REM INSERTING into TRAVELDB.IMMAGINI
SET DEFINE OFF;
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('108','170','https://c4.wallpaperflare.com/wallpaper/910/110/347/roma-italy-sunset-city-wallpaper-preview.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('129','191','https://www.pimpmytrip.it/wp-content/uploads/2019/12/deserto-merzouga.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('107','169','https://stories.weroad.it/wp-content/uploads/2019/12/Pura-Lempuyang-1024x683.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('261','321','https://www.turismo.it/typo3temp/pics/7403ec2cb0.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('112','174','https://www.viaggi-usa.it/wp-content/uploads/2013/11/Grand-Canyon-in-un-giorno-cosa-vedere-2.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('104','164','https://img.peapix.com/2457709cc72142d08c5831bf011aaa32.jpg?attachment&modal');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('106','167','https://images2.alphacoders.com/479/479474.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('109','171','https://besthqwallpapers.com/Uploads/27-4-2018/50302/venice-4k-canal-street-hdr.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('110','172','https://images2.alphacoders.com/707/707504.jpg');
Insert into TRAVELDB.IMMAGINI (ID_IMMAGINE,POST_ID,URL) values ('111','173','https://media.istockphoto.com/id/1008574568/it/foto/acropoli-di-atene-al-tramonto-con-un-bellissimo-cielo-drammatico.jpg?b=1&s=612x612&w=0&k=20&c=qqR3qafFK98mU66FIf8gB69Q0QJb2zsOcRrUjI8CquA=');
REM INSERTING into TRAVELDB.POSTS
SET DEFINE OFF;
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('19-LUG-23','DD-MON-RR'),'170','2','Roma','Roma, la città eterna, è una delle mete turistiche più affascinanti al mondo. Situata nel cuore dell''Italia, la sua storia millenaria e il patrimonio culturale la rendono una tappa imperdibile per ogni viaggiatore.

Nel centro di Roma, si erge l''iconico Colosseo, simbolo del potere e della grandezza dell''Impero Romano. Passeggiando per le strade ci si immerge nell''atmosfera unica della Città del Vaticano, con la magnificenza della Basilica di San Pietro e i capolavori della Cappella Sistina di Michelangelo.

Roma è una sinfonia di architetture antiche e moderne. Si possono ammirare gli imponenti resti del Foro Romano, passeggiare tra i suggestivi vicoli del quartiere Trastevere e ammirare la maestosità del Pantheon. Ogni angolo racconta una storia diversa, svelando i segreti di un passato glorioso.

La cucina romana è un''esperienza a sé stante. Gustare un autentico piatto di pasta carbonara o una pizza cotta nel forno a legna è un piacere per il palato. Non si può rinunciare a una tazza di caffè espresso o a un gelato artigianale durante la passeggiata per la città.

Roma è anche una città vivace e moderna, con negozi alla moda, caffetterie alla moda e una vibrante vita notturna. Gli amanti dello shopping troveranno soddisfazione tra le boutique di alta moda di Via Condotti.

In conclusione, Roma è un connubio di storia, arte, cultura e cucina deliziosa. Una visita a questa magnifica città regala emozioni uniche e indimenticabili. Chiunque abbia la fortuna di esplorare le sue meraviglie, sarà conquistato dalla magia senza tempo della Città Eterna.');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('22-AGO-23','DD-MON-RR'),'191','82','Deserto di Merzouga, Marrakech','<p><strong>Il Deserto di Merzouga, situato nel sud-est del Marocco, &egrave; una distesa di sabbia dorata e maestose dune che incanta i visitatori con la sua bellezza surreale. </strong>Questo magico paesaggio desertico offre un''esperienza indimenticabile e autentica nel cuore dell''Africa del Nord. Le alte dune ondulate creano un''atmosfera unica al tramonto, quando il cielo si tinge di sfumature arancioni e rosa, offrendo uno spettacolo mozzafiato. I visitatori del Deserto di Merzouga possono immergersi nella cultura berbera, interagendo con le comunit&agrave; locali e sperimentando la loro ospitalit&agrave; calorosa. I safari in cammello sono una delle attivit&agrave; imperdibili per esplorare il deserto e pernottare in autentici accampamenti berberi sotto un cielo stellato incantevole. Oltre alla bellezza naturale, il deserto offre un senso di tranquillit&agrave; e riflessione, consentendo ai viaggiatori di staccare dalla frenesia della vita quotidiana e ritrovare un equilibrio interiore. Con il vento che crea onde perfette sulla sabbia, il Deserto di Merzouga &egrave; un luogo di meditazione e connessione con la natura. Indubbiamente, una visita al Deserto di Merzouga &egrave; un''esperienza senza tempo, in cui la magnificenza del paesaggio si fonde con l''anima dei viaggiatori, lasciando un''impronta indelebile nei loro ricordi e nel loro cuore.</p>');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('26-AGO-23','DD-MON-RR'),'169','82','Isola di Bali','<p><em>L''<strong>isola di Bali</strong> &egrave; un paradiso tropicale che incanta i visitatori con la sua bellezza naturale,</em> la sua cultura vibrante e le sue spiagge mozzafiato. S<span style="text-decoration: underline;">ituata in Indonesia, Bali &egrave; una delle destinazioni turistiche maggiormente popolari al mondo.</span> Le spiagge di Bali sono senza dubbio uno dei suoi punti di forza. Immagini di sabbia dorata, acque cristalline e onde perfette vengono subito alla mente. Luoghi come Kuta, Seminyak e Nusa Dua offrono una vasta gamma di attivit&agrave; come il surf, il nuoto e il semplice relax al sole. Bali &egrave; anche famosa per i suoi tramonti spettacolari, che si possono ammirare da spiagge come Uluwatu e Tanah Lot. Oltre alle splendide spiagge, Bali offre una ricca cultura e tradizioni affascinanti. I templi e i santuari tradizionali, come il Tempio di Besakih e il Tempio di Uluwatu, sono luoghi di grande importanza religiosa e regalano una vista panoramica mozzafiato. I visitatori possono anche esplorare i pittoreschi villaggi di Ubud, noto come il centro artistico e culturale dell''isola, e sperimentare l''arte, la danza e la musica tradizionali balinesi. Bali &egrave; anche una mecca per gli amanti della natura. L''isola &egrave; circondata da paesaggi mozzafiato, tra cui risaie terrazzate, foreste lussureggianti e montagne maestose. Le visite a luoghi come il Monte Batur e le Cascate di Tegenungan offrono un''esperienza di immersione nella bellezza naturale dell''isola. La cucina balinese &egrave; un''altra attrazione imperdibile. I ristoranti locali offrono una vasta selezione di piatti tradizionali, come il famoso babi guling (maiale arrosto) e il nasi goreng (riso fritto), oltre a una variet&agrave; di delizie a base di pesce fresco. In conclusione, Bali &egrave; un''isola magica che offre un mix unico di bellezze naturali, cultura affascinante e ospitalit&agrave; calorosa. Sia che tu voglia rilassarti sulle spiagge, esplorare la cultura balinese o immergerti nella natura incontaminata, Bali &egrave; il luogo ideale per una vacanza indimenticabile.</p>');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('19-LUG-23','DD-MON-RR'),'173','1','Atene','
Atene, la capitale della Grecia, è una città affascinante che fonde in modo unico la magnificenza del suo patrimonio storico con la vivacità di una metropoli moderna. Con una storia che risale a migliaia di anni, Atene è considerata il cuore della civiltà occidentale e culla della democrazia.

La vista iconica dell''Acropoli domina l''orizzonte di Atene, con il Partenone che troneggia maestoso, testimone di un''epoca passata di splendore artistico e architettonico. Passeggiando nel quartiere storico di Plaka, ci si immerge in un labirinto di stradine acciottolate, costellate di taverne tradizionali, boutique artigianali e caffetterie pittoresche.

La modernità si fonde con l''antichità nel quartiere di Monastiraki, con il suo vivace mercato delle pulci e l''atmosfera animata che riflette il lato contemporaneo di Atene. Gli amanti dell''arte e della cultura troveranno soddisfazione nei numerosi musei, tra cui l''acclamato Museo dell''Acropoli.

Atene è anche una città gioiosa, con una vivace vita notturna che si concentra nei quartieri di Psiri e Gazi, dove si possono gustare prelibatezze locali e ballare fino all''alba.

Inoltre, la cucina greca è una delizia per il palato, con i suoi piatti tradizionali come moussaka, souvlaki e dolci al miele.

Con il mix unico di storia, cultura, gastronomia e animazione urbana, Atene è una destinazione imperdibile per ogni viaggiatore in cerca di un''esperienza autentica e affascinante nella culla della civiltà occidentale.');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('19-LUG-23','DD-MON-RR'),'174','1','Il Gran Canyon','
Il Gran Canyon, situato nello stato dell''Arizona negli Stati Uniti, è un''imponente meraviglia naturale che incanta e affascina i visitatori di tutto il mondo. Scavato dal fiume Colorado nel corso di milioni di anni, questo spettacolare canyon si estende per oltre 400 chilometri di lunghezza e raggiunge profondità mozzafiato di oltre 1.600 metri.

Le sue pareti rocciose stratificate mostrano una vasta gamma di colori, dai toni ocra al rosso acceso, mentre la luce del sole danza sulle sue superfici creando giochi di luce e ombre straordinari.

Il Gran Canyon offre una serie di punti panoramici spettacolari, come il South Rim e il North Rim, da cui i visitatori possono godere di panorami mozzafiato e ammirare la vastità e la maestosità del paesaggio.

Per i più avventurosi, ci sono numerose escursioni e percorsi trekking che permettono di esplorare le profondità del canyon e scoprire angoli nascosti della sua bellezza naturale.

Questo spettacolo della natura è un''esperienza unica e indimenticabile, capace di affascinare sia i viaggiatori appassionati di avventura che coloro che cercano semplicemente di contemplare la grandiosità della Terra. Il Gran Canyon rimane una destinazione imperdibile per tutti coloro che desiderano immergersi nella meraviglia di uno dei luoghi naturali più spettacolari del pianeta.');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('16-SET-23','DD-MON-RR'),'341',null,'Oslo','Sono andato ad Oslo e fa freddo');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('06-SET-23','DD-MON-RR'),'321','82','Lisbonadhgf','<p><strong>Lisbona: La Bellezza Storica e Culturale sulle Rive del Tago</strong></p>
<p><em>Lisbona, la capitale del Portogallo, &egrave; una citt&agrave; che incanta con la sua bellezza storica, la cultura vibrante e la sua posizione affacciata sul fiume Tago.</em> Questa citt&agrave;, con una storia ricca e affascinante, &egrave; un luogo dove il passato si mescola armoniosamente con il presente, offrendo ai visitatori un''esperienza unica.</p>
<p><strong>Storia e Patrimonio</strong></p>
<p>La storia di Lisbona risale a oltre 2.500 anni fa quando era conosciuta come Olisipo, una citt&agrave; fondata dagli antichi Fenici. Nel corso dei secoli, &egrave; stata dominata dai Romani, dai Visigoti e dagli Arabi prima di essere riconquistata dai cristiani nel XII secolo. Questa ricca storia si riflette nella sua architettura e nei suoi monumenti.</p>
<p>Il quartiere di Alfama &egrave; un labirinto di strade strette, vicoli acciottolati e case colorate, testimonianza del passato medievale della citt&agrave;. Al centro dell''Alfama si trova il Castelo de S&atilde;o Jorge, un''antica fortezza che offre una vista panoramica mozzafiato sulla citt&agrave; e sul fiume.</p>
<p>Il quartiere di Bel&eacute;m &egrave; un altro luogo imperdibile per gli amanti della storia. Qui, &egrave; possibile visitare il Monastero dos Jer&oacute;nimos, un capolavoro dell''architettura manuelina, e la Torre di Bel&eacute;m, un''imponente fortezza che si erge sull''acqua.</p>
<p>Arte e Cultura</p>
<p>Lisbona &egrave; anche un centro culturale vibrante. Il Museo Nazionale d''Arte Antica ospita una vasta collezione di opere d''arte portoghesi, tra cui dipinti, sculture e tessuti. Il Museo Calouste Gulbenkian &egrave; un altro punto di riferimento per gli amanti dell''arte, con una collezione eclettica che spazia dalle antichit&agrave; alle opere contemporanee.</p>
<p>La musica fado &egrave; una parte intrinseca della cultura lisboeta. Questo genere musicale tradizionale e malinconico si esegue spesso in piccoli locali, noti come "fado houses", in cui i cantanti esprimono le emozioni pi&ugrave; profonde attraverso le loro voci e le chitarre portoghesi.</p>
<p>Cucina e Gastronomia</p>
<p>La cucina di Lisbona &egrave; un vero e proprio viaggio culinario. I piatti di pesce fresco, come la bacalhau &agrave; br&aacute;s (merluzzo con uova e patate) e il grilled sardines (sarde grigliate), sono piatti tradizionali che delizieranno il vostro palato. Non dimenticate di assaporare i famosi past&eacute;is de nata, dolci a base di crema pasticcera e pasta sfoglia, che si trovano in tutto il paese ma che a Lisbona raggiungono l''apice della bont&agrave;.</p>
<p>Lisbona Contemporanea</p>
<p>Oltre alla sua storia, Lisbona &egrave; anche una citt&agrave; moderna e cosmopolita. Il quartiere di Chiado &egrave; un vivace centro culturale con negozi di moda, caffetterie alla moda e una vibrante vita notturna. Il quartiere Parque das Na&ccedil;&otilde;es &egrave; un esempio di architettura contemporanea e ospita il famoso Oceanario, uno dei pi&ugrave; grandi acquari interni del mondo.</p>
<p>La Bellezza Naturale di Lisbona</p>
<p>La citt&agrave; &egrave; anche circondata da una splendida bellezza naturale. A breve distanza si trova la localit&agrave; balneare di Cascais, con le sue spiagge dorate e le scogliere impressionanti. Il Parco Naturale di Sintra-Cascais offre paesaggi mozzafiato, con foreste lussureggianti e antichi castelli.</p>
<p>In conclusione, Lisbona &egrave; una citt&agrave; che incanta con la sua storia, la sua cultura, la sua cucina e la sua bellezza naturale. Con il suo mix unico di tradizione e modernit&agrave;, &egrave; un luogo che merita sicuramente di essere esplorato e scoperto. Lisbona, con il suo affascinante passato e il suo futuro promettente, rimane un tesoro sulle rive del Tago.</p>');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('11-SET-23','DD-MON-RR'),'377','2','giulia@email.com342','ciao come stai');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('11-SET-23','DD-MON-RR'),'378','1','mario@email.com342','ciao come stai');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('19-LUG-23','DD-MON-RR'),'167','82','Le Cascate del Niagara','Le cascate del Niagara sono una meraviglia naturale senza pari, situata al confine tra il Canada e gli Stati Uniti. Questo spettacolo straordinario di potenza e bellezza attira visitatori da tutto il mondo, offrendo un''esperienza indimenticabile. Le cascate del Niagara si compongono di tre diverse cascate: la cascata Horseshoe, la cascata American e la cascata Bridal Veil. La cascata Horseshoe è la più grande e impressionante, con un''enorme cortina d''acqua che si estende per oltre 670 metri. L''acqua si precipita con una forza travolgente, creando un fragore assordante e generando spettacolari nubi di nebbia. La vista delle cascate del Niagara è semplicemente mozzafiato. L''energia e la potenza delle acque che si schiantano contro le rocce creano un''atmosfera carica di emozione. I visitatori possono avvicinarsi alle cascate grazie a ponti sospesi e passerelle panoramiche, consentendo loro di ammirare da vicino questo spettacolo naturale. Le cascate del Niagara offrono anche molte opportunità di esplorazione e divertimento. È possibile prendere una barca e navigare fino alla base delle cascate, immergendosi nella nebbia e godendo di un panorama spettacolare. Ci sono anche numerose attrazioni turistiche nelle vicinanze, tra cui parchi tematici, casinò, ristoranti e negozi. Oltre alla loro bellezza visiva, le cascate del Niagara rappresentano anche una risorsa idrica vitale per la regione circostante. L''energia idroelettrica generata dalle cascate alimenta gran parte dell''elettricità consumata nella zona. In definitiva, le cascate del Niagara sono un''attrazione imperdibile per i viaggiatori che desiderano essere testimoni di uno spettacolo naturale stupefacente. La loro maestosità e la loro bellezza eterna catturano l''immaginazione e lasciano un''impressione duratura su chi le visita.');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('03-AGO-23','DD-MON-RR'),'164','82','La Valle di Göreme','<p><strong>La valle di G&ouml;reme</strong>, situata nella regione della Cappadocia in Turchia, &egrave; un luogo magico che sembra uscito da un sogno. Questa valle incantevole &egrave; famosa per le sue formazioni rocciose uniche al mondo e per le affascinanti abitazioni scavate nella roccia chiamate "fairy chimney" (camini delle fate). La valle di G&ouml;reme offre uno scenario spettacolare, con colonne di roccia levigata che si ergono come giganti silenziosi. Queste straordinarie formazioni geologiche sono state scolpite nel corso dei secoli dall''erosione, creando una miriade di forme stravaganti e surreali. &Egrave; un vero spettacolo naturale che sembra provenire da un mondo fantastico. Questa valle &egrave; anche famosa per le sue chiese rupestri e monasteri. All''interno delle rocce, sono presenti antiche chiese riccamente decorate con affreschi risalenti al periodo bizantino. Questi tesori artistici testimoniano la ricca storia della regione e la presenza di una comunit&agrave; monastica attiva in passato. La valle di G&ouml;reme offre anche opportunit&agrave; di avventura e esplorazione. I visitatori possono fare escursioni a piedi o in bicicletta lungo i sentieri che attraversano la valle, scoprendo angoli nascosti e panorami mozzafiato lungo il percorso. &Egrave; anche possibile vivere l''esperienza unica di volare in mongolfiera al mattino presto, ammirando dall''alto la bellezza spettacolare di questa valle incantata. Inoltre, G&ouml;reme &egrave; un luogo dove si possono immergere nella cultura locale. Ci sono negozi di artigianato dove &egrave; possibile acquistare prodotti tradizionali come tappeti, ceramiche e tessuti. I ristoranti offrono piatti deliziosi della cucina turca, permettendo ai visitatori di gustare i sapori autentici della regione. In sintesi, la valle di G&ouml;reme &egrave; un luogo di bellezza senza tempo, un vero tesoro della natura e della storia. &Egrave; un luogo che affascina e incanta i visitatori con le sue formazioni rocciose uniche, le chiese rupestri e l''atmosfera magica. Una visita a questa valle &egrave; un''esperienza indimenticabile che lascer&agrave; un''impronta duratura nella memoria di chi la vive.</p>');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('19-LUG-23','DD-MON-RR'),'171','2','Venezia','Venezia, la città dei canali e dei ponti, è un luogo incantevole che incanta i visitatori con la sua bellezza senza tempo. Situata nella Laguna Veneta, al nord-est dell''Italia, questa città unica è una delle mete turistiche più romantiche e affascinanti al mondo.

Venezia è famosa per i suoi canali pittoreschi, dove eleganti gondolieri conducono passeggeri tra affascinanti palazzi, antiche chiese e maestosi ponti. La Piazza San Marco è il cuore pulsante della città, dominata dalla magnifica Basilica di San Marco, con le sue pregevoli decorazioni e mosaici bizantini.

Un''esperienza imperdibile è il Carnevale di Venezia, quando le strade si animano di maschere e costumi elaborati, trasportando i visitatori in un mondo di magia e mistero.

L''arte e la cultura sono tesori inestimabili di Venezia, con musei come la Galleria dell''Accademia e il Palazzo Ducale che ospitano opere d''arte di inestimabile valore.

Gli amanti della cucina apprezzeranno le specialità veneziane, come i cicchetti, piccoli stuzzichini da gustare accompagnati da un bicchiere di vino locale.

Venezia è una città unica al mondo, un luogo dove il romanticismo si fonde con la storia e l''arte, e dove ogni angolo racchiude un''emozione senza tempo. Una visita a questa città magica rimarrà per sempre nel cuore di chiunque abbia la fortuna di esplorarla.');
Insert into TRAVELDB.POSTS (DATA,ID_POST,UTENTE_ID,TITOLO,CONTENUTO) values (to_date('19-LUG-23','DD-MON-RR'),'172','1','La Grande Muraglia Cinese','La Grande Muraglia Cinese, uno dei monumenti più iconici e straordinari della storia dell''umanità, incanta i visitatori con la sua grandiosità e antichità. Situata nel nord della Cina, questa maestosa opera architettonica si estende per oltre 21.000 chilometri, abbracciando paesaggi montuosi e pianure pittoresche.

Costruita per proteggere l''antico impero cinese da invasioni e incursioni, la Grande Muraglia è una testimonianza dell''ingegno e della maestria dei popoli cinesi nel corso dei secoli. I visitatori possono passeggiare lungo i suoi camminamenti e ammirare le imponenti torri di guardia, offrendo una vista spettacolare sulle valli sottostanti e i panorami mozzafiato.

Ogni sezione della muraglia ha la sua unica atmosfera e storia, da Jiankou con i suoi tratti selvaggi e pittoreschi, a Badaling che è una delle sezioni più accessibili e frequentate dai turisti.

Oltre alla sua rilevanza storica, la Grande Muraglia è circondata da miti e leggende, dando vita a una sensazione di mistero e fascino. La visita a questo monumento straordinario è un''esperienza unica che offre una connessione con il passato e un''apprezzamento per l''ingegnosità e la perseveranza dell''antica civiltà cinese. Una tappa imprescindibile per i viaggiatori che vogliono immergersi nella grandezza di un patrimonio mondiale senza tempo.');
REM INSERTING into TRAVELDB.TAGS
SET DEFINE OFF;
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('2','170');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('1','169');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('1','164');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('81','321');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('2','171');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('82','191');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('1','167');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('1','172');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('2','173');
Insert into TRAVELDB.TAGS (CATEGORIA_ID,POST_ID) values ('1','174');
REM INSERTING into TRAVELDB.UTENTI
SET DEFINE OFF;
Insert into TRAVELDB.UTENTI (ID_UTENTE,COGNOME,EMAIL,NOME,PASSWORD) values ('241','Arancione','valearancione@gmail.com','Valeriano','abcd');
Insert into TRAVELDB.UTENTI (ID_UTENTE,COGNOME,EMAIL,NOME,PASSWORD) values ('82','Mari','gemelli.95@hotmail.it','Federico','Wanderlust_2023');
Insert into TRAVELDB.UTENTI (ID_UTENTE,COGNOME,EMAIL,NOME,PASSWORD) values ('1','Rossi','mario@email.com','Mario','password123');
Insert into TRAVELDB.UTENTI (ID_UTENTE,COGNOME,EMAIL,NOME,PASSWORD) values ('2','Verdi','giulia@email.com','Giulia','securepassword');
--------------------------------------------------------
--  DDL for Procedure P_EXISTS_WRITER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TRAVELDB"."P_EXISTS_WRITER" (IN_WRITER NUMBER, P_OUTPUT OUT VARCHAR2)
IS
    V_NUMBER_WRITERS VARCHAR2(50);
BEGIN
    SELECT p.titolo INTO V_NUMBER_WRITERS
      FROM POSTS p
      WHERE p.utente_id = IN_WRITER;
      P_OUTPUT := V_NUMBER_WRITERS;
EXCEPTION
    WHEN NO_DATA_FOUND THEN P_OUTPUT := 'No Data Output';
    WHEN OTHERS THEN P_OUTPUT := 'Others';
END P_EXISTS_WRITER;

/
--------------------------------------------------------
--  DDL for Procedure P_INSERT_POST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TRAVELDB"."P_INSERT_POST" 
IS

CURSOR cur IS

 SELECT u.id_utente, u.email
  FROM UTENTI u
  WHERE u.id_utente IN (1,2); --RESTITUISCE 2 RECORD SU CUI IL CURSORE ITERA

--TYPE P_UTENTI_LIST IS TABLE OF UTENTI%ROWTYPE; ERRORE SI PRENDE TUTTI I CAMPI DI UN UTENTE
--V_UTENTE P_UTENTI_LIST;
TYPE P_UTENTE_ID IS TABLE OF UTENTI.id_utente%TYPE;
TYPE P_UTENTE_EMAIL IS TABLE OF UTENTI.email%TYPE;

V_P_UTENTE_ID P_UTENTE_ID;
V_P_UTENTE_EMAIL P_UTENTE_EMAIL;

BEGIN

 OPEN cur;
  LOOP
    FETCH cur --passa al dato successivo
    BULK COLLECT INTO V_P_UTENTE_ID, V_P_UTENTE_EMAIL; --OGGETTO IN CUI VERRA' SALVATO IL RECORD CORRENTE
    EXIT WHEN V_P_UTENTE_ID.COUNT = 0;

    --FOR PERMETTE MODIFICHE, FORALL NO
    FORALL I IN V_P_UTENTE_ID.FIRST..V_P_UTENTE_ID.LAST SAVE EXCEPTIONS
        INSERT INTO POSTS p (p.data, /*p.id_post,*/ p.utente_id, p.titolo, p.contenuto)
        VALUES (to_date(SYSDATE,'DD-MM-YYYY'), 
               --(SELECT MAX(p2.id_post)+1  FROM POSTS p2 ),
               V_P_UTENTE_ID(i),
               V_P_UTENTE_EMAIL(i) || (SELECT MAX(p2.id_post)+1  FROM POSTS p2 ),
               'ciao come stai'
        );

        COMMIT;

    EXIT WHEN cur%NOTFOUND;

  END LOOP;

 CLOSE cur; 

END;

/
--------------------------------------------------------
--  DDL for Procedure P_SELECT_POST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "TRAVELDB"."P_SELECT_POST" 
IS

CURSOR cur IS

 SELECT u.nome
  FROM UTENTI u
  WHERE u.id_utente IN (1,2);

TYPE P_UTENTE IS TABLE OF UTENTI%ROWTYPE;

V_UTENTE P_UTENTE;

--TYPE P_POSTS IS TABLE OF POSTS%ROWTYPE;

--V_POSTS_LIST P_POSTS;

V_NOME VARCHAR2(20);
V_POST NUMBER;


BEGIN

 OPEN cur;
  LOOP
    FETCH cur INTO V_NOME; --passa al dato successivo
    --BULK COLLECT INTO V_UTENTE;
    --EXIT WHEN V_UTENTE.COUNT = 0;
    
    DBMS_OUTPUT.PUT_LINE(V_NOME);
    --EXIT WHEN cur%rowcount <= 2;
        
    
    /*SELECT COUNT(0) INTO V_POST
     FROM POSTS p
     WHERE p.utente_id = V_NOME;*/
     
     --DBMS_OUTPUT.PUT_LINE(V_NOME); 
    
    EXIT WHEN cur%NOTFOUND;    

  END LOOP;

 CLOSE cur;

END;

/
--------------------------------------------------------
--  DDL for Procedure P_SELECT_POST_NUOVO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "TRAVELDB"."P_SELECT_POST_NUOVO" 
IS


 BEGIN

 FOR i IN ( SELECT *
             FROM UTENTI u
             WHERE u.id_utente IN (1,2)
 )
 LOOP
    DBMS_OUTPUT.PUT_LINE(i.nome || ' ' || I.EMAIL);
 END LOOP;


 END;

/
--------------------------------------------------------
--  DDL for Function F_EXISTS_WRITER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "TRAVELDB"."F_EXISTS_WRITER" (IN_WRITER NUMBER) RETURN VARCHAR2
IS
    V_NUMBER_WRITERS VARCHAR2(50);
BEGIN
    SELECT p.titolo INTO V_NUMBER_WRITERS
      FROM POSTS p
      WHERE p.utente_id = IN_WRITER;
      RETURN V_NUMBER_WRITERS;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN 'No Data Found'; 
    WHEN OTHERS THEN RETURN 'Other Errors'; --QUALSIASI ALTRO ERRORE
END F_EXISTS_WRITER;

SELECT F_EXISTS_WRITER(1) TITOLO FROM DUAL;
SELECT F_EXISTS_WRITER(2) TITOLO FROM DUAL;
SELECT F_EXISTS_WRITER(102) TITOLO FROM DUAL;


CREATE OR REPLACE PROCEDURE P_EXISTS_WRITER(IN_WRITER NUMBER, P_OUTPUT OUT VARCHAR2)
IS
    V_NUMBER_WRITERS VARCHAR2(50);
BEGIN
    SELECT p.titolo INTO V_NUMBER_WRITERS
      FROM POSTS p
      WHERE p.utente_id = IN_WRITER;
      P_OUTPUT := V_NUMBER_WRITERS;
EXCEPTION
    WHEN NO_DATA_FOUND THEN P_OUTPUT := 'No Data Output';
    WHEN OTHERS THEN P_OUTPUT := 'Others';
END P_EXISTS_WRITER;


DECLARE
  IN_WRITER NUMBER;
  P_OUTPUT VARCHAR2(200);
BEGIN
  IN_WRITER := 2; --CAMBIO INPUT
  P_OUTPUT := 'PIPPO'; --CAMBIO INPUT


  TRAVELDB.P_EXISTS_WRITER(
    IN_WRITER => IN_WRITER,
    P_OUTPUT => P_OUTPUT
  );

  --:P_OUTPUT := P_OUTPUT; SE NON COMMENTI PRENDE NULL 

  DBMS_OUTPUT.PUT_LINE('P_OUTPUT: ' || P_OUTPUT); --CONSOLE.LOG
--rollback; 
END;


CREATE OR REPLACE EDITIONABLE PROCEDURE P_SELECT_POST 
IS

CURSOR cur IS

 SELECT u.id_utente, u.email
  FROM UTENTI u
  WHERE u.id_utente IN (1,2);

TYPE P_UTENTE IS TABLE OF UTENTI%ROWTYPE;

BEGIN

 OPEN cur;
  LOOP
    FETCH cur --passa al dato successivo
    BULK COLLECT INTO P_UTENTE;
    EXIT WHEN P_UTENTE.COUNT = 0;

    --FOR PERMETTE MODIFICHE, FORALL NO
    FORALL I IN P_UTENTE.FIRST..P_UTENTE.LAST SAVE EXCEPTIONS
	SELECT * 
	 FROM POSTS p
	 WHERE p.utente_id = P_UTENTE.id_utente;

    EXIT WHEN cur%NOTFOUND;

  END LOOP;

 CLOSE cur; 

END;



SELECT u.id_utente
  FROM UTENTI u
  WHERE u.id_utente IN (1,2);






































/
--------------------------------------------------------
--  Constraints for Table CATEGORIE
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."CATEGORIE" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."CATEGORIE" ADD PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TRAVELDB"."CATEGORIE" ADD UNIQUE ("NOME_CATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table IMMAGINI
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."IMMAGINI" MODIFY ("ID_IMMAGINE" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."IMMAGINI" ADD PRIMARY KEY ("ID_IMMAGINE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UTENTI
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."UTENTI" MODIFY ("ID_UTENTE" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."UTENTI" MODIFY ("COGNOME" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."UTENTI" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."UTENTI" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."UTENTI" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."UTENTI" ADD PRIMARY KEY ("ID_UTENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TRAVELDB"."UTENTI" ADD UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FAVORITI
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."FAVORITI" MODIFY ("POST_ID" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."FAVORITI" MODIFY ("UTENTE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSTS
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."POSTS" MODIFY ("ID_POST" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."POSTS" MODIFY ("TITOLO" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."POSTS" ADD PRIMARY KEY ("ID_POST")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TRAVELDB"."POSTS" ADD UNIQUE ("TITOLO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAGS
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."TAGS" MODIFY ("CATEGORIA_ID" NOT NULL ENABLE);
  ALTER TABLE "TRAVELDB"."TAGS" MODIFY ("POST_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FAVORITI
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."FAVORITI" ADD CONSTRAINT "HAS_PST" FOREIGN KEY ("POST_ID")
	  REFERENCES "TRAVELDB"."POSTS" ("ID_POST") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TRAVELDB"."FAVORITI" ADD CONSTRAINT "HAS_USR" FOREIGN KEY ("UTENTE_ID")
	  REFERENCES "TRAVELDB"."UTENTI" ("ID_UTENTE") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IMMAGINI
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."IMMAGINI" ADD CONSTRAINT "IN_PST" FOREIGN KEY ("POST_ID")
	  REFERENCES "TRAVELDB"."POSTS" ("ID_POST") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSTS
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."POSTS" ADD CONSTRAINT "HAS_WRT" FOREIGN KEY ("UTENTE_ID")
	  REFERENCES "TRAVELDB"."UTENTI" ("ID_UTENTE") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TAGS
--------------------------------------------------------

  ALTER TABLE "TRAVELDB"."TAGS" ADD CONSTRAINT "HAS_CTG" FOREIGN KEY ("CATEGORIA_ID")
	  REFERENCES "TRAVELDB"."CATEGORIE" ("ID_CATEGORIA") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TRAVELDB"."TAGS" ADD CONSTRAINT "OF_PST" FOREIGN KEY ("POST_ID")
	  REFERENCES "TRAVELDB"."POSTS" ("ID_POST") ON DELETE CASCADE ENABLE;
