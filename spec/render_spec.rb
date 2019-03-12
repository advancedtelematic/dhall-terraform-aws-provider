require 'render'
require 'structs'

describe Render do
  field = Field.new('some_field', 'Set(String)', true, false)

  it 'renders type field correctly' do
    expect(Render.render_dhall_field(field, 'bar')).to eq('some_field : Optional (List Text)')
  end

  it 'renders default field correctly' do
    expect(Render.render_none_field(field, 'bar')).to eq('some_field = None (List Text)')
  end
end
