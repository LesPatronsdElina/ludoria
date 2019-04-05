ActiveAdmin.register BlogArticle do
  config.sort_order = 'id_asc'
  permit_params :title, :content, :cover_picture, :remote_cover_picture_url, :pdf, blog_tag_ids: [],
      blog_meta_attributes: [:_destroy, :id, :title, :content, :blog_article_id],
      blog_photos_attributes: [:destroy, :id, :photo, :remote_photo_url, :blog_article_id, :alt]

  index do
    selectable_column
    column :id
    column "Titre", :title
    column "Voir" do |blog_article|
      link_to "PDF", blog_article.pdf.url
    end
    actions
  end

  show do |a|
    attributes_table do
      row :id
      row :title
      row :content
      row :cover_picture
      row :pdf
    end
  end
  form do |f|
    tabs do
      tab 'Article' do
        f.inputs do
          f.input :title
          f.input :content
          f.input :cover_picture, as: :file, hint: cl_image_tag(f.object.cover_picture.url), label: "Importer une photo"
          f.input :remote_cover_picture_url, label: "Photo URL"
          f.input :cover_picture_cache, as: :hidden
          f.input :pdf, as: :file
          f.input :blog_tags, as: :check_boxes, collection: BlogTag.all
          f.button :submit
        end
      end
      tab 'Données Meta de l Article' do
        f.inputs do
          f.has_many :blog_meta, heading: 'Meta Details', allow_destroy: true do |meta|
            meta.input :title, collection: ['title', 'description', 'image']
            meta.input :content
          end
        f.button :submit
        end
      end
      tab 'photos de l Article' do
        f.inputs do
          f.has_many :blog_photos, heading: 'Photo Details', allow_destroy: true do |photo|
            photo.input :photo, as: :file, hint: cl_image_tag(photo.object.photo.url),  label: "Importer une photo"
            photo.input :remote_photo_url, label: "Photo URL"
            photo.input :photo_cache, as: :hidden
            photo.input :alt
          end
        f.button :submit
        end
      end
    end
  end
end
