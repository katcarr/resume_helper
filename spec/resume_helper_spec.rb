require('rspec')
require('resume_helper')

describe("Resume") do
  before() do
    Resume.clear()
  end

  describe("#employer") do
    it('reads out the name of the employer') do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      expect(test_job.employer()).to(eq("Pickleworld"))
    end
  end

  describe("#title") do
    it('reads out the title of the job position') do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      expect(test_job.title()).to(eq("Pickle Farmer"))
    end
  end

  describe("#description") do
    it('reads out the job description') do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      expect(test_job.description()).to(eq("Farmed a lot of cukes"))
    end
  end

  describe("#start_date") do
    it('reads out the job start date') do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      expect(test_job.start_date()).to(eq("01/01/2001"))
    end
  end

  describe("#end_date") do
    it('reads out the job end date') do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      expect(test_job.end_date()).to(eq("07-07-2007"))
    end
  end

  describe("#save_data") do
    it('saves the job details to a list') do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      expect(test_job.save_data()).to(eq([test_job]))
    end
  end

  describe(".all") do
    it("is empty when first initialized") do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      expect(Resume.all()).to(eq([]))
    end

    it("returns data after data has been stored") do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      test_job.save_data()
      test2_job = Resume.new("BurgerWorld", "Burger Flipper", "Flip a lot of patties", "08/08/1999", "08/09/1999")
      test2_job.save_data()
      expect(Resume.all()).to(eq([test_job, test2_job]))
    end
  end

  describe(".clear") do
    it("clears all job instances in the Resume class") do
      test_job = Resume.new("Pickleworld","Pickle Farmer","Farmed a lot of cukes","01/01/2001", "07-07-2007")
      test_job.save_data()
      test2_job = Resume.new("BurgerWorld", "Burger Flipper", "Flip a lot of patties", "08/08/1999", "08/09/1999")
      test2_job.save_data()
      Resume.clear()
      expect(Resume.all()).to(eq([]))
    end
  end
end
