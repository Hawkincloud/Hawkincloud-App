# HawkinCloud	


![Logo](https://media.licdn.com/dms/image/C4E22AQFVYKQSeAQiBw/feedshare-shrink_800/0/1676488732559?e=2147483647&v=beta&t=HFqpHG8nQ8OHVztNWZQI9l_Ls6a7JCXHyXoJwyv9GGI)

## Support

For support, email aliyevdevops@gmail.com 



###
Audit, Monitor and Analyze your AWS Account activity.

## Getting Started

These instructions will cover usage information and for the Development Open-Source. 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

Install container and images from Github

```shell
git clone https://github.com/Hawkincloud/Hawkincloud-App.git
```

#### Environment Variables in AWS CLI

*	`Install AWS CLI`
`Initilize `
`Access-key, Secret-key, region, JSON`
*	`aws configure`

#### SQLALCHEMY setup


*	`flask shell`
*	`from app import db`
*	`db.create_all()`
*	`.exit `

#### SQLALCHEMY check setup
*	`sqlite3 database.db`

*	`select * from user;`

*	`exit()`


#### Run

* `FLASK_APP=app.py FLASK_DEBUG=1 flask run`




## Built With AWS Custom JSON

```


{
	"Version": "2012-10-17",
	"Statement": [
    	{
        	"Effect": "Allow",
        	"Action": "*",
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": [
            	"cloudtrail:Get*",
            	"cloudtrail:Describe*",
            	"cloudtrail:List*",
            	"cloudtrail:LookupEvents"
        	],
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": [
            	"iam:GenerateCredentialReport",
            	"iam:GenerateServiceLastAccessedDetails",
            	"iam:Get*",
            	"iam:List*",
            	"iam:SimulateCustomPolicy",
            	"iam:SimulatePrincipalPolicy"
            ],
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": "kms:ListKeys",
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": "kms:*",
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": [
            	"kms:GetParametersForImport",
            	"kms:DescribeCustomKeyStores",
            	"kms:ListKeys",
            	"kms:GetPublicKey",
  	          "kms:ListKeyPolicies",
            	"kms:ListRetirableGrants",
            	"kms:GetKeyRotationStatus",
            	"kms:ListAliases",
            	"kms:GetKeyPolicy",
            	"kms:DescribeKey",
            	"kms:ListResourceTags",
            	"kms:ListGrants"
        	],
        	"Resource": "*"
    	},
    	{
        	"Effect": "Allow",
        	"Action": "iam:ListUsers",
        	"Resource": "*"
    	}
	]
}
```



## Live Demo
# How to install virtualenv:


---------
	
#### Unix/macOS
```shell
python3 -m pip install --user --upgrade pip
```
```shell
python3 -m pip --version
```
```shell
python3 -m pip install --user virtualenv
```
```shell
python3 -m venv env
```
```shell
source env/bin/activate
```

#### Windows
```shell

py -m pip install --upgrade pip
```
```shell

py -m pip --version
```
```shell

py -m pip install --user virtualenv
```

```shell
py -m venv env
```

```shell
.\env\Scripts\activate
```

#### Pip Install Dependencies

```shell

pip install -r /path/to/requirements.txt
```




SQLALCHEMY Setup
```shell
in app.py line 20 - app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///database.db'

```
