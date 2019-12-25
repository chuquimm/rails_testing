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

  def form_text_area_field(form, field_name, autofocus = false)
    render  partial: 'shared_form_partials/text_area_field',
            locals: {
              form: form,
              model_name: form.object.model_name.i18n_key.to_s,
              field_name: field_name,
              autofocus: autofocus
            }
  end

  def form_checkbox_field_in_switch(form, field_name)
    render  partial: 'shared_form_partials/checkbox_field_in_switch',
            locals: {
              form: form,
              model_name: form.object.model_name.i18n_key.to_s,
              field_name: field_name
            }
  end

  def form_select_field_prompt(form, field_name, select_options, selected_option, autofocus = false, field_name_validation = nil)
    render  partial: 'shared_form_partials/select_field_prompt',
            locals: {
              form: form,
              model_name: form.object.model_name.i18n_key.to_s,
              field_name: field_name,
              field_name_validation: field_name_validation || field_name,
              select_options: select_options,
              selected_option: selected_option,
              autofocus: autofocus
            }
  end

  def form_select_options(elements, field_value, field_text)
    elements.map { |e| [e.instance_eval(field_text), e.instance_eval(field_value)] }
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
