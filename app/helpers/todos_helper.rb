module TodosHelper
  def filter_class(filter)
    # TODO, hint use `params[:scope]` to determine if the `selected` class should be added.
    def filter_class(filter)
      'selected' if params[:scope] == filter
    end
  end
end
