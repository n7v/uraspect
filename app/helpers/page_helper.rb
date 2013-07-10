module PageHelper
  def raw_short_content_for(object)
    raw truncate_html object.content, length: 200, omission: "..."
  end
end
