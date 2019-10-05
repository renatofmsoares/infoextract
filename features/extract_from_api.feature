Feature: Extract info from API

Scenario: Extracting ISTQB glossary in brazillian portuguese language
    Given the endpoint "https://glossary.istqb.org/api/v2/search"
    And 


POST /api/v2/search HTTP/1.1
Host: glossary.istqb.org
Connection: keep-alive
Content-Length: 324
Accept: application/json, text/plain, */*
User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36
Sec-Fetch-Mode: cors
Content-Type: multipart/form-data; boundary=----WebKitFormBoundaryym8htxB3Kh6gkIfZ
Origin: https://glossary.istqb.org
Sec-Fetch-Site: same-origin
Referer: https://glossary.istqb.org/pt/search
Accept-Encoding: gzip, deflate, br
Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7


fetch("https://glossary.istqb.org/api/v2/search", {"credentials":"omit","headers":{"accept":"application/json, text/plain, */*","accept-language":"en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7","content-type":"multipart/form-data; boundary=----WebKitFormBoundaryym8htxB3Kh6gkIfZ","sec-fetch-mode":"cors","sec-fetch-site":"same-origin"},"referrer":"https://glossary.istqb.org/pt/search","referrerPolicy":"no-referrer-when-downgrade","body":"------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name=\"term\"\r\n\r\n\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name=\"page\"\r\n\r\n1\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name=\"language\"\r\n\r\n55\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ--\r\n","method":"POST","mode":"cors"});


curl 'https://glossary.istqb.org/api/v2/search' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Origin: https://glossary.istqb.org' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36' -H 'Content-Type: multipart/form-data; boundary=----WebKitFormBoundaryym8htxB3Kh6gkIfZ' -H 'Accept: application/json, text/plain, */*' -H 'Referer: https://glossary.istqb.org/pt/search' -H 'Connection: keep-alive' --data-binary $
'------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name="term"\r\n\r\n\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name="page"\r\n\r\n0\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ\r\nContent-Disposition: form-data; name="language"\r\n\r\n55\r\n------WebKitFormBoundaryym8htxB3Kh6gkIfZ--\r\n' --compressed