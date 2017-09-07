require 'liquid'
require 'jekyll-pseudocode/version'
require 'jekyll-pseudocode/grammar'
require 'jekyll-pseudocode/html_brush'

module Jekyll
  class PseudoCodeBlock < Liquid::Block
    def initialize(tag_name, text, tokens)
      super
      @brush = PseudoCode::HtmlBrush.new
      @grammar = PseudoCode::Grammar.new
    end

    def render(context)
      @text = super
      @formatted = @grammar.format(@text, @brush)
      "<div class='pseudocode'>#{@formatted}</div>"
    end
  end
end


Liquid::Template.register_tag('pseudocode', Jekyll::PseudoCodeBlock)
