ActiveAdmin.register_page "Dashboard" do
  skip_authorization_check
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    columns do
      column do
        panel 'Ultimo usuaario que se ha unido' do
          ul do
            User.last(10).map do |user|
              li link_to("#{user.name} - #{user.email}", admin_user_path(user))
            end
          end
        end
      end
      column do
        panel 'Productos Reciente' do 
          ul do
            Product.last(10).map do |product|
              li link_to(product.title, admin_user_path(product))
            end
          end
        end
      end

      
    end

    panel "Estadísticas" do

      columns do
        column do
          h4 'Sugerencias'
          ul do
            li "Total Sugerencias: #{Suggestion.count}"
            li "Total Sugerencias revisados: #{Suggestion.where(revised: true).count}"
            li "Total Sugerencias por revisar: #{Suggestion.where(revised: false).count}"
          end
        end

        column do
          h4 'Comentarios'
          ul do
            li "Total Comentarios : #{Comment.count}"
            li "Total Comentarios banneados: #{Comment.where(banned: true).count}"
            li "Total Comentarios sin banner: #{Comment.where(banned: false).count}"
          end
        end

        column do
          h4 'Otros ...'
          ul do
            li "Total Usuarios: #{User.count}"
            li "Total Productos: #{Product.count}"
            li "Total Categorias: #{Category.count}"
          end
        end
      end
    end

    panel "Tendencias de Usuario" do
      
      @suggestions = Suggestion.group(:subject).where(type_s: :preventa, created_at: (Time.now.midnight - 30.day)..(Time.now.midnight + 7.day)).count
      render 'shared/chart', data_s: @suggestions
    end
  end # content
end
