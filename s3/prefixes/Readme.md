## Create bucket

```sh
aws s3 mb s3://prefixes-fun-ff-2577
```

## Create folder

```sh
aws s3api put-object --bucket="prefixes-fun-ff-2577" --key="hello/"
```

## Create many folders
Test 1023
```sh
aws s3api put-object --bucket="prefixes-fun-ff-2577" \
--key="lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/duis/sem/orci/sodales/non/fermentum/vel/laoreet/in/metus/vestibulum/pretium/sagittis/ornare/nunc/tempor/blandit/sapien/integer/quis/orci/ac/nibh/congue/gravida/sed/nec/consectetur/metus/etiam/vitae/pellentesque/quam/id/rhoncus/leo/vestibulum/sed/turpis/nisi/ut/quis/ante/sem/vestibulum/egestas/ornare/dolor/vel/egestas/nisl/rhoncus/in/nunc/rhoncus/lorem/libero/a/pulvinar/eros/eleifend/vel/maecenas/vehicula/massa/vitae/vulputate/sodales/neque/ante/ullamcorper/massa/in/tincidunt/ligula/nunc/sit/amet/eros/vivamus/eu/ultrices/orci/sit/amet/viverra/ligula/pellentesque/fringilla/quam/sed/magna/congue/sit/amet/hendrerit/eros/dapibus/aliquam/finibus/sit/amet/lacus/congue/cursus/in/pretium/lorem/est/praesent/consectetur/condimentum/porta/etiam/ac/mi/eget/enim/maximus/semper/nullam/scelerisque/diam/sed/placerat/molestie/tortor/magna/varius/velit/vel/sodales/sapien/massa/id/eros/donec/id/massa/odio/donec/condimentum/lectus/id/viverra/ppppppppppppppppppppppppppppppppp/"


```

## Try and break the limit
This breaks the limit
```sh
aws s3api put-object --bucket="prefixes-fun-ff-2577" \
--key="lorem/ipsum/dolor/sit/amet/consectetur/adipiscing/elit/duis/sem/orci/sodales/non/fermentum/vel/laoreet/in/metus/vestibulum/pretium/sagittis/ornare/nunc/tempor/blandit/sapien/integer/quis/orci/ac/nibh/congue/gravida/sed/nec/consectetur/metus/etiam/vitae/pellentesque/quam/id/rhoncus/leo/vestibulum/sed/turpis/nisi/ut/quis/ante/sem/vestibulum/egestas/ornare/dolor/vel/egestas/nisl/rhoncus/in/nunc/rhoncus/lorem/libero/a/pulvinar/eros/eleifend/vel/maecenas/vehicula/massa/vitae/vulputate/sodales/neque/ante/ullamcorper/massa/in/tincidunt/ligula/nunc/sit/amet/eros/vivamus/eu/ultrices/orci/sit/amet/viverra/ligula/pellentesque/fringilla/quam/sed/magna/congue/sit/amet/hendrerit/eros/dapibus/aliquam/finibus/sit/amet/lacus/congue/cursus/in/pretium/lorem/est/praesent/consectetur/condimentum/porta/etiam/ac/mi/eget/enim/maximus/semper/nullam/scelerisque/diam/sed/placerat/molestie/tortor/magna/varius/velit/vel/sodales/sapien/massa/id/eros/donec/id/massa/odio/donec/condimentum/lectus/id/viverra/ppppppppppppppppppppppppppppppppp/hello.txt" --body="hello.txt"


```