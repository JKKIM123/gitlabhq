class AddLockVersionToCiStages < ActiveRecord::Migration[4.2]
  include Gitlab::Database::MigrationHelpers

  DOWNTIME = false

  def change
    add_column :ci_stages, :lock_version, :integer
  end
end
