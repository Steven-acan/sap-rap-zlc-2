CLASS lhc_ZI_DEMO_RAP_ERALY_NUMBERIN DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_demo_rap_eraly_numbering RESULT result.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_demo_rap_eraly_numbering RESULT result.

    METHODS earlynumbering_create FOR NUMBERING
      IMPORTING entities FOR CREATE zi_demo_rap_eraly_numbering.

ENDCLASS.

CLASS lhc_ZI_DEMO_RAP_ERALY_NUMBERIN IMPLEMENTATION.



  METHOD get_instance_authorizations.

  ENDMETHOD.


  METHOD earlynumbering_create.

    TYPES: lty_char5 TYPE c LENGTH 5.

    SELECT SINGLE
    FROM ztb_early_number
    FIELDS MAX( nameid )
    INTO @DATA(dobj).

    LOOP AT entities INTO DATA(entity).

      dobj += 1.

      dobj = CONV lty_char5( dobj ).

      APPEND VALUE #(
          %cid      = entity-%cid
          id = dobj
        ) TO mapped-zi_demo_rap_eraly_numbering.

    ENDLOOP.

  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.
