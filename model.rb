DataMapper.setup(:default,
ENV['DATABASE_URL'] ||
"sqlite://#{Dir.pwd}/db/links.sqlite3")

configure :development do
  set :database, "sqlite3:///database.db"
  require 'dm-sqlite-adapter'
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
  require 'dm-postgres-adapter'
end

class Link
	include DataMapper::Resource
	
	property :id,							Serial
	property :link_name,			String
	property :url, 						String,:length => 4..100
	property :submitted_by,		String
	property :date_submitted,	DateTime
end

DataMapper.finalize
DataMapper.auto_upgrade!
