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
.field private gameActivity:Landroid/app/Activity;

.field private gameId:Ljava/lang/String;

.field private iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

.field private rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "10003"

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameId:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/iqiyi/sdk/platform/GamePlatform;->getInstance()Lcom/iqiyi/sdk/platform/GamePlatform;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/iqiyi/sdk/platform/GamePlatform;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->getUserType()V

    return-void
.end method

.method public static getInstance()Lcom/rongmzw/frame/sdk/api/RongSdkController;
    .locals 1

    .prologue
    .line 52
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;->INSTANCE:Lcom/rongmzw/frame/sdk/api/RongSdkController;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController$MzwSdkControllerHolder;->access$100()Lcom/rongmzw/frame/sdk/api/RongSdkController;

    move-result-object v0

    return-object v0
.end method

.method private getUserType()V
    .locals 9

    .prologue
    .line 185
    :try_start_0
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    invoke-virtual {v6}, Lcom/iqiyi/sdk/platform/GamePlatform;->getQIYIType()Lorg/json/JSONObject;

    move-result-object v2

    .line 186
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 187
    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "type":Ljava/lang/String;
    const-string v6, "level"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 189
    .local v3, "level":I
    const-string v6, "is_game_vip"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "is_game_vip":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "province:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "province"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",city:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "city"

    .line 191
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",gender:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gender"

    .line 192
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",icon:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "icon"

    .line 193
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "s":Ljava/lang/String;
    const-string v6, "SDKPlatfrom"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", levele : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", is_game_vip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "is_game_vip":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "level":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callExitGame()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callExitGame......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatform;->iqiyiUserLogout(Landroid/app/Activity;)I

    .line 181
    return-void
.end method

.method public callInit(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/callback/RongCallback;)V
    .locals 4
    .param p1, "gameActivity"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "rongCallback"    # Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .prologue
    .line 57
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callInit......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    .line 59
    iput-object p3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    .line 60
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameId:Ljava/lang/String;

    new-instance v3, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {v3, p0, p3, p1}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/callback/RongCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/iqiyi/sdk/platform/GamePlatform;->initPlatform(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;)I

    .line 115
    return-void
.end method

.method public callLogin()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callLogin......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatform;->iqiyiUserLogin(Landroid/app/Activity;)I

    .line 121
    return-void
.end method

.method public callLogout()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callLogout......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatform;->iqiyiUserLogout(Landroid/app/Activity;)I

    .line 138
    return-void
.end method

.method public callOnDestoryInvoked()V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callOnDestoryInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public callOnNewIntentInvoked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callOnNewIntentInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public callOnPauseInvoked()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callOnPauseInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public callOnResumeInvoked()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callOnResumeInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public callOnStartInvoked()V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callOnStartInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public callOnStopInvoked()V
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callOnStopInvoked......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public callPay(Lcom/rongmzw/frame/sdk/domain/RongOrder;)V
    .locals 6
    .param p1, "rongMzwOrder"    # Lcom/rongmzw/frame/sdk/domain/RongOrder;

    .prologue
    .line 125
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getProductPrice()I

    move-result v2

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongOrder;->getUserData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyi/sdk/platform/GamePlatform;->iqiyiPayment(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public callStaPay()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callStaPay......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public callSubGameInfo(Lcom/rongmzw/frame/sdk/domain/RongGameInfo;)V
    .locals 3
    .param p1, "gameInfo"    # Lcom/rongmzw/frame/sdk/domain/RongGameInfo;

    .prologue
    .line 142
    sget-object v0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;

    const-string v1, "iqiyi callSubGameInfo......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->getGameAreaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iqiyi/sdk/platform/GamePlatform;->enterGame(Landroid/content/Context;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->getRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iqiyi/sdk/platform/GamePlatform;->createRole(Landroid/content/Context;Ljava/lang/String;)I

    .line 145
    return-void
.end method
