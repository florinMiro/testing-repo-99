baseHash="$(git rev-parse HEAD)"

for i in {0..0}; do
  echo "new line $i" >> testFile.md
  git add testFile.md
  git commit -m "chore: add fake commit $i"
  gitHash="$(git rev-parse HEAD)"
  echo "{
            \"target\": \"florinMiro/testing-repo-99\",
            \"oid\": \"$gitHash\",
            \"baseOid\": \"384ae8e9d4b724d882cc26872970e952822d193d\"
          }," >> /Users/florinmirosnicencu/code/testing-repo-99/99p_repo_list.json
done