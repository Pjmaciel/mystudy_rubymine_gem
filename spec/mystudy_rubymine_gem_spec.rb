# frozen_string_literal: true

RSpec.describe MystudyRubymineGem do
  it "has a version number" do
    expect(MystudyRubymineGem::VERSION).not_to be nil
  end

  it "does something useful" do
    result = MystudyRubymineGem.do_something
    expect(result).to eq(expected_result)
  end
end
