# filepath: /create-workspaces-project/create-workspaces-project/makefiles/argocd.mk
# Reglas para gestionar ArgoCD

# Desplegar aplicaciones en ArgoCD
deploy-argocd-app:
	@echo "Desplegando aplicación en ArgoCD..."
	argocd app create my-app --repo https://github.com/mi-repo.git --path helm-charts/kuma --dest-server https://kubernetes.default.svc --dest-namespace default
	@echo "Aplicación desplegada exitosamente en ArgoCD."

# Sincronizar aplicaciones en ArgoCD
sync-argocd-app:
	@echo "Sincronizando aplicación en ArgoCD..."
	argocd app sync my-app
	@echo "Aplicación sincronizada exitosamente en ArgoCD."

# Eliminar aplicación de ArgoCD
delete-argocd-app:
	@echo "Eliminando aplicación de ArgoCD..."
	argocd app delete my-app --yes
	@echo "Aplicación eliminada exitosamente de ArgoCD."