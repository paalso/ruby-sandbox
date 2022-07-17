# frozen_string_literal: true

# Реализуйте функцию get_men_count_by_year(), которая принимает список пользователей и возвращает объект, где ключ – это год рождения, а значение – это количество мужчин, родившихся в этот год.

def get_men_count_by_year(users)
  filtered = users.filter { |e| e[:gender] == 'male' }
  filtered.each_with_object({}) do |e, acc|
    year = e[:birthday].split('-').first
    acc[year] ||= 0
    acc[year] += 1
  end
end

users = [
  { name: 'Bronn', gender: 'male', birthday: '1973-03-23' },
  { name: 'Reigar', gender: 'male', birthday: '1973-11-03' },
  { name: 'Eiegon', gender: 'male', birthday: '1963-11-03' },
  { name: 'Sansa', gender: 'female', birthday: '2012-11-03' },
  { name: 'Jon', gender: 'male', birthday: '1980-11-03' },
  { name: 'Robb', gender: 'male', birthday: '1980-05-14' },
  { name: 'Tisha', gender: 'female', birthday: '2012-11-03' },
  { name: 'Rick', gender: 'male', birthday: '2012-11-03' },
  { name: 'Joffrey', gender: 'male', birthday: '1999-11-03' },
  { name: 'Edd', gender: 'male', birthday: '1973-11-03' }
]

print get_men_count_by_year(users)
# {
#   '1973' => 3,
#   '1963' => 1,
#   '1980' => 2,
#   '2012' => 1,
#   '1999' => 1
# }


def get_men_count_by_year(users)
  men = users.filter { |u| u[:gender] == 'male' }
  years = men.map { |u| u[:birthday][0, 4] }

  years.reduce({}) do |acc, year|
    acc[year] ||= 0
    acc[year] += 1
    acc
  end
end