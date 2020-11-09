ActiveAdmin.register Customer do
  # LET USERS CRUD CUSTOMER
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # Domain Specific Language DSL
  # Formtastic Gem
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, size: '200x200') : ''
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
