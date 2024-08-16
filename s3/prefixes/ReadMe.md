## Create a bucket
```sh
aws s3 mb s3://prefixes-fun-ab-0816
```

## Create a folder
```sh
aws s3api put-object --bucket="prefixes-fun-ab-0816" --key="hello/"
```

### Create many folders
```sh
aws s3api put-object --bucket="prefixes-fun-ab-0816" --key="Lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/Donec/lacinia/erat/nec/sapien/fringilla/consequat/Sed/finibus/ante/sit/amet/neque/elementum/in/pulvinar/augue/posuere/Cras/at/fermentum/magna/Duis/et/vehicula/neque/non/pellentesque/lectus/Nullam/quis/nulla/mollis/euismod/sapien/quis/mattis/tellus/Fusce/varius/at/nisi/at/imperdiet/Etiam/urna/mi/dictum/aliquam/mi/in/gravida/fringilla/lectus/Donec/tempor/ut/velit/in/ultrices/Fusce/vitae/lectus/at/felis/suscipit/imperdiet/Maecenas/viverra/mi/non/lectus/iaculis/in/accumsan/eros/pellentesque/Sed/accumsan/libero/non/rhoncus/porta/augue/purus/volutpat/magna/vel/tempor/magna/eros/in/arcu/Donec/volutpat/enim/sapien/nec/elementum/quam/vehicula/non/Ut/quis/fringilla/enim/Cras/turpis/enim/vehicula/ac/finibus/a/cursus/ut/tortor/Vivamus/sit/amet/elementum/odio/Sed/efficitur/massa/metus/id/interdum/mi/efficitur/ac/Phasellus/ultricies/libero/diam/sed/mattis/nisl/pharetra/ut/Duis/bibendum/sapien/non/posuere/efficitur/elit/diam/cras/amet/zoe/oze/kax/gyi/hello.txt" --body="hello.txt"
```