# Multi-Deployment Helm Chart

このHelmチャートは、Kubernetes上で複数のデプロイメントを行うためのものです。

## インストール方法

以下のコマンドを使用して、Helmチャートをインストールします。

```sh
helm install my-multi-deployment . --set baseName=sample-app --set replicaCount=1 --set replicas=2 --set resources.limits.cpu='2.0' --set resources.limits.memory='16Gi' --set resources.requests.cpu='2.0' --set resources.requests.memory='16Gi' --set enclosureSpread=true --set nodeSpread=true
```

### パラメータ

- `baseName`: デプロイメントのベース名（デフォルト: `sample-app`）
- `replicaCount`: デプロイメントの数（デフォルト: `1`）
- `replicas`: 各デプロイメントのレプリカ数（デフォルト: `2`）
- `resources.limits.cpu`: CPUの制限（デフォルト: `'2.0'`）
- `resources.limits.memory`: メモリの制限（デフォルト: `'16Gi'`）
- `resources.requests.cpu`: CPUのリクエスト（デフォルト: `'2.0'`）
- `resources.requests.memory`: メモリのリクエスト（デフォルト: `'16Gi'`）
- `enclosureSpread`: エンクロージャ分散の有効化（デフォルト: `false`）
- `nodeSpread`: ノード分散の有効化（デフォルト: `false`）

## アンインストール方法

以下のコマンドを使用して、Helmリリースをアンインストールします。

```sh
helm uninstall my-multi-deployment
```