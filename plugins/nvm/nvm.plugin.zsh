# The addition 'nvm install' attempts in ~/.profile

[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh

_homebrew-installed() {
  type brew &> /dev/null
}

_nvm-from-homebrew-installed() {
  brew --prefix nvm &> /dev/null
}

FOUND_NVM=0
nvmdirs=("$HOME/.nvm" "/usr/local/nvm" "/opt/nvm" "/usr/local/opt/nvm")
if _homebrew-installed && _nvm-from-homebrew-installed; then
    nvmdirs=($(brew --prefix nvm) "${nvmdirs[@]}")
fi

for nvmdir in "${nvmdirs[@]}" ; do
    if [ -d $nvmdir -a $FOUND_NVM -eq 0 ] ; then
        FOUND_NVM=1
        export NVM_ROOT=$nvmdir
        export PATH=${nvmdir}/bin:$PATH
        source ${NVM_ROOT}/nvm.sh

        function nvm_prompt_info() {
            echo "$(nvm current)"
        }
    fi
done
unset nvmdir

if [ $FOUND_NVM -eq 0 ] ; then
    function nvm_prompt_info() { echo "system: $(node -v 2>&1)" }
fi
