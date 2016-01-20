class SpellsController < ApplicationController
  before_action :set_spell, only: [:show]

  # GET /spells
  # GET /spells.json
  def index
    @spells = Spell.all
  end

  # GET /spells/1
  # GET /spells/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_spell
    @spell = Spell.where('lower(name) LIKE ?', params[:id].downcase).first!
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spell_params
    params.require(:spell).permit(:name, :school, :subschool, :descriptor, :spell_level, :casting_time, :components, :costly_components, :range, :area, :effect, :targets, :duration, :dismissible, :shapeable, :saving_throw, :spell_resistence, :description, :description_formated, :source, :full_text, :verbal, :somatic, :material, :focus, :divine_focus, :sor, :wiz, :cleric, :druid, :ranger, :bard, :paladin, :alchemist, :summoner, :witch, :inquisitor, :oracle, :antipaladin, :magus, :adept, :deity, :SLA_Level, :domain, :short_description, :acid, :air, :chaotic, :cold, :curse, :darkness, :death, :disease, :earth, :electricity, :emotion, :evil, :fear, :fire, :force, :good, :language_dependent, :lawful, :light, :mind_affecting, :pain, :poison, :shadow, :sonic, :water, :linktext, :material_costs, :bloodline, :patron, :mythic_text, :augmented, :mythic, :bloodrager, :shaman, :psychic, :medium, :mesmerist, :occultist, :spiritualist, :skald)
  end
end
