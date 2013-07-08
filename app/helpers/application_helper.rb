# Encoding: utf-8
module ApplicationHelper
  def cp(path)
    "active" if current_page?(path)
  end

  def seo_meta_tags
    if @page && @page.seo
      "<meta name='description' content='#{@page.seo.description}' />"+
      "<meta name='author' content='' />"+
      "<title>#{@page.seo.title}</title>"
    end
  end
end
