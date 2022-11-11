# ruby-http-benchmarks

Some benchmarks comparing memory usage among various http clients in ruby. The goal is to measure the memory usage of loading the library into the process AND making a single GET request to an arbitrary URL.

# Install

`bundle install`

# Benchmarking

Start the server: `bundle exec puma`

In a new terminal, run the benchmark: `ruby download.rb`

# Results

In ruby 3.1.2:

```
Net::HTTP: 0.16 MB
RestClient: 1.72 MB
faraday: 2.43 MB
HTTParty: 5.57 MB
http.rb: 7.53 MB
```
# Known issues

The results are fairly reproducible, but the order seems to drastically change the results, with a big penalty for being in the first position. 

For the results above I varied the position of the libraries for each run and picked the best of 5 runs.

# Credits

Inspired by this gist https://gist.github.com/janko/238bbcc78b369ce3438365e5507bc671
