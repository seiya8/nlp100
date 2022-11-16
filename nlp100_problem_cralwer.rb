require 'chrome_remote'

def navigate_and_wait(url)
  @chrome.send_cmd 'Page.navigate', url: url
  loop do
    sleep(1.5)
    response = @chrome.send_cmd 'Runtime.evaluate', expression: 'document.readyState;'
    break if response['result']['value'] == 'complete'
  end
end

@chrome = ChromeRemote.client
navigate_and_wait('https://nlp100.github.io/ja/')
result_hash = @chrome.send_cmd 'Runtime.evaluate', expression: "Array.from(document.querySelectorAll('.feature__item .archive__item-teaser a')).map(a => a.href);", returnByValue: true
ch_urls = result_hash['result']['value']

puts "|Chapter|No.|Title|Python|"
puts "|---|---|---|---|"
ch_urls.each_with_index do |ch_url, i|
  navigate_and_wait(ch_url)
  section = i<10 ? "0#{i+1}" : i
  result_hash = @chrome.send_cmd 'Runtime.evaluate', expression: "Array.from(document.querySelectorAll('.page__content h2 a')).map(a => a.previousSibling.textContent);", returnByValue: true
  titles = result_hash['result']['value']
  titles.each do |title|
    no = title.split(' ')[0][..1]
    text = title.split(' ')[-1]
    puts no.to_i % 10 == 0 ? "|[#{section}](#{ch_url})|#{no}|#{text}||" : "||#{no}|#{text}||"
  end
end