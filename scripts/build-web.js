const fs = require('fs');const path = require('path');
const www = path.join(__dirname,'..','www');
if(!fs.existsSync(path.join(www,'index.html'))){console.error('www/index.html missing');process.exit(1)}
console.log('✅ Web assets ready');