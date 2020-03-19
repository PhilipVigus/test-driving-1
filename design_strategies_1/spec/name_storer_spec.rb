require 'name_storer'

describe NameStorer do
  it 'can store a name' do
    expect(subject.store_name("Phil")).to eq("Name stored")
  end

  it 'tells you the names that have been stored after storing one name' do
    name_storer = NameStorer.new
    name_storer.store_name("Phil")
    expect(name_storer.names).to eq(["Phil"])
  end

  it 'tells you the names that have been stored after storing multiple names' do
    name_storer = NameStorer.new
    name_storer.store_name("Phil")
    name_storer.store_name("Dave")
    expect(name_storer.names).to eq(["Phil", "Dave"])

  end
end


