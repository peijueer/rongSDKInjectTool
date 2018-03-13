.class public Lcom/lzy/okhttputils/https/HttpsUtils;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttputils/https/HttpsUtils$MyTrustManager;,
        Lcom/lzy/okhttputils/https/HttpsUtils$UnSafeTrustManager;,
        Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/lzy/okhttputils/https/HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 114
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 115
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 116
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 119
    :goto_1
    return-object v0

    .line 114
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSslSocketFactory(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;
    .locals 6

    .prologue
    .line 33
    new-instance v1, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    invoke-direct {v1}, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;-><init>()V

    .line 35
    :try_start_0
    invoke-static {p0, p1}, Lcom/lzy/okhttputils/https/HttpsUtils;->prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 36
    invoke-static {p2}, Lcom/lzy/okhttputils/https/HttpsUtils;->prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 37
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 39
    if-eqz v3, :cond_0

    .line 40
    new-instance v0, Lcom/lzy/okhttputils/https/HttpsUtils$MyTrustManager;

    invoke-static {v3}, Lcom/lzy/okhttputils/https/HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/lzy/okhttputils/https/HttpsUtils$MyTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 44
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 45
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, v1, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 46
    iput-object v0, v1, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 47
    return-object v1

    .line 42
    :cond_0
    new-instance v0, Lcom/lzy/okhttputils/https/HttpsUtils$UnSafeTrustManager;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/lzy/okhttputils/https/HttpsUtils$UnSafeTrustManager;-><init>(Lcom/lzy/okhttputils/https/HttpsUtils$1;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 50
    :catch_1
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 94
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 96
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :catch_2
    move-exception v1

    .line 102
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    :catch_3
    move-exception v1

    .line 104
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :catch_4
    move-exception v1

    .line 106
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :catch_5
    move-exception v1

    .line 108
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static varargs prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 61
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 64
    array-length v6, p0

    move v2, v1

    :goto_1
    if-ge v1, v6, :cond_3

    aget-object v7, p0, v1

    .line 65
    add-int/lit8 v3, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v4, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 68
    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    :try_start_2
    invoke-static {v2}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 77
    :catch_1
    move-exception v1

    .line 78
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_3
    :try_start_3
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 76
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    goto :goto_0

    .line 79
    :catch_2
    move-exception v1

    .line 80
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :catch_3
    move-exception v1

    .line 82
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :catch_4
    move-exception v1

    .line 84
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
