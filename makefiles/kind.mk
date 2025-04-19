# filepath: /create-workspaces-project/create-workspaces-project/makefiles/kind.mk
# Reglas para gestionar Kind (Kubernetes en Docker)

# Crear un clúster de Kind
create-kind-cluster:
	@echo "Creando clúster de Kind..."
	kind create cluster
	@echo "Clúster de Kind creado exitosamente."

# Eliminar el clúster de Kind
delete-kind-cluster:
	@echo "Eliminando clúster de Kind..."
	kind delete cluster
	@echo "Clúster de Kind eliminado exitosamente."

# Configurar el contexto de Kind
setup-kind-context:
	@echo "Configurando el contexto de Kind..."
	kubectl config use-context kind-kind
	@echo "Contexto de Kind configurado exitosamente."