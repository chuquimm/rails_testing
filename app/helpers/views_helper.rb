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

  def show_field_html_safe(label, value)
    render  partial: 'shared_partials/show_field',
            locals: {
              label: label,
              value: value
            }
  end

  def show_field_yes_no_label(label, value)
    render  partial: 'shared_partials/show_field_yes_no_label',
            locals: {
              label: label,
              value: value
            }
  end

  def yes_no_label(value)
    render  partial: 'shared_partials/' + (value ? 'yes' : 'no') + '_label'
  end

  def destroy_link_class
    'btn btn-danger btn-sm'
  end
end
