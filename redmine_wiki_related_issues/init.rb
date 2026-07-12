Redmine::Plugin.register :redmine_wiki_related_issues do
  name 'Redmine Wiki Related Issues plugin'
  author 'chris'
  description 'Shows related issues on wiki pages with a toggle setting'
  version '1.0.0'
  url ''
  author_url ''  
  requires_redmine :version_or_higher => '5.1.1'

  settings default: { 'default_show_related_issues' => '1' },
           partial: 'settings/redmine_wiki_related_issues_settings'
end

Redmine::WikiFormatting::Macros.register do
  desc "Hides related issues on wiki pages"
  macro :no_related_issues do |obj, args|
    ''
  end

  desc "Shows related issues on wiki pages"
  macro :show_related_issues do |obj, args|
    ''
  end
end

require File.expand_path('lib/redmine_wiki_related_issues/hooks', __dir__)
