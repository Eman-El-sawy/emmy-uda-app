eb init udagram-api --platform node.js --region $AWS_REGION
eb create --sample udagram-api-dev
eb use udagram-api-dev
eb setenv  AWS_REGION=$AWS_REGION
 AWS_SECRET_ACCES_KEY=$AWS_SECRET_ACCES_KEY AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD DB_PORT=$DB_PORT POSTGRES_USERNAME=$POSTGRES_USERNAME PORT=$PORT

echo "deploy:
artifact: www/Archive.zip" >> .elasticbeanstalk/config.yml
 
eb deploy udagram-api-dev
