require "bin_to_dec"

describe BinToDec do
    describe "convert" do
        context "give nil" do
            it "returns zero" do
                expect(BinToDec.conversor("")).to eq(0) 
            end
        end

        context "give 11" do
            it "returns 3" do
                expect(BinToDec.conversor("11")).to eq(3) 
            end
        end

        context "give 111" do
            it "returns 7" do
                expect(BinToDec.conversor("111")).to eq(7) 
            end
        end

        context "give 1002" do
            it "returns the message => You may not type a non binary digit! :/ " do
                expect(BinToDec.conversor("1002")).to eq("You may not type a non binary digit! :/") 
            end
        end

        context "give 100" do
            it "this test will be failed" do
                expect(BinToDec.conversor("100")).to eq(100) 
            end
        end
    end
end
