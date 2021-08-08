
POOL=asia1.ethermine.org:4444
WALLET=0xf48d78548d348a72278d4e752b90d192b2fa17b5.gud


cd "$(dirname "$0")"

./ea --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 35 ]; do
    sleep 5s
    ./ea --algo ETHASH --pool $POOL --user $WALLET $@
done
