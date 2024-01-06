#!/usr/bin/env zsh

function yamano:getimg() {
  cd "$L" && mkdir -p Yamano/_img && cd Yamano/_img || exit
  scp -r taichi.fukuda@yamano-prod-prm-bat01:'/tmp/CooperateChirashiImage_*' .
}

function yamano:getjson() {
    cd "$L" && mkdir -p Yamano/_json && cd Yamano/_json || exit

    paste <(echo "0017300 0049490 0019150 0055040 0003760 0004880" | tr ' ' '\n') <(echo "1-北関東 2-南関東 3-東海 4-北陸 5-近畿 6-中四国" | tr ' ' '\n') | while read number company; do
        mkdir "${company}" && cd "${company}" || exit
        scp "yamano-stg-prm-web01:/mnt-chirashi/web/www/viewer/json/${number}.json" .
        cd ..
    done
}