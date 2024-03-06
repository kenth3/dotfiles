
declare -a extensions=(
	oderwat.indent-rainbow
	redhat.vscode-yaml
	GitHub.vscode-github-actions
)

for ext in "${extensions[@]}"
do
	code --install-extension $ext
done


