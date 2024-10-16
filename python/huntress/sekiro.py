import socket

# Define the connection parameters
HOST = 'challenge.ctf.games'
PORT = 30238

# Define the response rules
response_rules = {
    'retreat': 'strike',
    'advance': 'retreat',
    'block': 'advance',
    'strike': 'block'
}

# Connect to the server
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))
    print(f"Connected to {HOST} on port {PORT}")
    
    # Continuously listen and respond to the server
    while True:
        # Receive the message from the server
        try:
            # Handle invalid characters by ignoring errors
            data = s.recv(1024).decode('utf-8', errors='ignore')
        except UnicodeDecodeError as e:
            print(f"Decoding error: {e}")
            continue  # Continue listening if there's a decoding error

        if not data:
            break  # Connection closed
        
        # Print the received message from the server
        print(f"Server: {data.strip()}")
        
        # Check if any of the response keys are in the message
        for key in response_rules:
            if key in data.lower():
                # Send the corresponding response
                response = response_rules[key]
                s.sendall(response.encode('utf-8'))
                print(f"Responded with: {response}")
                break
