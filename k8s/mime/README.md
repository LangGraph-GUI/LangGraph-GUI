# MIME issue


nginx usually trigger error that not right mime types, such regard css as plain text

it's falling back to the default `text/html` for MIME types.

**The Solution:**

You need to *create* the `my-ingress-ingress-nginx-controller` ConfigMap in the `ingress-nginx` namespace.  Here's how:

1.  **Create a `configmap.yaml` file:**

    Create a file named `configmap.yaml` (or any name you prefer) with the following content:

    ```yaml
        apiVersion: v1
        kind: ConfigMap
        metadata:
        name: my-ingress-ingress-nginx-controller
        namespace: ingress-nginx
        labels:
            app.kubernetes.io/name: ingress-nginx
            app.kubernetes.io/component: controller
        data:
        mime-types.conf: |
            include /etc/nginx/mime.types;
    ```

    **Important:**

    *   Make sure the `name` and `namespace` in the `metadata` section match the values expected by the Ingress Controller (`my-ingress-ingress-nginx-controller` and `ingress-nginx`, respectively).  These values MUST match the command-line arguments passed to the pod.
    *   Include the `labels` as shown.  These labels are often used by the Ingress Controller to identify the ConfigMap.
    *   Double-check the indentation is correct. YAML is sensitive to indentation.

2.  **Apply the ConfigMap:**

    ```bash
    kubectl apply -f configmap.yaml
    ```

3.  **Verify the ConfigMap is Created:**

    ```bash
    kubectl -n ingress-nginx get configmaps
    ```

    You should now see `my-ingress-ingress-nginx-controller` in the list.

4.  **Restart the Ingress Controller Deployment:**

    ```bash
    kubectl -n ingress-nginx rollout restart deployment my-ingress-ingress-nginx-controller
    ```

5.  **Test!**

    ```bash
    curl -I https://yourdomain/assets/xxxx.css
    curl -I https://yourdomain/xxxx.js
    ```

    You should now get the correct `content-type` headers.

**Explanation:**

The Ingress Controller *expects* the `my-ingress-ingress-nginx-controller` ConfigMap to exist. Because it doesn't exist, the Ingress Controller is running with a default, minimal configuration that doesn't include the correct MIME type mappings. Creating the ConfigMap provides the Ingress Controller with the configuration it needs.

This *should* finally solve the problem. Let me know if you encounter any issues!
