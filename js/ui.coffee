---
---

jQuery ->
  jQuery('.page-share .share-btns a').click (evt)->
    $ps = jQuery('.page-share')

    bShare.addEntry
      summary: jQuery('.page-project-info .desc').text()
      pic: $ps.data('image')
      url: $ps.data('url')
     
    _for = jQuery(this).data('for')

    if _for is 'more'
      bShare.more evt
    else 
      bShare.share evt, _for