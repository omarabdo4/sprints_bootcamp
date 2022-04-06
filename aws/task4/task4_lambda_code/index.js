const aws = require('aws-sdk');
const s3 = new aws.S3();
const sharp = require("sharp");

exports.handler = async (event) => {
    
    const bucketName = event.Records[0].s3.bucket.name
    const { key } = event.Records[0].s3.object;

    const uncompressedImage = await s3.getObject({
        Bucket: bucketName,
        Key: key,
    }).promise();

    const compressedImageBuffer = await sharp(uncompressedImage.Body)
    .resize({
      width: 200,
      height: 200,
      fit: "cover",
    })
    .toBuffer();
    
    let newKey = "compressed_img/" + key.split("/")[1]
    
    await s3.putObject({
        Bucket: bucketName,
        Key: newKey,
        Body: compressedImageBuffer,
        ContentType: "image",
    }).promise();
    
    
    // TODO implement
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello from Lambda!'),
    };
    
    return response;
};
