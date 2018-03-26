.class Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;
.super Ljava/lang/Object;
.source "HttpsUtils.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/http/okhttp/https/HttpsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTrustManager"
.end annotation


# instance fields
.field private defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private localTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p1, "localTrustManager"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 201
    .local v0, "var4":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 202
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    # invokes: Lcom/zhy/http/okhttp/https/HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    invoke-static {v1}, Lcom/zhy/http/okhttp/https/HttpsUtils;->access$100([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 203
    iput-object p1, p0, Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;->localTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 204
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ce":Ljava/security/cert/CertificateException;
    iget-object v1, p0, Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;->localTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
