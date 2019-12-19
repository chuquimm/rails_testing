# frozen_string_literal: true

# Form helper
module FormHelper
  def field_with_errors(form, key)
    form.object.errors.key?(key) ? 'is-invalid' : ''
  end

  def form_text_field(form, field_name, autofocus = false)
    render  partial: 'shared_form_partials/text_field',
            locals: {
              form: form,
              model_name: form.object.model_name.i18n_key.to_s,
              field_name: field_name,
              autofocus: autofocus
            }
  end

  def form_check_box(form, field_name, autofocus = false)
    render  partial: 'shared_form_partials/check_box',
            locals: {
              form: form,
              model_name: form.object.model_name.i18n_key.to_s,
              field_name: field_name,
              autofocus: autofocus
            }
  end
end
