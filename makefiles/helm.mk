# filepath: /create-workspaces-project/create-workspaces-project/makefiles/helm.mk

# Reglas para gestionar Helm Charts

# Instalar un chart de Helm
install-helm-chart:
	@echo "Instalando el chart de Helm..."
	helm install kuma ./helm-charts/kuma

# Actualizar un chart de Helm
upgrade-helm-chart:
	@echo "Actualizando el chart de Helm..."
	helm upgrade kuma ./helm-charts/kuma

# Desinstalar un chart de Helm
uninstall-helm-chart:
	@echo "Desinstalando el chart de Helm..."
	helm uninstall kuma

# Listar los charts de Helm instalados
list-helm-charts:
	@echo "Listando los charts de Helm instalados..."
	helm list

# Ver el estado de un chart de Helm
status-helm-chart:
	@echo "Verificando el estado del chart de Helm..."
	helm status kuma