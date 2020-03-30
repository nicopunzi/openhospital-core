ALTER TABLE MEDICALDSRWARD 
ADD COLUMN MDSRWRD_LT_ID_A VARCHAR(50) NULL AFTER MDSRWRD_OUT_QTI,
ADD INDEX FK_LOT (MDSRWRD_LT_ID_A ASC);
ALTER TABLE MEDICALDSRWARD 
ADD CONSTRAINT FK_MEDICALDSRWARD_MEDICALDSRLOT
  FOREIGN KEY (MDSRWRD_LT_ID_A)
  REFERENCES MEDICALDSRLOT (LT_ID_A)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



ALTER TABLE MEDICALDSRSTOCKMOVWARD 
ADD COLUMN MMVN_LT_ID VARCHAR(50) NULL AFTER MMVN_WRD_ID_A_TO,
ADD INDEX FK_FK_MEDICALDSRSTOCKMOVWARD_LOT (MMVN_LT_ID ASC);
ALTER TABLE MEDICALDSRSTOCKMOVWARD 
ADD CONSTRAINT FK_MEDICALDSRSTOCKMOVWARD_LOT
  FOREIGN KEY (MMVN_LT_ID)
  REFERENCES MEDICALDSRLOT (LT_ID_A)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
