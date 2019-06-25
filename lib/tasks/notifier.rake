task :notify_below_minimum_stock => :environment do
	NotifierMailer.below_minimum_stock.deliver
end
