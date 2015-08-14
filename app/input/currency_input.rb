class CurrencyInput < SimpleForm::Inputs::Base
  def input
    %(<div class="input-append">#{@builder.text_field(attribute_name, input_html_options)}<div class="add-on">#{I18n.t('number.currency.format.unit')}</div></div>).html_safe
  end
end
