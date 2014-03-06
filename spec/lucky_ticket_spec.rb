require 'rspec'
require 'lucky_ticket'

describe('lucky_ticket') do
  it('returns true for ticket "11"') do
    lucky_ticket("11").should(eq(true))
  end 
  it("returns true for ticket 123123") do
    lucky_ticket("123123").should(eq(true))
  end
  it("returns true for ticket 7584866") do
    lucky_ticket("7584866").should(eq(true))
  end
  it("returns false for ticket 7584861") do
    lucky_ticket("7584861").should(eq(false))
  end
  it("returns something other than true or false for any non-integer characters in ticket string") do
    lucky_ticket("12A34").should(eq("oops, something went wrong"))
  end
  it("returns something other than true or false for any blank string") do
    lucky_ticket("").should(eq("oops, something went wrong"))
  end
end
