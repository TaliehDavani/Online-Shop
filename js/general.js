function openVideoView($_this) {
    var video_url =$($_this).attr("data-i");
    Swal.fire({
      html: '<iframe width="640" height="360" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen src="' + video_url + '"></iframe>',
      imageAlt: 'bande annonce',
      showCloseButton: true,
      animation: true,
    })
    $('.swal2-modal').css("width","700px");

}