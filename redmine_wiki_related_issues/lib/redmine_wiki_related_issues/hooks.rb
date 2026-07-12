module RedmineWikiRelatedIssues
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_layouts_base_content,
              partial: 'redmine_wiki_related_issues/wiki_issues'

    render_on :view_layouts_base_html_head,
              partial: 'redmine_wiki_related_issues/checkbox'
  end
end
