class CampaignsController < ApplicationController
    def index 
        render json: Campaign.all
    end

    def show 
        render json: find_campaign
    end 

    def create
        campaign = Campaign.create!(campaign_params)
        render json: campaign, status: :created
    end 

    def update 
        campaign = find_campaign
        campaign.update!(campaign_params)
        render json: campaign, status: :ok
    end 

    def destroy
        campaign = find_campaign
        campaign.destroy
        head :no_content 
    end 

    private 

    def find_campaign
        Campaign.find_by(id: params[:id])
    end 

    def campaign_params
        params.permit(:title, :description, :category, :goal_amount, :start_date, :end_date, :user_id)
    end

end
