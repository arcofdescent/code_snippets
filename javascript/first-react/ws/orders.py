#!/usr/bin/python3

from http.server import BaseHTTPRequestHandler, HTTPServer
import collections
import json

# HTTPRequestHandler class
class testHTTPServer_RequestHandler(BaseHTTPRequestHandler):

    # GET
    def do_GET(self):
        
        # Send response status code
        self.send_response(200)

        # Send headers
        self.send_header('Content-type','text/html')
        self.end_headers()

        orders = { 'orders': get_orders() }
        orders_json = json.dumps(orders)
        
        # Send message back to client
        #message = "Hello world!"
        
        # Write content as utf-8 data
        self.wfile.write(bytes(orders_json, "utf8"))
        
        return

    def do_POST(self):

        content_length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(content_length).decode('utf-8')

        print("post_data: %s" % post_data)
        points = json.loads(post_data)

        print("points: %s" % points['points'])

        points = [tsp.Point(p['id'], p['x'], p['y']) for p in points['points']]
        distances = tsp.calc_distance_between_points(points)
        print("distances: %s" % distances)

        shortest_route_length = tsp.calc_shortest_route(len(points), distances)

        ret = { 'length': shortest_route_length }
        ret_json = json.dumps(ret)
        
        self.send_response(200)
        #self.wfile.write(bytes("thanks", "utf8"))
        self.wfile.write(bytes(ret_json, "utf8"))

        return
    
def run():
    print('starting server...')

    # Server settings
    # Choose port 8080, for port 80, which is normally used for a http server, you need root access
    server_address = ('127.0.0.1', 8081)
    httpd = HTTPServer(server_address, testHTTPServer_RequestHandler)
    print('server listening on 127.0.0.1:8081')
    httpd.serve_forever()
    
def get_orders():
    
    orders = [
        { 'id': 19829, 'date': '2017-07-25' },
        { 'id': 19834, 'date': '2017-07-28' },
    ]

    return orders

run()
