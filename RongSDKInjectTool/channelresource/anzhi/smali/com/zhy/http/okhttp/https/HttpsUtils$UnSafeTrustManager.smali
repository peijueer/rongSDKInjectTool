.class Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeTrustManager;
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
    name = "UnSafeTrustManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhy/http/okhttp/https/HttpsUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zhy/http/okhttp/https/HttpsUtils$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeTrustManager;-><init>()V

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
    .line 82
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
