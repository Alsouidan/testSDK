require 'gameball'
Gameball.api_key="7c7636658209418c9a82306a421f76a5"
Gameball.api_version="v2.0"
Gameball::transaction_key="26e1967d89114388bdd1772587c336c8"
# Events
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
# Referrals 
# Example 1
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
# Reward
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
# Get Player Balance
Gameball::Transaction.get_player_balance("player456")
# Hold
# Example 1
Gameball::Transaction.hold_points({
	playerUniqueId:"player456",
	amount:98.89,
	transactionTime:"2019-09-21T16:53:28.190Z"
}
)
# Redeem 
# Example 1
Gameball::Transaction.redeem_points({
	playerUniqueId:"player456",
	amount:10,
	transactionId:"tra_123456789",
	holdReference:"2342452352435234",
	transactionTime:"2019-09-19T16:14:09.895Z"
	})
# Reverse Transaction
# Example 1
Gameball::Transaction.reverse_transaction({
	playerUniqueId:"player456",
	transactionId:"1234567890",
	reversedTransactionId:"234567891",
	transactionTime:"2019-09-19T11:14:09.895Z"
}
)
Gameball::Transaction.reverse_hold({
	playerUniqueId:" player456",
	holdReference:"9245fe4a-d402-451c-b9ed-9c1a04247482",
	transactionTime:"2019-09-21T16:53:28.190Z"
} 
)
