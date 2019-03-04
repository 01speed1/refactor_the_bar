require_relative '../../app/classes/bar'

RSpec.describe Bar do
  let(:subject) { Bar.new(barman_name: "Pedro Perez") }
  describe "#order_a_beer" do

    it "should return a beer" do
      params = {beer: "blonde", glass: "small"}
      beer_glass = subject.order_a_beer(params)
      expect(beer_glass).to be_an_instance_of(BeerGlass)
    end

    context "the params are not present" do
      it "return a nil" do
        expect(subject.order_a_beer).to eq(nil)
      end
    end

    context "When beer blonde is and glass is small" do
      it "return the beer worth in 2000" do
        params = {beer: "blonde", glass: "small"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(2000)
      end
    end

    context "When beer is red and glass is small" do
      it "return the beer worth in 3000" do
        params = {beer: "red", glass: "small"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(3000)
      end
    end

    context "When beer dark is and glass is small" do
      it "return the beer worth in 6000" do
        params = {beer: "dark", glass: "small"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(6000)
      end
    end

    context "When beer is blode and glass is medium" do
      it "return the beer worth in 4000" do
        params = {beer: "blonde", glass: "medium"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(4000)
      end
    end

    context "When beer is red and glass is medium" do
      it "return the beer worth in 5000" do
        params = {beer: "red", glass: "medium"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(5000)
      end
    end

    context "When beer is dark and glass is medium" do
      it "return the beer worth in 8000" do
        params = {beer: "dark", glass: "medium"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(8000)
      end
    end

    context "When beer is blonde and glass is large" do
      it "return the beer worth in 6000" do
        params = {beer: "blonde", glass: "large"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(6000)
      end
    end

    context "When beer is red and glass is large" do
      it "return the beer worth in 7000" do
        params = {beer: "red", glass: "large"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(7000)
      end
    end
    #si pido vaso grande y cervea negra me debe cobrar 10000
    context "When beer is dark and glass is large" do
      it "return the beer worth in 10000" do
        params = {beer: "dark", glass: "large"}
        beer_glass = subject.order_a_beer(params)
        expect(beer_glass.price).to eq(10000)
      end
    end

  end
end