
  CREATE TABLE CAMPAIGNTEMPLATECUSTOM 
   (	CAMPAIGNID NUMBER(11,0) NOT NULL, 
	TEMPLATECUSTOMID NUMBER(11,0) NOT NULL, 
	 CONSTRAINT CAMPAIGNTEMPLATECUSTOM_PK PRIMARY KEY (TEMPLATECUSTOMID, CAMPAIGNID),  
	 CONSTRAINT CAMPAIGNTEMPLATECUSTOM_TC_FK FOREIGN KEY (TEMPLATECUSTOMID)
	  REFERENCES TEMPLATECUSTOM (TEMPLATECUSTOMID), 
	 CONSTRAINT CAMPAIGNTEMPLATECUSTOM_CAMP_FK FOREIGN KEY (CAMPAIGNID)
	  REFERENCES CAMPAIGNS (CAMPAIGNID) 
   );