# kafka_test
Use the command to start container from image(by default zookeeper is working on localhost 2181): 
docker run -d --net="host" IMAGE_NAME;
Add this param to prev command to change zookeeper ip location:
--override zookeeper.connect=IP:PORT
Thank you!
