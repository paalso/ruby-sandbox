describe 'Variable changes test' do
  let(:x) { 1 }
  let(:a) { [1] }
  let(:h) { { 'a' => 'b' } }

  it 'test1' do
    expect(x).to eq(1)
    expect(a).to eq([1])
    expect(h).to eq({ 'a' => 'b' })

    # p(x, x.class)

    a << 2
    h['b'] = 'c'

    expect(x).to eq(1)
    expect(a).to eq([1, 2])
    expect(h).to eq({ 'a' => 'b', 'b' => 'c' })
  end

  it 'test2' do
    expect(x).to eq(1)
    expect(a).to eq([1])
    expect(h).to eq({ 'a' => 'b' })
  end

  it 'test3' do
    a.clear
    h.clear

    expect(x).to eq(1)
    expect(a).to eq([])
    expect(h).to eq({})
  end

  it 'test4' do
    expect(x).to eq(1)
    expect(a).to eq([1])
    expect(h).to eq({ 'a' => 'b' })
  end
end
