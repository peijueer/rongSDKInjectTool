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

.field protected loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

.field protected mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

.field protected payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/muzhiwan/sdk/core/MzwSdkController;->getInstance()Lcom/muzhiwan/sdk/core/MzwSdkController;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->gson:Lcom/google/gson/Gson;

    .line 22
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    .line 23
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .line 24
    iput-object v1, p0, Lcom/rongmzw/frame/sdk/impl/RongSdkRequest;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    return-void
.end method


# virtual methods
.method public initRequest(Landroid/app/Activity;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "initHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequest(Landroid/app/Activity;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 37
    return-void
.end method

.method public loginRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "loginHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .prologue
    .line 41
    invoke-static {p1, p2, p3}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 42
    return-void
.end method

.method public payRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "payHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .prologue
    .line 46
    invoke-static {p1, p2, p3}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 47
    return-void
.end method
