namespace :contract do
  # rake "contract:generate_new"
  task :generate_new => :environment do |t, args|
    start_dates = ['01-08-2022', '08-08-2022', '15-08-2022', '22-08-2022']
    start_dates.each_with_index do |start_date, i|
      Contract.create(
        client_id: Client.first.id,
        name: "Contrato #{i + 1}",
        start_date: start_date,
        end_date: "#{(start_date.to_date + 7.days).strftime('%d-%m-%Y')}",
        hours: WorkHour.pluck(:id).sample(25)
      )
    end
    p "finish."
  end
end
