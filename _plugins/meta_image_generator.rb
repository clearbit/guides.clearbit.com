# coding: utf-8
# Makes social images

require 'open-uri'
require 'imgix'

module Jekyll
  class SocialImageTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def imgix_client
      @imgix_client ||= Imgix::Client.new(host: 'assets.imgix.net')
    end

    def social_image_url(title,url)
      url = "https://guides.clearbit.com/#{url.gsub('index.html', '')}" || 'https://guides.clearbit.com'
      image = "/unsplash/transport.jpg"
      canvas_background_color = '3386EE'
      text_color = 'FFFFFF'

      imgix_client.path(image).to_url(
        mark64: imgix_client.path('/~text').to_url(
          txt64: (title || "").strip,
          txtclr: text_color,
          w: 560,
          txtfont64: 'Avenir Next,Bold',
          txtsize: 48,
          txtalign: 'middle,left',
          h: 500
        ),
        bm: 'normal',
        bx: 60,
        ba: 'bottom',
        exp: -10,
        txt64: url,
        txtalign: 'left,bottom',
        txtsize: 14,
        txtclr: text_color,
        txtpad: 60,
        txtclip: 'end,ellipsis',
        by: 300,
        txtfont64: 'Avenir Next Medium',
        fm: 'png8',
        markx: 70,
        marky: 28,
        w: 700,
        h: 700,
        fit: 'crop',
        mono: canvas_background_color,
        blend: "CC#{canvas_background_color}",
        bg: canvas_background_color
      )
    end

    def render(context)
      title = page_url = context.environments.first["page"]["title"]
      url = page_url = context.environments.first["page"]["path"]
      social_image_url(title,url)
    end
  end
end

Liquid::Template.register_tag('social_image', Jekyll::SocialImageTag)
