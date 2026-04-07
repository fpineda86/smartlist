<!--
Sync Impact Report:
- Version change: 1.0.0 → 1.1.0
- List of modified principles: Added "Automatización de Ramas y Trazabilidad"
- Added sections: None
- Removed sections: None
- Templates requiring updates: ✅ .specify/templates/plan-template.md (Constitution Check updated with branch automation)
- Runtime docs updated: None
- Follow-up TODOs: None
-->

# Smart List Constitution

## Core Principles

### Propósito y Visión
Producto: Aplicación móvil de listas de compras inteligente con comparador de precios (Amazon/eBay). Eslogan: "Find the cheapest, but the best". Meta: Agilizar la decisión de compra mediante un algoritmo de Urgencia y comparación de costos en tiempo real.

### Estrategia de Datos y Almacenamiento (Fase 1)
Persistencia On-Device: El almacenamiento será estrictamente interno (Local Storage) para eliminar la dependencia de servidores externos, reducir latencia y garantizar costo cero de infraestructura en el lanzamiento. Diseño para el Cambio: Se implementará el Patrón Repositorio (Repository Pattern) para que la migración a la nube en fases futuras sea una "conexión de cable" sin alterar la lógica de negocio.

### Rigor Técnico y Calidad
Arquitectura: Hexagonal (Puertos y Adaptadores). Desacoplamiento total entre Dominio, Aplicación e Infraestructura. Metodología: TDD (Test Driven Development) obligatorio para el motor de comparación y lógica de listas. Código: Aplicación estricta de principios SOLID, Clean Code y uso exclusivo de librerías FOSS (Software Libre). Rendimiento: Optimización de UI para la tablet Lenovo P11 mediante gestión de estado eficiente (Provider) e inmutabilidad estratégica.

### Gobernanza del Proyecto
Proceso: speckit-constitution -> spec -> plan -> tasks -> analyze. IA-Friendly: Toda la documentación técnica debe ser procesable por Codex/Gemini para mantener la coherencia del sistema.

### Automatización de Ramas y Trazabilidad
Cada vez que se inicialice una nueva Épica/Spec mediante el comando spec, el sistema (o el desarrollador mediante Spec-Kit) debe generar una rama automática siguiendo este estándar estricto: Formato de Rama: SPEC-[###]: [Breve-Descripcion]. Identificador (ID): Secuencial de tres dígitos (ej. 001, 002). Descripción: Máximo 5 palabras, separadas por guiones, que resuman la funcionalidad. Regla de Oro: Ningún código puede ser pusheado a main sin haber pasado por una rama SPEC con su respectiva validación de analyze.

## Additional Constraints

Tecnología: Flutter para desarrollo móvil multiplataforma. Almacenamiento local con SQLite o similar para persistencia estructurada.

## Development Workflow

Seguimiento del proceso speckit para desarrollo estructurado. Enfoque en TDD y arquitectura hexagonal.

## Governance

Constitution supersedes all other practices; Amendments require documentation, approval, migration plan. All PRs/reviews must verify compliance; Complexity must be justified.

**Version**: 1.1.0 | **Ratified**: 2026-04-07 | **Last Amended**: 2026-04-07
