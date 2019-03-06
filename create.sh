gcloud beta container clusters create standard-cluster-1 --enable-pod-security-policy --region us-central1-a
gcloud container clusters get-credentials standard-cluster-1 --region us-central1-a
kubectl get pod --all-namespaces
kubectl create namespace example
kubectl apply -f all.yaml -n example
echo "This should fail"
kubectl --as=system:serviceaccount:example:jeronimo -n example apply -f privpod.yaml
echo "This should work"
kubectl -n example apply -f privpod.yaml

