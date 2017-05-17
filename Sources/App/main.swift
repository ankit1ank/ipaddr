import Vapor

let drop = Droplet()

drop.get("/") { request in
  if let address = request.peerAddress?.address() {
      return address
  } else {
      return "No address"
  }
}

drop.run()
