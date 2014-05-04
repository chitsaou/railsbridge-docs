
# Flag icons borrowed from https://www.gosquared.com/resources/flag-icons/
# Put them in public/flags
class Flags < Erector::Widget

  # swiped from DocPage -- todo: unify
  def self.css_path
    here = File.expand_path File.dirname(__FILE__)
    File.expand_path "#{here}/../public/css"
  end

  external :style, scss(File.read("#{css_path}/flags.scss"))

  def initialize *args
    super
    @locales = ["us", "es", "zh-tw"]
  end

  def content
    ul.flags do
      @locales.each do |locale|
        subdomain = (locale == "us" ? "docs" : locale)
        li {
          a(href:"http://#{subdomain}.railsbridge.org") {
            img src: "/flags/#{locale.upcase}.png"
          }
        }
      end
    end
  end
end
