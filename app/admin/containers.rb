ActiveAdmin.register Container do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :departure_date, :arrival_date
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
    column :departure_date
    column :arrival_date
    actions
  end

  form do |f|
    f.inputs "Containers" do
      f.input :departure_date, as: :datepicker,
                      datepicker_options: {
                        min_date: Date.today                      }
      f.input :arrival_date, as: :datepicker,
                      datepicker_options: {
                        min_date: Date.today                      }
    end
    f.actions
  end
end
