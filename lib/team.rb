class Team
  def initialize(data, manager)
    @team_id = data["team_id"]
    @franchise_id = data["franchiseId"]
    @team_name = data["teamName"]
    @abbreviation = data["abbreviation"]
    @stadium = data["Stadium"]
    @link = data["link"]
  end
end