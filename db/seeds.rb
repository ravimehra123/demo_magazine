# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create :email => 'vishal@example.com', :password => 'vishal',:password_confirmation => 'vishal'
Category.create [{:name => 'Programming'},
{:name => 'Event'},
{:name => 'Travel'},
{:name => 'Music'},
{:name => 'TV'}]

user.articles.create :title => ' I Scream, You Scream, We All Scream for Ice Cream That Doesnot Melt!',
:body => "There is something unsettling and (literally) unnatural about an ice cream sandwich that doesn’t melt on a hot summer day. Earlier this summer, a woman in Cincinnati noticed that her son’s Walmart-brand ice cream sandwich didn’t melt when he accidently left it outside for 12 hours, in 80-degree F weather.",
:published_at => Date.today
user.articles.create :title => 'Gut Bacteria and Fat Cells May Interact to Produce "Perfect Storm" of Inflammation That Promotes Chronic Disease',
:body => "A wide array of health problems, including but not limited to obesity, insulin resistance, type 2 diabetes, periodontal disease, stroke, and heart disease all have inflammation as a part of the disease.",
:published_at => Date.today
user.articles.create :title => '11 Charts That Show Everything Wrong with Our Modern Diet',
:body => "Three decades ago, the food available was mostly fresh and grown locally. Today, the majority of foods served, whether at home, in school or in restaurants, are highly processed foods, filled with sugars, harmful processed fats, and chemical additives...",
:published_at => Date.today