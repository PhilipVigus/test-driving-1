# Test driving I

This repository contains my work on the Test Driving I exercise from week 1 of the Makers Academy course.

Its learning objective is to:

- test drive your code from the outside in

The focus of the exercise is 'deciding what software to write' by 'imagining how to use it'.

#### Example

With the following user story:

```
As a student
So that I can pay attention to my motivation
I want an IRB application that stores my motivation ratings
```

The imagined interaction might be:

```
track_motivation(5) => "Motivation stored!"
show_motivations => 5
track_motivation(6) => "Motivation stored!"
show_motivations => [5, 6]
```

#### Exercise 1

User story:

```
As a student
So that I can remember people's names
I want an IRB application that stores the names of people I meet
```

Imagined interaction:

```
store_name("Phil") => "Name stored"
show_people_I_have_met => ["Phil"]
store_name("Steve") => ["Steve"]
show_people_I_have_met => ["Phil", "Steve"]
```

### Exercise 2

User story:

```
As a student
So that I can understand my recent motivation
I want an IRB application that stores my motivation ratings
And I want to see the average of my last 3 ratings
```

Imagined interaction:

```
store_motivation(2) => "Motivation stored!"
store_motivation(3) => "Motivation stored!"
store_motivation(3) => "Motivation stored!"
store_motivation(3) => "Motivation stored!"
show_average_motivation => 3
```

### Exercise 3

Convert the result from exercise 1 into a full test:

```ruby
describe 'store_name method' do
  it 'confirms the name has been stored' do
    expect(store_name("Phil")).to eq "Name stored"
  end
end

describe 'show_people_I_have_met_method' do
  it 'tells me the names of people I have met' do
    store_name "Phil"
    store_name "Dave"
    expect(show_people_I_have_met_method).to eq(["Phil","Dave"])
  end
end
```
