require 'redcarpet'
require 'sinatra'

markdown = Redcarpet::Markdown.new(
  Redcarpet::Render::HTML.new(prettify: true, escape_html: true),
  autolink: true,
  tables: true,
  no_intra_emphasis: true,
  fenced_code_blocks: true,
  disable_indented_code_blocks: true,
  strikethrough: true,
  space_after_headers: true,
  underline: true,
  highlight: true,
  quote: true
)

get '/' do
  haml :index, format: :html5
end

get '/test' do
  markdown.render('This is *bongos*, indeed.')
end
