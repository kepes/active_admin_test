ActiveAdmin.register AdminUser do     
  index :title => 'This is a working title' do                            
    column :email                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
    default_actions                   
  end                                 

  filter :email                       

  form :title => 'This title not working 1' do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.buttons                         
  end 
  
  controller do
    def edit
      @page_title = 'This title not working 2'
    end
  end

  member_action :edit do
    @page_title = "This title not working 3"
  end                                
end                                   
