# frozen_string_literal: true

# Views helper
module ViewsHelper
  def go_back_link(go_back_url)
    render  partial: '/shared_partials/go_back_link',
            locals: {
              go_back_url: go_back_url
            }
  end

  def show_field(label, value)
    render  partial: 'shared_partials/show_field',
            locals: {
              label: label,
              value: value
            }
  end

  def destroy_link_class
    'btn btn-danger btn-sm'
  end
end
