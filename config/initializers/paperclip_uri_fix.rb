# Patch Paperclip's use of URI.escape which was removed in Ruby 3.x
require 'paperclip'

module Paperclip
  class UrlGenerator
    private

    def escape_url(url)
      if url.respond_to?(:escape)
        url.escape
      else
        URI::DEFAULT_PARSER.escape(url).gsub(/[\?\(\)\[\]\+]/) { |m| "%#{m.ord.to_s(16).upcase}" }
      end
    end
  end
end
