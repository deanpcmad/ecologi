# Ecologi

This is a Ruby library for interacting with the Ecologi API.

## Usage

To get started, install the gem as normal:

```ruby
gem "ecologi"
```

Then you'll need to grab an API key from your [Impact API page](https://ecologi.com/account/api).

Once you've got an API key, setup a client like so:

```ruby
@client = Ecologi::Client.new(api_key: ENV["API_KEY"])
```

You can then use the following methods.

### Purchasing Trees

To purchase trees for an account. Requires a number. The name parameter is optional.

```ruby
@client.trees.purchase number: 2, name: "Tree's for user"

#=> #<Ecologi::TreePurchase amount=0.38...
```

### Purchasing Carbon Offsets

To purchase carbon offsets for an account. Requires number and units.

Units must be either KG or Tonnes.

```ruby
@client.carbon_offsets.purchase number: 2, units: "KG"

#=> #<Ecologi::CarbonOffsetPurchase number=2...
```

### Reporting - Total Impact

Returns the total number of trees and carbon offset for a user.

```ruby
@client.reporting.total_impact username: "deanpcmad"

#=> #<Ecologi::Report trees=1337...
```

### Reporting - Total Trees

Returns the total number of trees for a user.

```ruby
@client.reporting.total_trees username: "deanpcmad"

#=> #<Ecologi::Report total=1337...
```

### Reporting - Total Carbon Offset

Returns the total amount of carbon offset for a user.

```ruby
@client.reporting.total_carbon username: "deanpcmad"

#=> #<Ecologi::Report total=1337...
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deanpcmad/ecologi.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
