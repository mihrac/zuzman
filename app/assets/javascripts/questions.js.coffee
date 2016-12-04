jQuery ->
  subcat = $('#sub_category-select').html()
  $('#category-select').change ->
    cat = jQuery('#category-select').children('option').filter(':selected').text()
    options = $(sub_cat).filter("optgroup[label='#{cat}']").html()
    if options
      $('#sub_category-select').html(options)
    else
      $('#sub_category-select').empty()