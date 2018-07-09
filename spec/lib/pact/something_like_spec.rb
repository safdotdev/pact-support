require 'rails'
require 'oj'

module Pact
  describe SomethingLike do

    let(:json) do
'
{
  "json_class": "Pact::SomethingLike",
  "contents" : { "thing" : "blah" }
}
'
    end

    describe 'json_create' do
      subject { SomethingLike.json_create(JSON.parse(json)) }

      it "creates a SomethingLike object from json" do
        expect(subject).to eq(SomethingLike.new({"thing" => "blah"}))
      end
    end

    describe "JSON.load" do
      subject { JSON.load(json) }

      it "creates a SomethingLike object from json" do
        expect(subject).to eq(SomethingLike.new({"thing" => "blah"}))
      end
    end
  end
end
