#!/usr/bin/env sh
#  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
#  ▓ ████ ███ Usage? use current filename of THIS file: █
#  ▒ ████ ███    $ ./K.sh --help                        █
#    ▓███▀█▄  !Feel free to copy/move/rename THIS file. █
#  ▒ ▒▓██ ███ !Feel free to un/comment any examples but █
#  ▓ ░▒▓█ ███  do not define multiple times a variable. █
#  █ configurable! executable! K.sh initialization file █
#  █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▀▄▄██▄▌ ▌▐ ▐▄██▄▄▀▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
#  █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▄▀▀▀▀▀▌▄  ▄▐▀▀▀▀▀▄▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
#  █▌ Today, is a beautiful day.▐▌.btw, on THIS file.. ▐█
#  ██   I. Define hardcoded optional K argumentss. F F ██
#  ██  II. Define initial mandatory UI argumentss. E R ██
#  ██ III. Define initial mandatory API arguments. E E ██
#  ██  IV. Execute K loop until CTRL+C or kill -9. L E ██
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄.▄!▄!▄██
#  ▌___                                                 .
#  ▌ I ▐________________________________________________.
#  ▌¯¯¯                                                 .
#  █ OPTIONAL_ARGUMENTS                                 .
#  ██ - Allows a list of arguments, to avoid write it always in the command-line.
#OPTIONAL_ARGUMENTS="--colors --autobot"
OPTIONAL_ARGUMENTS="--colors --naked --debug-wallet"
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#  ▌____                                                .
#  ▌ II ▐_______________________________________________.
#  ▌¯¯¯¯                                                .
#  █ UI_USERNAME                                        .
#  ██ - Allows any username, to authenticate UI connections.
#UI_USERNAME=1234abcd
UI_USERNAME=NULL
#  ▌____________________________________________________.
#  █ UI_PASSWORD                                        .
#  ██ - Allows any password, to authenticate UI connections.
#UI_PASSWORD=efgh5678
UI_PASSWORD=NULL
#  ▌____________________________________________________.
#  █ UI_OPENPORT                                        .
#  ██ - Allows any port number, to listen to UI connections.
#UI_OPENPORT=6969
UI_OPENPORT=3000
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#  ▌_____                                               .
#  ▌ III ▐______________________________________________.
#  ▌¯¯¯¯¯                                               .
#  █ API_EXCHANGE                                       .
#  ██ - Allows one of the following exchange names (or leave NULL for test mode):
#API_EXCHANGE=COINBASE
#API_EXCHANGE=BITFINEX
#API_EXCHANGE=BITFINEX_MARGIN
#API_EXCHANGE=ETHFINEX
#API_EXCHANGE=ETHFINEX_MARGIN
#API_EXCHANGE=HITBTC
#API_EXCHANGE=BEQUANT
#API_EXCHANGE=BITMEX
#API_EXCHANGE=KRAKEN
#API_EXCHANGE=POLONIEX
API_EXCHANGE=BITFINEX_MARGIN
#  ▌____________________________________________________.
#  █ API_CURRENCY                                       .
#  ██ - Allows any existent currency pair (see the website of the exchange), the format must be "AAA/ZZZ".
#API_CURRENCY=BTC/EUR
API_CURRENCY=BTC/USD
#  ▌____________________________________________________.
#  █ API_KEY                                            .
#  ██ - Allows any valid API KEY (see the website of the exchange).
#  ██ - All exchanges must have API KEY.
#API_KEY=exampleapikey
API_KEY=ve22sverUDiW3C6t7bSoAVLmZ1fc6WyWeZhwkH3ucQV
#  ▌____________________________________________________.
#  █ API_SECRET                                         .
#  ██ - Allows any valid API SECRET (see the website of the exchange).
#  ██ - All exchanges must have API SECRET.
#API_SECRET=exampleapisecret
API_SECRET=DrIM7gOuDrm19uWVBvOfifo8qBJIxroPZJnpaqHLkJK
#  ▌____________________________________________________.
#  █ API_PASSPHRASE                                     .
#  ██ - Allows any valid API PASSPHRASE (see the website of the exchange).
#  ██ - Only COINBASE exchange must have API PASSPHRASE, other exchanges can be NULL.
#API_PASSPHRASE=exampleapipassphrase
API_PASSPHRASE=NULL
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#  ▌____                                                .
#  ▌ IV ▐______________________________________________ .
#  ▌¯¯¯¯                                                .
#  █ K_BINARY_FILE                                      .
#  ██ - Allows one executable file from PATH.
#K_BINARY_FILE=K-hello-world
K_BINARY_FILE=K-trading-bot
#  ██ - That's all. You can create multiple *.sh files ready to be executed anytime.
#  █  ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯.
#  ▌                                                    .
until `#valgrind` `#gdb --args` $K_BINARY_FILE          \
    --title      ${0##*/}                               \
    --port       $UI_OPENPORT                           \
    --user       $UI_USERNAME                           \
    --pass       $UI_PASSWORD                           \
    --exchange   $API_EXCHANGE                          \
    --currency   $API_CURRENCY                          \
    --apikey     $API_KEY                               \
    --secret     $API_SECRET                            \
    --passphrase $API_PASSPHRASE                        \
                 $OPTIONAL_ARGUMENTS "$@"           ;   #
  do                                                # K #
    echo K crashed with exit code $?.. Respawning.. ;   #
    sleep 3                                         ;   #
done                                                ;   #
#  ██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄;▄:wq
