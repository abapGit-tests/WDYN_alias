METHOD onactionbtn_download .

  DATA: lv_content                    TYPE xstring.
  DATA: lv_filename                   TYPE string.

  lv_filename = 'abapgitbug_wdyn_otr.txt'.
  lv_content = cl_abap_codepage=>convert_to( 'Bug Web Dynpro OTR' ).
  CALL METHOD cl_wd_runtime_services=>attach_file_to_response
    EXPORTING
      i_filename      = lv_filename
      i_content       = lv_content
      i_mime_type     = 'text/plain'
      i_in_new_window = abap_false
      i_inplace       = abap_false.

ENDMETHOD.

method WDDOAFTERACTION .
endmethod.

method WDDOBEFOREACTION .
*  data lo_api_controller type ref to if_wd_view_controller.
*  data lo_action         type ref to if_wd_action.

*  lo_api_controller = wd_this->wd_get_api( ).
*  lo_action = lo_api_controller->get_current_action( ).

*  if lo_action is bound.
*    case lo_action->name.
*      when '...'.

*    endcase.
*  endif.
endmethod.

method WDDOEXIT .
endmethod.

method WDDOINIT .
endmethod.

method WDDOMODIFYVIEW .
endmethod.

method WDDOONCONTEXTMENU .
endmethod.

