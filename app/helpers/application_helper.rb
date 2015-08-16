module ApplicationHelper
  def company_link(target)
    if target == @account
      target.company
    else
      link_to target.company, account_relations_path(target)
    end
  end
end
