# NVIDIA k3s container

Create a RuntimeClass for nvidia
```
kubectl apply -f nvidia-runtimeclass.yaml
```

Deploy the NVIDIA Device Plugin (v0.17.1) as a DaemonSet
```
kubectl apply -f nvidia-device-plugin.yml
```

verify
```
kubectl describe node $(hostname) | sed -n '/Capacity:/,/Allocatable:/p'
```

should see 
```
  nvidia.com/gpu: 1
```

run test
```
kubectl apply -f gpu-test.yaml.yml
````
=======


kubectl apply -f nvidia-runtimeclass.yaml

kubectl apply -f nvidia-device-plugin.yml

kubectl apply -f gpu-test.yaml.yml

