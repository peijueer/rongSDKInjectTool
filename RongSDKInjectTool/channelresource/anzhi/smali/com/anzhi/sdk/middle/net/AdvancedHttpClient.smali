.class public Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$NetworkInfoUnavailableException;,
        Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$SSLSocketFactoryEx;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXECUTE_RETRY_TIMES:I = 0xa

.field private static final TIMEOUT:I = 0x3c


# instance fields
.field private mApnInfo:Lcom/anzhi/sdk/middle/net/ApnInfo;

.field private volatile mShutdownRetry:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mShutdownRetry:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mShutdownRetry:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mShutdownRetry:Z

    .line 72
    return-void
.end method

.method public static createDefaultClient(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$NetworkInfoUnavailableException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->createDefaultClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;Z)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/anzhi/sdk/middle/net/ApnInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$NetworkInfoUnavailableException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->createDefaultClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;Z)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;Z)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/anzhi/sdk/middle/net/ApnInfo;
    .param p2, "redirectEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$NetworkInfoUnavailableException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p2}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->createDefaultHttpParams(Z)Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 120
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/4 v5, 0x0

    .line 122
    .local v5, "proxyStr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 123
    invoke-static {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getInstance(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/Connectivity;

    move-result-object v1

    .line 124
    .local v1, "conn":Lcom/anzhi/sdk/middle/net/Connectivity;
    invoke-virtual {v1}, Lcom/anzhi/sdk/middle/net/Connectivity;->getCurrentApnInfo()Lcom/anzhi/sdk/middle/net/ApnInfo;

    move-result-object p1

    .line 126
    .end local v1    # "conn":Lcom/anzhi/sdk/middle/net/Connectivity;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "netType = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    move-result-object v6

    sget-object v7, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->WIFI:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    move-result-object v6

    sget-object v7, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NONE:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    if-eq v6, v7, :cond_3

    .line 130
    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getProxy()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getPort()I

    move-result v4

    .line 133
    .local v4, "port":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 134
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 135
    const/16 v4, 0x50

    .line 138
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "proxyStr = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 139
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v5, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 140
    .local v2, "host":Lorg/apache/http/HttpHost;
    const-string v6, "http.route.default-proxy"

    invoke-interface {v3, v6, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 148
    .end local v2    # "host":Lorg/apache/http/HttpHost;
    .end local v4    # "port":I
    :goto_0
    new-instance v0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;

    invoke-direct {v0, v3}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 149
    .local v0, "client":Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    iput-object p1, v0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mApnInfo:Lcom/anzhi/sdk/middle/net/ApnInfo;

    .line 150
    return-object v0

    .line 142
    .end local v0    # "client":Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .restart local v4    # "port":I
    :cond_2
    const-string v6, "http.route.default-proxy"

    invoke-interface {v3, v6}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_0

    .line 145
    .end local v4    # "port":I
    :cond_3
    const-string v6, "http.route.default-proxy"

    invoke-interface {v3, v6}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static final createDefaultHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->createDefaultHttpParams(Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public static final createDefaultHttpParams(Z)Lorg/apache/http/params/HttpParams;
    .locals 3
    .param p0, "redirectEnable"    # Z

    .prologue
    const v2, 0xea60

    .line 161
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 165
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 167
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 168
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 169
    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 170
    invoke-static {v0, p0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 171
    return-object v0
.end method

.method public static createSSLHttpClient(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->createSSLHttpClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;Z)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createSSLHttpClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/anzhi/sdk/middle/net/ApnInfo;

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->createSSLHttpClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;Z)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createSSLHttpClient(Landroid/content/Context;Lcom/anzhi/sdk/middle/net/ApnInfo;Z)Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/anzhi/sdk/middle/net/ApnInfo;
    .param p2, "redirectEnable"    # Z

    .prologue
    .line 183
    invoke-static/range {p2 .. p2}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->createDefaultHttpParams(Z)Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 184
    .local v6, "params":Lorg/apache/http/params/HttpParams;
    const/4 v8, 0x0

    .line 186
    .local v8, "proxyStr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 187
    invoke-static/range {p0 .. p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getInstance(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/Connectivity;

    move-result-object v3

    .line 188
    .local v3, "conn":Lcom/anzhi/sdk/middle/net/Connectivity;
    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/net/Connectivity;->getCurrentApnInfo()Lcom/anzhi/sdk/middle/net/ApnInfo;

    move-result-object p1

    .line 190
    .end local v3    # "conn":Lcom/anzhi/sdk/middle/net/Connectivity;
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "netType = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    move-result-object v12

    sget-object v13, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->WIFI:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    move-result-object v12

    sget-object v13, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NONE:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    if-eq v12, v13, :cond_3

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getProxy()Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getPort()I

    move-result v7

    .line 195
    .local v7, "port":I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 196
    const/4 v12, -0x1

    if-ne v7, v12, :cond_1

    .line 197
    const/16 v7, 0x50

    .line 200
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "proxyStr = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", port "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 201
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-direct {v5, v8, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 202
    .local v5, "host":Lorg/apache/http/HttpHost;
    const-string v12, "http.route.default-proxy"

    invoke-interface {v6, v12, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 210
    .end local v5    # "host":Lorg/apache/http/HttpHost;
    .end local v7    # "port":I
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 211
    .local v11, "trustStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 213
    new-instance v10, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$SSLSocketFactoryEx;

    invoke-direct {v10, v11}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 214
    .local v10, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v12, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v10, v12}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 216
    sget-object v12, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v6, v12}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 217
    const-string v12, "UTF-8"

    invoke-static {v6, v12}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 219
    new-instance v9, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 220
    .local v9, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v14

    const/16 v15, 0x50

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 221
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "https"

    const/16 v14, 0x1bb

    invoke-direct {v12, v13, v10, v14}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 223
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v6, v9}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 225
    .local v1, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;

    invoke-direct {v2, v1, v6}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 226
    .local v2, "client":Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mApnInfo:Lcom/anzhi/sdk/middle/net/ApnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "client":Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .end local v9    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v10    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v11    # "trustStore":Ljava/security/KeyStore;
    :goto_1
    return-object v2

    .line 204
    .restart local v7    # "port":I
    :cond_2
    const-string v12, "http.route.default-proxy"

    invoke-interface {v6, v12}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_0

    .line 207
    .end local v7    # "port":I
    :cond_3
    const-string v12, "http.route.default-proxy"

    invoke-interface {v6, v12}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    goto :goto_0

    .line 228
    :catch_0
    move-exception v4

    .line 229
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "maraket"

    invoke-static {v12, v4}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public executeWithRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->executeWithRetry(Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeWithRetry(Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "retryTimes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v3, "User-Agent"

    const-string v4, "AnZhi"

    invoke-interface {p1, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 257
    :cond_0
    return-object v1

    .line 244
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mShutdownRetry:Z

    if-nez v3, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 253
    :goto_1
    if-nez v1, :cond_0

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "maraket"

    invoke-static {v3, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 249
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "maraket"

    invoke-static {v3, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getAPNInfo()Lcom/anzhi/sdk/middle/net/ApnInfo;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mApnInfo:Lcom/anzhi/sdk/middle/net/ApnInfo;

    return-object v0
.end method

.method public getProxyParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "proxy":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 86
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public shutdownRetry()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->mShutdownRetry:Z

    .line 99
    return-void
.end method
