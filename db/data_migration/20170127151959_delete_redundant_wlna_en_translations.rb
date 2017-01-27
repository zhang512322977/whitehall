sql = <<-HEREDOC
DELETE 
    edition_translations
FROM 
    edition_translations
    INNER JOIN editions ON 
      editions.id = edition_translations.edition_id
WHERE 
      editions.type="WorldLocationNewsArticle"
      AND editions.primary_locale != 'en'
      AND edition_translations.locale = 'en'
HEREDOC
ActiveRecord::Base.connection.execute(sql)
