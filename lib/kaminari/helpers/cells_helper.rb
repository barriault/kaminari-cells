require 'cells'
require 'kaminari/helpers/helper_methods'
require 'kaminari/cells/version'
require 'action_view/helpers'
require 'cell/partial'

module Kaminari
  module Helpers
    module CellsHelper
      include Kaminari::Helpers::HelperMethods
      include ActionView::Helpers::OutputSafetyHelper
      include ActionView::Helpers::TranslationHelper
      include Cell::ViewModel::Partial

      def paginate(scope, paginator_class: Kaminari::Helpers::Paginator, template: nil, **options)
        options = options.reverse_merge(views_prefix: '../views/')
        super
      end
    end
  end
end
