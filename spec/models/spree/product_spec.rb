RSpec.describe Spree::Product do
  describe "markdown description" do
    let!(:product) { create :base_product, :with_markdown_description }
    it 'should render html description' do
      expect(product.description).to eq("<h1>H1</h1>\n")
    end
  end
end
