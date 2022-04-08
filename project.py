# list of selected cities in japan
list_cities = ["tokyo", "fukushima", "toyota", "fukuyama", "ageo", "akashi", "akita", "amagasaki"]

for  item in list_cities:
	print(item)

#population of these cities (from the dataset of this project)
pop_cities = [9272740,294247, 422542, 464811, 225196, 293409, 315814, 452563]

for pop in pop_cities:
	print(pop)

total_pop = 0

#finding the total population of these cities
for pop in pop_cities:
	total_pop = total_pop + pop

print(total_pop)

#finding the number of cities in our list
number_of_cities = len(pop_cities)

# finding the average population of these cities 
a = total_pop/number_of_cities
print(a)
 
 #using a function to find the average population in millions 
def pop_in_milions(a):
	return (a/1000000)
print(pop_in_milions(a))