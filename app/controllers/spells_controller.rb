class SpellsController < ApplicationController
  before_action :set_spell, only: [:show, :edit, :update, :destroy]

  # GET /spells
  # GET /spells.json
  def index
    @spells = Spell.all
  end

  # GET /spells/1
  # GET /spells/1.json
  def show
  end

  # GET /spells/new
  def new
    @spell = Spell.new
  end

  # GET /spells/1/edit
  def edit
  end

  # POST /spells
  # POST /spells.json
  def create
    @spell = Spell.new(spell_params)

    respond_to do |format|
      if @spell.save
        format.html { redirect_to @spell, notice: 'Spell was successfully created.' }
        format.json { render :show, status: :created, location: @spell }
      else
        format.html { render :new }
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spells/1
  # PATCH/PUT /spells/1.json
  def update
    respond_to do |format|
      if @spell.update(spell_params)
        format.html { redirect_to @spell, notice: 'Spell was successfully updated.' }
        format.json { render :show, status: :ok, location: @spell }
      else
        format.html { render :edit }
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spells/1
  # DELETE /spells/1.json
  def destroy
    @spell.destroy
    respond_to do |format|
      format.html { redirect_to spells_url, notice: 'Spell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell
      @spell = Spell.where('lower(name) = ?', params[:id].downcase).first!
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spell_params
      params.require(:spell).permit(:name, :school, :subschool, :descriptor, :spell_level, :casting_time, :components, :costly_components, :range, :area, :effect, :targets, :duration, :dismissible, :shapeable, :saving_throw, :spell_resistence, :description, :description_formated, :source, :full_text, :verbal, :somatic, :material, :focus, :divine_focus, :sor, :wiz, :cleric, :druid, :ranger, :bard, :paladin, :alchemist, :summoner, :witch, :inquisitor, :oracle, :antipaladin, :magus, :adept, :deity, :SLA_Level, :domain, :short_description, :acid, :air, :chaotic, :cold, :curse, :darkness, :death, :disease, :earth, :electricity, :emotion, :evil, :fear, :fire, :force, :good, :language_dependent, :lawful, :light, :mind_affecting, :pain, :poison, :shadow, :sonic, :water, :linktext, :material_costs, :bloodline, :patron, :mythic_text, :augmented, :mythic, :bloodrager, :shaman, :psychic, :medium, :mesmerist, :occultist, :spiritualist, :skald)
    end
end
