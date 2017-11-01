ActiveAdmin.register Shipment do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :client_id, :container_id, :pickup_contact_person, :content_description
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
 form do |f|
    f.inputs "Shipments" do
      f.input :client_id, :label => 'Client', :as => :select, :collection => Client.all.map{|c| ["#{c.full_name}", c.id]}
      f.input :container_id, :label => 'Container', :as => :select, :collection => Container.all.map{|c| ["#{c.id}", c.id]}
      # f.input :client_type, :label => 'Account Type', :as => :select, :collection =>  %w( goodwill franklin_county senior_option )
      f.input :pickup_contact_person
      f.input :content_description
    end
    f.actions
  end

end
