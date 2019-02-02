#usage savepostlist.sh <blog-domain>

mkdir -p work
rm -f work/posts.txt
./getpostlist.sh $1 | sort -u > work/posts.txt
