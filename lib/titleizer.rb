module Titleizer
  def self.title_for_page site_name, page_name
    I18n.t!(page_name, :scope => "pages.#{site_name}")
  rescue I18n::MissingTranslationData
    self.title_from_page_name(page_name)
  end

  def self.title_from_page_name page_name
    to_be_upcased = %w(
      rvm
      ssh
      dvd
      crud
      mvc
      html
      argv
    )

    to_be_lowercased = %w(
      irb
      nil
    )

    special_cases = {
      'osx' => 'OS X'
    }

    page_name.split(/[-_]/).map do |w|
      if to_be_upcased.include?(w.downcase)
        w.upcase
      elsif to_be_lowercased.include?(w.downcase)
        w.downcase
      elsif special_cases.include?(w)
        special_cases[w]
      else
        w.capitalize
      end
    end.join(' ')
  end
end
