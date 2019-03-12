require 'render'
require 'structs'

describe Render do
  it 'renders type field correctly' do
    field = Field.new('some_field', 'Set(String)', true, false)
    expect(Render.render_dhall_field(field)).to eq('some_field: Optional (List Text)')
  end
end
