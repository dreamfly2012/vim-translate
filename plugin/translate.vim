function! Translate()
    let text = expand("<cword>")    
    let query = "curl -s 'http://fanyi.youdao.com/translate?&doctype=json&type=AUTO&i=" . text . "' | jq '.translateResult[0][0].tgt'"
    let result = system(query)
    call popup_notification(result,{})
    "echomsg result
endfunction

command! Trans call Translate()
