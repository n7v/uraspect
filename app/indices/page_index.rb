ThinkingSphinx::Index.define :page, with: :active_record do
  indexes name
  indexes content
end
