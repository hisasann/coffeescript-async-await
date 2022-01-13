timer = (value, delay) ->
  return new Promise (resolve, reject) ->
    setTimeout ( ->
      resolve(value)
      return
    ), delay

asyncFunc = ->
  console.log await timer(1, 0)
  console.log await timer(2, 100)
  console.log await timer(3, 1000)

asyncFunc()
