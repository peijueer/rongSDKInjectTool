.class public Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;
.super Ljava/lang/Object;
.source "RongSdkRequest.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/api/RongSdkRequestApi;


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field protected gameActivity:Landroid/app/Activity;

.field protected gson:Lcom/google/gson/Gson;

.field protected initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

.field protected initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

.field protected initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

.field protected loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

.field protected loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

.field protected mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

.field protected payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

.field protected payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/muzhiwan/sdk/core/MzwSdkController;->getInstance()Lcom/muzhiwan/sdk/core/MzwSdkController;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    .line 23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->gson:Lcom/google/gson/Gson;

    .line 24
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    .line 25
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .line 26
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    .line 27
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    .line 28
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    .line 29
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->payResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    .line 30
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-void
.end method


# virtual methods
.method public initRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "initHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 43
    return-void
.end method

.method public loginRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "loginHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 48
    return-void
.end method

.method public payRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "payHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 53
    return-void
.end method
