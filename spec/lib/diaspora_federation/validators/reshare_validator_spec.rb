module DiasporaFederation
  describe Validators::ReshareValidator do
    let(:entity) { :reshare_entity }
    it_behaves_like "a common validator"

    %i(root_diaspora_id diaspora_id).each do |prop|
      describe "##{prop}" do
        it_behaves_like "a diaspora id validator" do
          let(:property) { prop }
          let(:mandatory) { true }
        end
      end
    end

    %i(root_guid guid).each do |prop|
      describe "##{prop}" do
        it_behaves_like "a guid validator" do
          let(:property) { prop }
        end
      end
    end

    it_behaves_like "a boolean validator" do
      let(:property) { :public }
    end
  end
end