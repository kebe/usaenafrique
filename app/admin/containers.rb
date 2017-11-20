ActiveAdmin.register Container do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :container_number, :departure_date, :arrival_date
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :container_number
    column :departure_date
    column :arrival_date
    actions
  end

  filter :container_number
  filter :departure_date
  filter :arrival_date

  form do |f|
    f.inputs "Containers" do
      f.input :container_number
      f.input :departure_date, as: :datepicker,
                      datepicker_options: {
                        min_date: Date.today                      }
      f.input :arrival_date, as: :datepicker,
                      datepicker_options: {
                        min_date: Date.today                      }
    end
    f.actions
  end

  controller do
    def create
      super do |format|
        redirect_to collection_url and return if resource.valid?
      end
    end

    def update
      super do |format|
        redirect_to collection_url and return if resource.valid?
      end
    end
  end
end
