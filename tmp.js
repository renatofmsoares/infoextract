'use strict';
const chai = require('chai');
const chaiHttp = require('chai-http');
const fs = require('fs');
chai.use(chaiHttp);


const getISTQBGlossaryPerPage = async (page) => {
    const res = await chai
      .request("https://glossary.istqb.org")
      .post(`/api/v2/search`)
      .set('Host', 'glossary.istqb.org')
      .set('Connection', 'keep-alive')
      .set('Content-Length', '324')
      .set('Accept', 'application/json, text/plain, */*')
      .set('User-Agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36')
      .set('Sec-Fetch-Mode', 'cors')
      .set('Content-Type', 'multipart/form-data; boundary=----WebKitFormBoundaryym8htxB3Kh6gkIfZ')
      .set('Origin', 'https://glossary.istqb.org')
      .set('Sec-Fetch-Site', 'same-origin')
      .set('Referer', 'https://glossary.istqb.org/pt/search')
      .set('Accept-Encoding', 'gzip, deflate, br')
      .set('Accept-Language', 'en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7')
      .send(`------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name="term"\r\n\r\n\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name="page"\r\n\r\n${page}\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name="language"\r\n\r\n55\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ--\r\n`)

    return res.body.results;
  }

  const main = async () => {
    let file_content = "";
    let file_path = "ctfl_glossary_anki_cards.txt";
    for (let i=0;i<36;i++){
        console.log(`Capturing page "${i}".`)
        let terms =  await getISTQBGlossaryPerPage(i);
        terms.map(term => {
            file_content = file_content + term.TermID + '\t' + term.Definition + '\t' + term.Name + '\n';
            // console.log(`Name:`, term.Name);
            // console.log(`Definition:`, term.Definition);
        })
    }
    fs.writeFile(file_path, file_content, (err) => {
        if (err) throw err;
        console.log("The file was succesfully saved!");
    });
  }

  main();
  
  