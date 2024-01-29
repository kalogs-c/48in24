is_divisible_by_4 = lambda y : y % 4 == 0
is_divisible_by_100 = lambda y : y % 100 == 0
is_divisible_by_400 = lambda y : y % 400 == 0

def leap_year(year):
    return is_divisible_by_400(year) or (is_divisible_by_4(year) and not is_divisible_by_100(year))
