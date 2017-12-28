.class public Lcom/iqiyi/sdk/platform/GamePushAdsService;
.super Landroid/app/Service;
.source "GamePushAdsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;,
        Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;
    }
.end annotation


# static fields
.field private static final PUSH_CODE:I = 0x1


# instance fields
.field private download_mode:I

.field private game_id:Ljava/lang/String;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private is_open:I

.field private mThread:Ljava/lang/Thread;

.field private next_open_time:I

.field private open_content:Ljava/lang/String;

.field private open_url:Ljava/lang/String;

.field private t:Ljava/util/Timer;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private tt:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 127
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timer:Ljava/util/Timer;

    .line 128
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->t:Ljava/util/Timer;

    .line 130
    new-instance v0, Lcom/iqiyi/sdk/platform/GamePushAdsService$1;

    invoke-direct {v0, p0}, Lcom/iqiyi/sdk/platform/GamePushAdsService$1;-><init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V

    iput-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iqiyi/sdk/platform/GamePushAdsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->notificationInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->open_content:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iqiyi/sdk/platform/GamePushAdsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 37
    iget v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->download_mode:I

    return v0
.end method

.method static synthetic access$600(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->open_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->startTimer()V

    return-void
.end method

.method private static day()I
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private static month()I
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private notificationInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 145
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, "status":I
    if-ne v3, v5, :cond_2

    .line 148
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    .local v0, "data":Lorg/json/JSONObject;
    const-string v4, "is_open"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const-string v4, "is_open"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->is_open:I

    .line 152
    :cond_0
    iget v4, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->is_open:I

    if-ne v4, v5, :cond_1

    .line 153
    const-string v4, "download_mode"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->download_mode:I

    .line 154
    const-string v4, "next_open_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->next_open_time:I

    .line 155
    const-string v4, "open_content"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->open_content:Ljava/lang/String;

    .line 156
    const-string v4, "open_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->open_url:Ljava/lang/String;

    .line 167
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "status":I
    :cond_1
    :goto_0
    return-void

    .line 160
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "status":I
    :cond_2
    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "status":I
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 112
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->is_open:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 113
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timerTask:Ljava/util/TimerTask;

    .line 117
    :cond_0
    new-instance v1, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;

    invoke-direct {v1, p0}, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;-><init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V

    iput-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timerTask:Ljava/util/TimerTask;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next_open_time------="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->next_open_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open_content------="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->open_content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->year()I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    invoke-static {}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->month()I

    move-result v2

    invoke-static {}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->day()I

    move-result v3

    iget v4, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->next_open_time:I

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 123
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v1, v2, v0}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    .line 125
    .end local v0    # "date":Ljava/util/Date;
    :cond_1
    return-void
.end method

.method private static year()I
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 97
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string v0, "PPSGamePushAdsService onBind"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    const-string v0, "PPSGamePushAdsService onCreate"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "PPSGamePushAdsService onDestroy"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 67
    const-string v0, "PPSGamePushAdsService onStartCommand"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 68
    const-string v0, "game_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->game_id:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->t:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->tt:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->tt:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->tt:Ljava/util/TimerTask;

    .line 81
    :cond_0
    new-instance v0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;

    invoke-direct {v0, p0}, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;-><init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V

    iput-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->tt:Ljava/util/TimerTask;

    .line 82
    iget-object v0, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->t:Ljava/util/Timer;

    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->tt:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 86
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public pushAds(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "game_id"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://mobile.game.iqiyi.com/api_advert/getAds?type=push&game_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "strUrl":Ljava/lang/String;
    new-instance v1, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;-><init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService;->mThread:Ljava/lang/Thread;

    .line 197
    return-void
.end method
