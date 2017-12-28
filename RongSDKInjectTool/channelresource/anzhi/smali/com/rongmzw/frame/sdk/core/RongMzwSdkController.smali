.class public Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;
.super Ljava/lang/Object;
.source "RongMzwSdkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$MzwSdkControllerHolder;
    }
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private AppSecret:Ljava/lang/String;

.field private Appkey:Ljava/lang/String;

.field private anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

.field private callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

.field private gameActivity:Landroid/app/Activity;

.field private hasLoopered:Z

.field private rongMzwInitCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;

.field private rongMzwLoignCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;

.field private rongMzwPayCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;

.field private rongMzwStaPayCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwStaPayCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "1378375366Az26xatNyDOD5EM6D2ys"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->Appkey:Ljava/lang/String;

    .line 27
    const-string v0, "ug2KMdLi2JSr4naOE48XmL3h"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->AppSecret:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    .line 44
    new-instance v0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;

    invoke-direct {v0, p0}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;-><init>(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwInitCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwLoignCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwPayCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;

    return-object v0
.end method

.method public static getInstance()Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;
    .locals 1

    .prologue
    .line 93
    # getter for: Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;
    invoke-static {}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$MzwSdkControllerHolder;->access$600()Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "anzhi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start destory..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public doLogin(Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;)V
    .locals 2
    .param p1, "loginCallback"    # Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwLoignCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;

    .line 105
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->login(Landroid/app/Activity;)V

    .line 106
    return-void
.end method

.method public doLogout()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwLoignCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;

    const/4 v1, 0x6

    const-string v2, "\u767b\u51fa\u64cd\u4f5c"

    invoke-interface {v0, v1, v2}, Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;->onResult(ILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public doPay(Lcom/rongmzw/frame/sdk/service/RongMzwOrder;Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;)V
    .locals 8
    .param p1, "mzwOrder"    # Lcom/rongmzw/frame/sdk/service/RongMzwOrder;
    .param p2, "payCallback"    # Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;

    .prologue
    .line 109
    iput-object p2, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwPayCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;

    .line 110
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "amount"

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v3, "productCode"

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->getProductid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v3, "productName"

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->getProductname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v3, "cpCustomInfo"

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->getProductdesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v3, "productCount"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v3, "cpOrderId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anzhi_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v3, "cpOrderTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->AppSecret:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/rongmzw/frame/sdk/core/util/Des3Util;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->AppSecret:Ljava/lang/String;

    invoke-static {v5}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->pay(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 120
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public exitGame()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public init(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "initCallback"    # Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->gameActivity:Landroid/app/Activity;

    .line 99
    iput-object p3, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwInitCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;

    .line 100
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->Appkey:Ljava/lang/String;

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->AppSecret:Ljava/lang/String;

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anzhi/sdk/middle/manage/GameCallBack;)V

    .line 101
    return-void
.end method
