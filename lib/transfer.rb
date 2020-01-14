class Transfer
  attr_accessor :sender, :receiver, :status, :amount 
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @status = "pending"
    @amount = amount
  end 
  
  def valid? 
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction 
    if self.valid? && sender.balance >= amount 
      sender.balance -= amount 
      receiver.balance += amount 
      self.status = "complete"
    else 
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end 
  end 
  
  def reverse_transfer 
    
  end 
  
end
