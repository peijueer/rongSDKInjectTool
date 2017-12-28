.class public Lcom/rongmzw/frame/sdk/api/RongSdkController;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/api/RongSdkApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;
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

.field private rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "1378375366Az26xatNyDOD5EM6D2ys"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->Appkey:Ljava/lang/String;

    .line 26
    const-string v0, "ug2KMdLi2JSr4naOE48XmL3h"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->AppSecret:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    .line 40
    new-instance v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {v0, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z

    return v0
.end method

.method static synthetic access$102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    return-object v0
.end method

.method public static getInstance()Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .locals 1

    .prologue
    .line 102
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/api/RongSdkController;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;->access$600()Lcom/rongmzw/frame/sdk/api/RongSdkController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callExitGame()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callExitGame......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->exitGame(Landroid/app/Activity;)V

    .line 197
    return-void
.end method

.method public callInit(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/callback/RongCallback;)V
    .locals 4
    .param p1, "gameActivity"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "rongCallback"    # Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .prologue
    .line 107
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callInit......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    .line 109
    iput-object p3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .line 110
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->Appkey:Ljava/lang/String;

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->AppSecret:Ljava/lang/String;

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anzhi/sdk/middle/manage/GameCallBack;)V

    .line 111
    return-void
.end method

.method public callLogin()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->login(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public callLogout()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->logout()V

    .line 149
    return-void
.end method

.method public callOnDestoryInvoked()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnDestoryInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onDestoryInvoked()V

    .line 191
    return-void
.end method

.method public callOnNewIntentInvoked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnNewIntentInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onNewIntentInvoked(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public callOnPauseInvoked()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnPauseInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onPauseInvoked()V

    .line 179
    return-void
.end method

.method public callOnResumeInvoked()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnResumeInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onResumeInvoked()V

    .line 167
    return-void
.end method

.method public callOnStartInvoked()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnStartInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onStartInvoked()V

    .line 173
    return-void
.end method

.method public callOnStopInvoked()V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callOnStopInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->onStopInvoked()V

    .line 185
    return-void
.end method

.method public callPay(Lcom/rongmzw/frame/sdk/domain/RongOrder;)V
    .locals 8
    .param p1, "rongMzwOrder"    # Lcom/rongmzw/frame/sdk/domain/RongOrder;

    .prologue
    .line 121
    sget-object v3, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anzhi callPay......rongMzwOrder--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "amount"

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getProductPrice()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v3, "productCode"

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v3, "productName"

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v3, "cpCustomInfo"

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getProductDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v3, "productCount"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
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

    .line 131
    const-string v3, "cpOrderTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->AppSecret:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/rongmzw/frame/sdk/util/Des3Util;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->AppSecret:Ljava/lang/String;

    invoke-static {v5}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->pay(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 132
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public callStaPay()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "anzhi callStaPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public callSubGameInfo(Lcom/rongmzw/frame/sdk/domain/RongGameInfo;)V
    .locals 3
    .param p1, "gameInfo"    # Lcom/rongmzw/frame/sdk/domain/RongGameInfo;

    .prologue
    .line 153
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anzhi callSubGameInfo.....gameInfo--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->subGameInfo(Ljava/lang/String;)V

    .line 155
    return-void
.end method
