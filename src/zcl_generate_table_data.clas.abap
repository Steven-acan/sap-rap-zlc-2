CLASS zcl_generate_table_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_table_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " delete existing entries in the database table
    DELETE FROM ztb_early_number.

    COMMIT WORK.



    " insert travel demo data
    DATA: lt_temp TYPE TABLE OF ztb_early_number.
    lt_temp = VALUE #(  ( nameid = 1 nametext = 'StevenAcan' age = 40 ) ).

    MODIFY ztb_early_number FROM TABLE @lt_temp.

    COMMIT WORK.
*
*
    out->write( 'Data inserted.' ).


  ENDMETHOD.
ENDCLASS.
