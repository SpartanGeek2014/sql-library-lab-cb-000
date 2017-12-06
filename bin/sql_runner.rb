require_relative 'environment'

class SQLRunner
  def initialize(db)
    @db = db
  end

  def execute_schema_sql
    sql = File.read("lib/schema.sql")
    @db.execute_batch(sql)
  end

  def execute_insert_sql
    sql = File.read("lib/insert.sql")
    @db.execute_batch(sql)
  end

  def execute_update_sql
    sql = File.read("lib/update.sql")
    @db.execute_batch(sql)
  end

  def execute_querying
    sql = File.read('lib/querying.rb')
    @db.execute_batch(sql)
  end
end