
delete:
	docker rm seq2


echo:
	echo '<password>' | docker run --rm -i datalust/seq config hash

run:
	docker run \
  --name seq2 \
  --rm \
  -e ACCEPT_EULA=Y \
  -e SEQ_API_CANONICALURI=https://seq.example.com \
  -e SEQ_FIRSTRUN_ADMINPASSWORDHASH="FBat3g1er4SL+TDTLiSAKMOiiuUHu4R0C32c8uAB1cM2gPliLQ==" \
  -v seq-data:/data \
  -p 8002:80 \
  -p 5343:5341 \
  datalust/seq