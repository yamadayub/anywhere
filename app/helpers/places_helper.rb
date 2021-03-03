module PlacesHelper
  def video(opts)
  iframe = content_tag(
    :iframe,
    '', # empty body
    width: 1120,
    height: 700,
    src: "https://www.youtube.com/embed/#{opts[:video_id]}",
    frameborder: 0,
    allowfullscreen: true,
    class: "youtube"
  )
  content_tag(:div, iframe, class: 'youtube-container')
  end
end
