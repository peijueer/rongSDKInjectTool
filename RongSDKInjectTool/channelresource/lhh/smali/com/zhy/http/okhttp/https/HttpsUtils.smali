.class public Lcom/zhy/http/okhttp/https/HttpsUtils;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/https/HttpsUtils$1;,
        Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;,
        Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeTrustManager;,
        Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeHostnameVerifier;,
        Lcom/zhy/http/okhttp/https/HttpsUtils$SSLParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method static synthetic access$100([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "x0"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/zhy/http/okhttp/https/HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 5
    .param p0, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 184
    .local v3, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 186
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .line 189
    .end local v3    # "trustManager":Ljavax/net/ssl/TrustManager;
    :goto_1
    return-object v3

    .line 182
    .restart local v3    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getSslSocketFactory([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lcom/zhy/http/okhttp/https/HttpsUtils$SSLParams;
    .locals 8
    .param p0, "certificates"    # [Ljava/io/InputStream;
    .param p1, "bksFile"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v3, Lcom/zhy/http/okhttp/https/HttpsUtils$SSLParams;

    invoke-direct {v3}, Lcom/zhy/http/okhttp/https/HttpsUtils$SSLParams;-><init>()V

    .line 40
    .local v3, "sslParams":Lcom/zhy/http/okhttp/https/HttpsUtils$SSLParams;
    :try_start_0
    invoke-static {p0}, Lcom/zhy/http/okhttp/https/HttpsUtils;->prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 41
    .local v5, "trustManagers":[Ljavax/net/ssl/TrustManager;
    invoke-static {p1, p2}, Lcom/zhy/http/okhttp/https/HttpsUtils;->prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 42
    .local v1, "keyManagers":[Ljavax/net/ssl/KeyManager;
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 43
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    .line 44
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v5, :cond_0

    .line 46
    new-instance v4, Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;

    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v5}, Lcom/zhy/http/okhttp/https/HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/zhy/http/okhttp/https/HttpsUtils$MyTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 51
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 52
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iput-object v6, v3, Lcom/zhy/http/okhttp/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 53
    iput-object v4, v3, Lcom/zhy/http/okhttp/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 54
    return-object v3

    .line 49
    :cond_0
    new-instance v4, Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeTrustManager;

    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeTrustManager;-><init>(Lcom/zhy/http/okhttp/https/HttpsUtils$1;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 55
    .end local v1    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    .end local v5    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 58
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 61
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method private static prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 5
    .param p0, "bksFile"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 150
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v3

    .line 152
    :cond_1
    :try_start_0
    const-string v4, "BKS"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 153
    .local v0, "clientKeyStore":Ljava/security/KeyStore;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 154
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 155
    .local v2, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 156
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    goto :goto_0

    .line 158
    .end local v0    # "clientKeyStore":Ljava/security/KeyStore;
    .end local v2    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 166
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_3
    move-exception v1

    .line 169
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static varargs prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .locals 13
    .param p0, "certificates"    # [Ljava/io/InputStream;

    .prologue
    const/4 v11, 0x0

    .line 99
    if-eqz p0, :cond_0

    array-length v12, p0

    if-gtz v12, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v11

    .line 103
    :cond_1
    :try_start_0
    const-string v12, "X.509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 104
    .local v3, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 105
    .local v8, "keyStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 106
    const/4 v6, 0x0

    .line 107
    .local v6, "index":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/io/InputStream;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v7, v6

    .end local v6    # "index":I
    .local v7, "index":I
    :goto_1
    if-ge v5, v9, :cond_3

    aget-object v1, v0, v5

    .line 109
    .local v1, "certificate":Ljava/io/InputStream;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "certificateAlias":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    invoke-virtual {v8, v2, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 113
    if-eqz v1, :cond_2

    .line 114
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 107
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_1

    .line 120
    .end local v1    # "certificate":Ljava/io/InputStream;
    .end local v2    # "certificateAlias":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    .line 122
    .local v10, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v10

    .line 124
    invoke-virtual {v10, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 126
    invoke-virtual {v10}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v11

    .line 128
    .local v11, "trustManagers":[Ljavax/net/ssl/TrustManager;
    goto :goto_0

    .line 129
    .end local v0    # "arr$":[Ljava/io/InputStream;
    .end local v3    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "i$":I
    .end local v7    # "index":I
    .end local v8    # "keyStore":Ljava/security/KeyStore;
    .end local v9    # "len$":I
    .end local v10    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v11    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 134
    .local v4, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v4

    .line 137
    .local v4, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :catch_3
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/io/InputStream;
    .restart local v1    # "certificate":Ljava/io/InputStream;
    .restart local v2    # "certificateAlias":Ljava/lang/String;
    .restart local v3    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "i$":I
    .restart local v6    # "index":I
    .restart local v8    # "keyStore":Ljava/security/KeyStore;
    .restart local v9    # "len$":I
    :catch_4
    move-exception v12

    goto :goto_2
.end method
