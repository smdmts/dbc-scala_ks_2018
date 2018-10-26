echo "configuring databrick-cli authentication"

declare DATABRICKS_URL="foo"
declare DATABRICKS_ACCESS_TOKEN="bar"

declare dbconfig=$(<~/.databrickscfg)
if [[ $dbconfig = *"host = "* && $dbconfig = *"token = "* ]]; then
  echo "file [~/.databrickscfg] is already configured"
else
  if [[ -z "$DATABRICKS_URL" || -z "$DATABRICKS_ACCESS_TOKEN" ]]; then
    echo "file [~/.databrickscfg] is not configured, but [DATABRICKS_URL],[DATABRICKS_ACCESS_TOKEN] env vars are not set"
  else
    echo "populating [~/.databrickscfg]"
    > ~/.databrickscfg
    echo "[DEFAULT]" >> ~/.databrickscfg
    echo "host = $DATABRICKS_URL" >> ~/.databrickscfg
    echo "token = $DATABRICKS_ACCESS_TOKEN" >> ~/.databrickscfg
    echo "" >> ~/.databrickscfg
  fi
fi
