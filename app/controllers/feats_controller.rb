class FeatsController < ApplicationController
  before_action :set_feat, only: [:show]

  # GET /feats
  # GET /feats.json
  def index
    @feats = Feat.all
  end

  # GET /feats/1
  # GET /feats/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feat
      @feat = Feat.where('lower(name) LIKE ?', params[:id].downcase).first!
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feat_params
      params.require(:feat).permit(:name, :type, :description, :prerequisites, :prerequisite_feats, :benefit, :normal, :special, :source, :fulltext, :teamwork, :critical, :grit, :style, :performance, :racial, :companion_familiar, :race_name, :note, :goal, :completion_benefit, :multiples, :suggested_traits)
    end
end
