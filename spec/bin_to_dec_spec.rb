RSpec.describe BinToDec do
    context "To convert" do
        describe "Give 11" do
            it "Should return number 3" do
                expect(described_class.conversor(11)).to eq(3) 
            end
        end

        describe "Give 111" do
            it "Should return number 7" do
                expect(described_class.conversor(111)).to eq(7)
            end
        end

        describe "Give 100" do
            it "Should return number 4" do
                expect(described_class.conversor(100)).to eq(4) 
            end
        end
    end

    context "Errors" do
        describe "Give nil" do
            it "Should return the message 'You may not give nil to convert, it cause an error!'" do
                expect(described_class.conversor(nil)).to eq('You may not give nil to convert, it cause an error!') 
            end
        end

        describe "Give 1002" do
            it "Should return the message 'You may not type a non binary digit!'" do
                expect(described_class.conversor("1002")).to eq("You may not type a non binary digit!") 
            end
        end
    end
end
