class CoinChanger
  QUARTER = 25
  DIME = 10
  NICKEL = 5
  PENNY = 1

  def make_change(change, coins = [])
    if change >= QUARTER
      coins << QUARTER

      make_change(change - QUARTER, coins)
    elsif change >= DIME
      coins << DIME

      make_change(change - DIME, coins)
    elsif change >= NICKEL
      coins << NICKEL

      make_change(change - NICKEL, coins)
    elsif change >= PENNY
      coins << PENNY

      make_change(change - PENNY, coins)
    end

    coins
  end
end
