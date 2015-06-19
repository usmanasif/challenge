This is a refactoring exercise. First let's get setup:

```
bundle
rspec spec/
```

There is a single integration test, but no unit tests.

The code in `lib/scraper.rb` is a simple screen scraper that goes to [http://ojp.nationalrail.co.uk/service/ldbboard/dep/OXF/PAD/To](http://ojp.nationalrail.co.uk/service/ldbboard/dep/OXF/PAD/To) and scrapes the 'departure board' from there, printing it out. You can see the output by running the script directly:

```
$ ruby lib/scraper.rb
Due: 12:01
Destination: London Paddington
Status: On time
Platform: 1

Due: 12:07
Destination: London Paddington
Status: On time
Platform: Unknown

Due: 12:31
Destination: London Paddington
Status: On time
Platform: 1

Due: 12:37
Destination: Ealing Broadway
Status: On time
Platform: Unknown

Due: 13:01
Destination: London Paddington
Status: Starts here
Platform: Unknown

Due: 13:07
Destination: Ealing Broadway
Status: On time
Platform: Unknown

Due: 13:31
Destination: London Paddington
Status: On time
Platform: Unknown

Due: 13:37
Destination: Ealing Broadway
Status: On time
Platform: Unknown

```

## Your task ##

Your task is to refactor the code. As you can see it is not at all object-oriented, but in our hypothetical scenario we intend to further develop this part of the code, so we want it to be much more object oriented so that it's easier to maintain.

It is expected that the integration test will still pass when you are done. If you wish to add unit tests as you go along, this is perfectly acceptable, but in order to make it not take up too much time, writing unit tests is *not required*. Do it if it helps, but you won't be penalised for not doing so. We're mainly interested in the actual refactoring you perform.

The best solutions will be those which make it easy to adapt the code when requirements change: for example when we want to change how the output is formatted, or when we want to add support for departure boards for other origins or destinations.
