require 'rbdym'

describe 'rbdym' do
  it 'knows two identical strings are identical' do
    s = 'test'
    dist = s.edit_dist s
    expect(dist).to eq 0
  end

  it 'knows a single substitution is an edit' do
    s = 'test'
    dist = s.edit_dist 'best'
    expect(dist).to eq 1
  end

  it 'knows a single addition is an edit' do
    s = 'test'
    dist = s.edit_dist 'tests'
    expect(dist).to eq 1
  end

  it 'knows a single deletion is an edit' do
    s = 'tests'
    dist = s.edit_dist 'test'
    expect(dist).to eq 1
  end

  it 'knows a single swap is an edit' do
    s = 'test'
    dist = s.edit_dist 'tset'
    expect(dist).to eq 1
  end

  it 'can compute more complex edit distance' do
    s = 'test'
    dist = s.edit_dist 'sets'
    expect(dist).to eq 2
  end

  it 'can find the closest match' do
    s = 'test'
    closest = s.closest_match %w(sets stink pest best trust)
    expect(closest).to eq 'best'
  end
end
