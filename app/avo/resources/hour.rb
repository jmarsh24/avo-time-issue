class Avo::Resources::Hour < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
      field :start,
      as: :time,
      relative: true,
      timezone: "Europe/Berlin",
      format: "HH:mm",
      picker_options: { time_24hr: true }

    field :end,
      as: :time,
      relative: true,
      timezone: "Europe/Berlin",
      format: "HH:mm",
      picker_options: { time_24hr: true }
  end
end
