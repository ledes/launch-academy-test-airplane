require_relative "../../lib/airplane"

describe Airplane do
  let(:airplane) { Airplane.new("cesna", 10, 150, 150) }
  describe "#initialization" do
    it "should create an Airplane object" do
      expect(airplane).to be_a(Airplane)
    end

    it "should return the type of the plane" do
      expect(airplane.type).to eq("cesna")
    end

    it "should return the type of the plane" do
      expect(airplane.wing_loading).to eq(10)
    end

    it "should return the type of the plane" do
      expect(airplane.horsepower).to eq(150)
    end
  end

  describe "#land" do
    it "should return the string 'airplane not started, please start'" do
      expect(airplane.land).to eq('airplane not started, please start')
    end

    it "shoud return the string 'airplane already on the ground'" do
      airplane.start
      expect(airplane.land).to eq('airplane already on the ground')

    end

    it "shoud return the string 'airplane landed'" do
      airplane.start
      airplane.takeoff
      expect(airplane.land).to eq('airplane landed')
    end

  end

  describe "#takeoff" do
    it "should return the string'airplane not started, please start'" do
      expect(airplane.takeoff).to eq('airplane not started, please start')
    end

    it "should return the string'airplane launched'" do
      airplane.start
      expect(airplane.takeoff).to eq("airplane launched")
    end
  end

  describe "#start" do
    it "should return the string'airplane started'" do
      expect(airplane.start).to eq('airplane started')
    end
    it "should return the string'airplane started'" do
      airplane.start
      expect(airplane.start).to eq('airplane already started')
    end
  end

  describe "#fuel"
    it "should return the string'not enought fuel'" do
      airplane.fuel = 0
      expect(airplane.start).to eq('not enought fuel')
    end

    it "should return the string'not enought fuel'" do
      airplane.start
      airplane.fuel = 0
      expect(airplane.takeoff).to eq('not enought fuel')
    end

    it "should return the string'Not enought fuel for landing, prepare to die'" do
      airplane.start
      airplane.takeoff
      airplane.fuel = 0
      expect(airplane.land).to eq('Not enought fuel for landing, prepare to die')
    end
end
