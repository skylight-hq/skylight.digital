<script type="text/javascript">
  $( document ).ready(function() {
    $('button.btn-copy-hex').click(function(){

      let btn = $(this)
      let text = btn.siblings('.hex-val').text().toUpperCase();
      let original_text = btn.attr('data-original-title')

      btn.attr('data-original-title', 'Copied!')
          .tooltip('show');
      navigator.clipboard.writeText(text);

      setTimeout(function(){
        btn.attr('data-original-title', original_text)
        btn.tooltip('hide');
      }, 1500);
    })
  });
</script>
