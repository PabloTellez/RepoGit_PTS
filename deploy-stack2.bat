set Tinstancia=t2.small
aws cloudformation deploy --stack-name WordPressServer --template-file main4.yml --parameter-override InstanceType=%Tinstancia%