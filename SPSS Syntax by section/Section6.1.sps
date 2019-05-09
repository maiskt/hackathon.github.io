* Encoding: UTF-8.

*Section 6.1.

*18Bangladesh.
compute YEAR=2018.
compute COUNTRY=Bangladesh.

compute ACCESS_BANK=0.
IF fn1_1=1 or fn1_2=1 or fn1_3=1 ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF fn1_2=1 or fn1_3=1 REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF fn1_6<=4 ACTIVE_BANK=1.

*18India.
compute YEAR=2018.
compute COUNTRY=India.

compute ACCESS_BANK=0.
IF FN1_1=1 or FN1_2=1 or FN1_3=1 ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF fn1_2=1 or fn1_3=1 REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF fn1_6<=4 ACTIVE_BANK=1.


*17Bangladesh.
compute YEAR=2017.
compute COUNTRY=Bangladesh.

compute ACCESS_BANK=0.
IF (FF4=1 or ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1)) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=4) ACTIVE_BANK=1.

*17India.
compute YEAR=2017.
compute COUNTRY=India.

compute ACCESS_BANK=0.
IF (FF1=1 or FF1A=1 or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 or FF1A=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF9<=4) ACTIVE_BANK=1.

*17Kenya.
compute YEAR=2017.
compute COUNTRY=Kenya.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF1A=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) ACTIVE_BANK=1.


*17Nigeria.
compute YEAR=2017.
compute COUNTRY=Nigeria.

compute ACCESS_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1  or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1) or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ( (ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1  or ff1d_8=1 or ff1d_9=1 or ff1d_10=1
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1)) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1  or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1) and FF9<=4) ACTIVE_BANK=1.


*17Paksitan.
compute YEAR=2017.
compute COUNTRY=Paksitan.

compute ACCESS_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=4) ACTIVE_BANK=1.

*17Tanzania.
compute YEAR=2017.
compute COUNTRY=Tanzania.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF1A=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) ACTIVE_BANK=1.


*17Uganda.
compute YEAR=2017.
compute COUNTRY=Uganda.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF1A=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) ACTIVE_BANK=1.


*16Bangladesh.
compute YEAR=2016.
compute COUNTRY=Bangladesh.

compute ACCESS_BANK=0.
IF (FF1=1 or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF9<=4) ACTIVE_BANK=1.

*16India.
compute YEAR=2016.
compute COUNTRY=Inida.

compute ACCESS_BANK=0.
IF (FF1=1 or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF FF1=1 REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=4) ACTIVE_BANK=1.


*16Indonesia.
compute YEAR=2016.
compute COUNTRY=Indonesia.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.


*16Kenya.
*Section 6.1.
compute YEAR=2016.
compute COUNTRY=Kenya.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.

*16Nigeria.
compute YEAR=2016.
compute COUNTRY=Nigeria.

compute ACCESS_BANK=0.
IF (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1) REGISTERED_BANK=1.

*16Pakistan.
compute YEAR=2016.
compute COUNTRY=Pakistan.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.

*16Tanzania.
compute YEAR=2016.
compute COUNTRY=Tanzania.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.


*16Uganda.
*Section 6.1.
compute YEAR=2016.
compute COUNTRY=Uganda.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.


*15Bangladesh.
compute YEAR=2015.
compute COUNTRY=Bangladesh.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

*15India.
compute YEAR=2015.
compute COUNTRY=India.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

*15Indonesia.
compute YEAR=2015.
compute COUNTRY=Indonesia.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).


*15Kenya.
compute YEAR=2015.
compute COUNTRY=Kenya.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

*15Nigeria.
compute YEAR=2015.
compute COUNTRY=Nigeria.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

*15Pakistan.
compute YEAR=2015.
compute COUNTRY=Pakistan.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

*15Tanzania.
compute YEAR=2015.
compute COUNTRY=Tanzania.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

*15Uganda.
compute YEAR=2015.
compute COUNTRY=Uganda.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

*14Bangladesh.
compute YEAR=2014.
compute COUNTRY=Bangladesh.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

*14India.
compute YEAR=2014.
compute COUNTRY=India.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

*14Indonesia.
compute YEAR=2014.
compute COUNTRY=Indonesia.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

*14Kenya.
compute YEAR=2014.
compute COUNTRY=Kenya.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).


*14Nigeria.
compute YEAR=2014.
compute COUNTRY=Nigeria.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).


*14Pakistan.
compute YEAR=2014.
compute COUNTRY=Pakistan.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).



*14Tanzania.
compute YEAR=2014.
compute COUNTRY=Tanzania.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).


*14Uganda.
compute YEAR=2014.
compute COUNTRY=Uganda.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).


*13Bangladesh.
compute YEAR=2013.
compute COUNTRY=Bangladesh.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).


*13India.
compute YEAR=2013.
compute COUNTRY=India.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).


*13Kenya.
compute YEAR=2013.
compute COUNTRY=Kenya.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).


*13Nigeria.
compute YEAR=2013.
compute COUNTRY=Nigeria.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).


*13Pakistan.
compute YEAR=2013.
compute COUNTRY=Pakistan.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).


*13Tanzania.
compute YEAR=2013.
compute COUNTRY=Tanzaina.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).


*13Uganda.
compute YEAR=2013.
compute COUNTRY=Uganda.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).



*****************************************************************************************************************************.
*Labels.
value labels ACCESS_BANK 1"Yes" 0"No".

value labels REGISTERED_BANK 1"Yes" 0"No".

