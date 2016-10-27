module MifosXMessenger
	class MessageTemplates
		@signature = nil
		def initialize(signature)
			@signature = signature
		end

		def loan_repayment(client, loan, trans)
			"Dear #{client['displayName']}, your loan account ##{loan['accountNo']} recorded a repayment of " +
				"#{trans['currency']['code']} #{trans['amount']}. Current outstanding: " +
				"#{loan['currency']['code']} #{loan['summary']['totalOutstanding']}\n#{@signature}"
		end

		def savings_deposit(client, savings, trans)
			"Dear #{client['displayName']}, your savings account ##{savings['accountNo']} recorded a deposit of " +
				"#{savings['currency']['code']} #{trans['amount']}. Current balance: " +
				"#{savings['currency']['code']} #{trans['runningBalance']}.\n#{@signature}"
		end

		def savings_withdrawal(client, savings, trans)
			"Dear #{client['displayName']}, your savings account ##{savings['accountNo']} recorded a withdrawal of " +
				"#{savings['currency']['code']} #{trans['amount']}. Current balance: " +
				"#{savings['currency']['code']} #{trans['runningBalance']}.\n#{@signature}"
		end
	end
end
