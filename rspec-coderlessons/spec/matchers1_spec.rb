describe 'An example of the type/class Matchers' do
  it 'should show how the type/class Matchers work' do
    x = 1
    y = 3.14
    z = 'test string'

    # The following Expectations will all pass
    expect(x).to be_instance_of Integer
    expect(x).to respond_to(:class)
    expect(y).to be_kind_of Numeric
    expect(z).to respond_to(:length)
  end
end
