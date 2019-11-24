require_relative '../lib/hello_world'
describe HelloWorld do
  describe " .hello" do
  it "say hello" do
    expect(HelloWorld.hello).to eq "Hello, World!"
  end
end
end