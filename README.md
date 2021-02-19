|Table of contents|
| --------------- |
| About The Project |
| Installation |
| Getting Started   |
| Acknowledgements|

## About The Project
According to the [Wikipedia](https://en.wikipedia.org/wiki/Builder_pattern):

"The builder pattern is a design pattern designed to provide a flexible solution to various object creation problems in object-oriented programming. The intent of the Builder design pattern is to separate the construction of a complex object from its representation."

Basically, the function of this pattern is to solve a problem where there is an object that can be built in many different ways, using only object orientation.

For this example, we will use the following context:

1. We have some companies.
2. We have some plans.
3. Each plan has the features that can be accessed by itself.
4. Each company has only 1 plan with access only to the features of that plan.

The idea then is to create a JSONB field for companies with all the features that it can access, created based on our builder.

(It's a console idea, only, ok? So we don't have any web content, just the `rails c` fun.)

How do we do it? You will see below, but first, let's install the environment

## Installation
(There is no need to configure the DB as we will use SQLite as it is just a demonstration)

Requirements: `ruby 3.0.0` `rails 6.1.1`
 
1 - Clone the project
```
git clone https://github.com/muromeo1/builder_pattern.git
```

2 - Configure the SQLite
```
rake db:setup
```

3 - Now we already have our project working and properly seeded, just run:
```
rails c
```

And it's time to play with the console!

## Getting Started

TODO
