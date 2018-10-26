dbc_pull_prd:
	databricks workspace export_dir -o /Shared ./notebooks/Shared

dbc_pull_dev:
	databricks workspace export_dir -o /Users/$(DBC_USER)/workspace/Shared ./notebooks/Shared

dbc_push_dev:
	databricks workspace import_dir -o ./notebooks /Users/$(DBC_USER)/workspace
