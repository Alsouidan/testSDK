# Gameball Ruby SDK
The Gameball Ruby SDK provides convenient access to the Gameball API from applications written in the Ruby language.

## Documentation

Please refer to the  [Gameball API docs](https://docs.gameball.co).

## Installation

You don't need this source code unless you want to modify the SDK. If you just
want to use the SDK, just run:

```sh
gem install gameballSDK
```

### Requirements

-   Ruby 2.6+  and Gem 3.0+

## Usage

The SDK needs to be configured with your account's API & Transaction keys available in your [Gameball Dashboard](https://help.gameball.co/en/articles/3467114-get-your-account-integration-details-api-key-and-transaction-key)

```ruby
require 'gameball'

Gameball.api_key="api_key" 
Gameball.api_version="v2.0" # Or latest
Gameball.transaction_key="transaction_key" 
```

### Example

#### Sending an Event

```ruby
# Example 1 
Gameball::Event.send_event({
	events:{
		place_order:{
			total_amount:"100",
			category:[
				"electronics",
				"cosmetics"
			]
		},
		review:{}
	},
	playerUniqueId:"player123"
})
# Example 2
Gameball::Event.send_event({
	events:{
		reserve:{
			rooms:2
		}
	},
	playerUniqueId:" player123",
	playerAttributes:{
		displayName:" Jon Snow",
		email:"jon.snow@example.com",
		dateOfBirth:"1980-09-19T00:00:00.000Z",
		joinDate:"2019-09-19T21:06:29.158Z"
	}
})
# Example 3
Gameball::Event.send_event({
	events:{
		reserve:{
			rooms:2
		}
	},
	playerUniqueId:" player123",
	playerAttributes:{
		displayName:" Jon Snow",
		email:"jon.snow@example.com",
		dateOfBirth:"1980-09-19T00:00:00.000Z",
		joinDate:"2019-09-19T21:06:29.158Z",
		custom:{
			location:"Miami",
			graduationDate:"2018-07-04T21:06:29.158Z",
			isMarried:false
		}
			}
})


```
#### Create a new Referral
```ruby
Gameball::Referral.create_referral({
	playerCode:"CODE11",
	playerUniqueId:"player456"
}
)
# Example 2
Gameball::Referral.create_referral({
	playerCode:"CODE11",
	playerUniqueId:"player456",
	playerAttributes:{
		displayName:" Tyrion Lannister",
		firstName:"Tyrion",
		lastName:"Lannister",
		email:"tyrion@example.com",
		gender:"M",
		dateOfBirth:"1978-01-11T00:00:00.000Z",
		joinDate:"2019-09-19T21:06:29.158Z",
		custom:{
			location:"Miami",
			graduationDate:"2018-07-04T21:06:29.158Z",
			isMarried:false
		}
	}
}
)
```

#### Reward Examples
```ruby
# Example 1
Gameball::Transaction.reward_points({
	playerUniqueId:"player123",
	amount:99.98,
	transactionId:"tra_123456789",
	transactionTime:"2019-09-19T16:14:09.895Z"
})
# Example 2
Gameball::Transaction.reward_points({
	playerUniqueId:"player456",
	amount:2500,
	transactionId:"tra_123456789",
	playerAttributes:{
		displayName:" Tyrion Lannister",
		firstName:"Tyrion",
		lastName:"Lannister",
		email:"tyrion@example.com",
		gender:"M",
		dateOfBirth:"1978-01-11T00:00:00.000Z",
		joinDate:"2019-09-19T21:06:29.158Z",
		custom:{
			location:"Miami",
			graduationDate:"2018-07-04T21:06:29.158Z",
			isMarried:false
		}
	},
	transactionTime:"2019-09-19T16:14:09.895Z"
}
)
```
#### Get Player Balance Example
```ruby
Gameball::Transaction.get_player_balance("player456")
```
#### Hold Points Example
```ruby
Gameball::Transaction.hold_points({
	playerUniqueId:"player456",
	amount:98.89,
	transactionTime:"2019-09-21T16:53:28.190Z"
}
)
```
#### Redeem Example
```ruby 
Gameball::Transaction.redeem_points({
	playerUniqueId:"player456",
	amount:10,
	transactionId:"tra_123456789",
	holdReference:"2342452352435234",
	transactionTime:"2019-09-19T16:14:09.895Z"
	})
```
#### Reverse Transaction Example
```ruby
Gameball::Transaction.reverse_transaction({
	playerUniqueId:"player456",
	transactionId:"1234567890",
	reversedTransactionId:"234567891",
	transactionTime:"2019-09-19T11:14:09.895Z"
}
)
```
#### Reverse Hold Example 
```ruby
Gameball::Transaction.reverse_hold({
	playerUniqueId:" player456",
	holdReference:"9245fe4a-d402-451c-b9ed-9c1a04247482",
	transactionTime:"2019-09-21T16:53:28.190Z"
} 
)
```

### Handling exceptions

Unsuccessful requests raise exceptions. The raised exception will reflect the sort of error that occurred with appropriate message and error code . Please refer to the  [Gameball API docs](https://docs.gameball.co).

## Contribution
The master branch of this repository contains the latest stable release of the SDK.

## Contact
For usage questions\suggestions drop us an email at support[ at ]gameball.co. Please report any bugs as issues.
