.class public abstract Lcom/zqhy/sdk/platform/ZqSDKApi;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"


# static fields
.field public static final PLATFORM_A07073SY:Ljava/lang/String; = "07073sy"

.field public static final PLATFORM_BTGAME:Ljava/lang/String; = "BTGAME"

.field public static final PLATFORM_LEHIHI:Ljava/lang/String; = "lehihi"


# instance fields
.field public final POLLING_FAILURE:I

.field public final POLLING_SUCCESS:I

.field btnCancel:Landroid/widget/Button;

.field btnConfirm:Landroid/widget/Button;

.field private commonDialog:Lcom/zqhy/sdk/ui/b;

.field downloadDialog:Lcom/zqhy/sdk/ui/b;

.field public isFloatWindowLog:Z

.field ivIcon:Landroid/widget/ImageView;

.field private mAppkey:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mPid:I

.field progressBar:Landroid/widget/ProgressBar;

.field protected reLoginCallBack:Lcom/zqhy/sdk/callback/ReLoginCallBack;

.field runnable:Ljava/lang/Runnable;

.field private sdkVersion:Ljava/lang/String;

.field tvName:Landroid/widget/TextView;

.field tvProgress:Lcom/zqhy/sdk/ui/NumberProgressView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "v8.0"

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->sdkVersion:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mPid:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mAppkey:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->POLLING_SUCCESS:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->POLLING_FAILURE:I

    .line 153
    new-instance v0, Lcom/zqhy/sdk/platform/ZqSDKApi$2;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/platform/ZqSDKApi$2;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;)V

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/zqhy/sdk/platform/ZqSDKApi;Ljava/lang/String;ILandroid/app/Activity;Lcom/zqhy/sdk/callback/InitCallBack;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zqhy/sdk/platform/ZqSDKApi;->handleSDKInfo(Ljava/lang/String;ILandroid/app/Activity;Lcom/zqhy/sdk/callback/InitCallBack;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zqhy/sdk/platform/ZqSDKApi;->initDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAllValueMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 767
    const-string v0, ""

    .line 768
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 771
    goto :goto_0

    .line 772
    :cond_0
    return-object v1
.end method

.method private getEncryptData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 752
    if-eqz p1, :cond_0

    .line 753
    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getAllValueMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before sign:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 758
    invoke-static {v0}, Lcom/zqhy/sdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after sign:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zqhy/sdk/platform/ZqSDKApi;->mapAndString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before encrypt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 763
    invoke-static {p2, v0}, Lcom/zqhy/sdk/utils/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/c;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleSDKInfo(Ljava/lang/String;ILandroid/app/Activity;Lcom/zqhy/sdk/callback/InitCallBack;)V
    .locals 6

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 283
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 285
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 287
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 288
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/zqhy/sdk/model/d;->a(I)V

    .line 289
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zqhy/sdk/model/d;->a(Ljava/lang/String;)V

    .line 291
    invoke-static {v0}, Lcom/zqhy/sdk/model/c;->a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/model/c;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->h()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    sput-object v1, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    .line 298
    :cond_0
    invoke-static {p3}, Lcom/zqhy/sdk/utils/b;->a(Landroid/content/Context;)Lcom/zqhy/sdk/utils/b$a;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/zqhy/sdk/utils/b$a;->c()I

    move-result v2

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zqhy/sdk/utils/b$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zqhy/sdk/utils/b$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&tgid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/zqhy/sdk/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "down_url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "versionCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Andsvscode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->r()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->r()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 308
    invoke-virtual {p0, p3, v3, v1}, Lcom/zqhy/sdk/platform/ZqSDKApi;->showDownloadTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_1
    if-eqz p4, :cond_2

    .line 313
    invoke-interface {p4}, Lcom/zqhy/sdk/callback/InitCallBack;->onInitSuccess()V

    .line 327
    :cond_2
    :goto_0
    return-void

    .line 316
    :cond_3
    if-eqz p4, :cond_2

    .line 317
    invoke-interface {p4, v2}, Lcom/zqhy/sdk/callback/InitCallBack;->onInitFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 322
    if-eqz p4, :cond_4

    .line 323
    const-string v1, "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38"

    invoke-interface {p4, v1}, Lcom/zqhy/sdk/callback/InitCallBack;->onInitFailure(Ljava/lang/String;)V

    .line 325
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 619
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "zq_sdk_layout_download"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 620
    const-string v0, "id"

    const-string v1, "ivIcon"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->ivIcon:Landroid/widget/ImageView;

    .line 621
    const-string v0, "id"

    const-string v1, "btnCancel"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->btnCancel:Landroid/widget/Button;

    .line 622
    const-string v0, "id"

    const-string v1, "tvName"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->tvName:Landroid/widget/TextView;

    .line 623
    const-string v0, "id"

    const-string v1, "btnDownload"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->btnConfirm:Landroid/widget/Button;

    .line 624
    const-string v0, "id"

    const-string v1, "progress_bar"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->progressBar:Landroid/widget/ProgressBar;

    .line 625
    const-string v0, "id"

    const-string v1, "tv_progress"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/NumberProgressView;

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->tvProgress:Lcom/zqhy/sdk/ui/NumberProgressView;

    .line 635
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    :cond_0
    invoke-static {p1}, Lcom/zqhy/sdk/utils/b;->a(Landroid/content/Context;)Lcom/zqhy/sdk/utils/b$a;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/zqhy/sdk/utils/b$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {v0}, Lcom/zqhy/sdk/utils/b$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 639
    iget-object v3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    :goto_0
    new-instance v0, Lcom/zqhy/sdk/ui/b;

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {p1, v1}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/16 v5, 0x11

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zqhy/sdk/ui/b;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    .line 649
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/zqhy/sdk/platform/ZqSDKApi$9;

    invoke-direct {v1, p0, p2, p4}, Lcom/zqhy/sdk/platform/ZqSDKApi$9;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->btnConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/zqhy/sdk/platform/ZqSDKApi$10;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/platform/ZqSDKApi$10;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0, v6}, Lcom/zqhy/sdk/ui/b;->setCancelable(Z)V

    .line 687
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0, v6}, Lcom/zqhy/sdk/ui/b;->setCanceledOnTouchOutside(Z)V

    .line 688
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->downloadDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->show()V

    .line 689
    return-void

    .line 642
    :cond_1
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/zqhy/sdk/ui/a;

    invoke-direct {v1}, Lcom/zqhy/sdk/ui/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 643
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public checkInit()Z
    .locals 1

    .prologue
    .line 692
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->c()Z

    move-result v0

    return v0
.end method

.method protected doInit(Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V
    .locals 8

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getPf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/d;->c(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/d;->f(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/zqhy/sdk/b/a;->a()Lcom/zqhy/sdk/b/a;

    move-result-object v0

    invoke-static {p1}, Lcom/zqhy/sdk/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getDesKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getSignKey()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/zqhy/sdk/platform/ZqSDKApi$4;

    invoke-direct {v7, p0, p2, p1, p4}, Lcom/zqhy/sdk/platform/ZqSDKApi$4;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;ILandroid/app/Activity;Lcom/zqhy/sdk/callback/InitCallBack;)V

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/zqhy/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/callback/StringCallback;)V

    .line 228
    return-void
.end method

.method public exit(Landroid/app/Activity;ILcom/zqhy/sdk/callback/ExitCallBack;Lcom/zqhy/sdk/callback/LocalExitCallBack;)V
    .locals 6

    .prologue
    .line 476
    if-eqz p4, :cond_0

    .line 477
    invoke-interface {p4}, Lcom/zqhy/sdk/callback/LocalExitCallBack;->onLocalExit()V

    .line 496
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-static {p1}, Lcom/zqhy/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 483
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->checkInit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    const-string v0, "SDK\u8fd8\u672a\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-static {p1}, Lcom/zqhy/sdk/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zqhy/sdk/model/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?gameid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&tgid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit_url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 495
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getKefuInfo()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/zqhy/sdk/ui/H5WebActivity;->goToWebActivity(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/zqhy/sdk/callback/SDKCallBack;)V

    goto :goto_0
.end method

.method public exitStartTime()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public fileDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 551
    const-string v0, ".apk"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    :goto_0
    invoke-static {}, Lcom/lzy/okhttpserver/download/DownloadService;->getDownloadManager()Lcom/lzy/okhttpserver/download/DownloadManager;

    move-result-object v6

    .line 555
    invoke-static {p2}, Lcom/lzy/okhttputils/OkHttpUtils;->get(Ljava/lang/String;)Lcom/lzy/okhttputils/request/GetRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lzy/okhttputils/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v7

    .line 557
    iget-object v8, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zqhy/sdk/platform/ZqSDKApi$7;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    invoke-virtual {v6, p2}, Lcom/lzy/okhttpserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 567
    invoke-virtual {v6, p2}, Lcom/lzy/okhttpserver/download/DownloadManager;->removeTask(Ljava/lang/String;)V

    .line 570
    :cond_0
    new-instance v0, Lcom/zqhy/sdk/platform/ZqSDKApi$8;

    invoke-direct {v0, p0, p1}, Lcom/zqhy/sdk/platform/ZqSDKApi$8;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;)V

    invoke-virtual {v6, v4, p2, v7, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;)V

    .line 612
    return-void

    :cond_1
    move-object v4, p3

    goto :goto_0
.end method

.method public abstract getDesKey()Ljava/lang/String;
.end method

.method public abstract getKefuInfo()Ljava/lang/String;
.end method

.method public abstract getPf(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPollingHttps()[Ljava/lang/String;
.end method

.method public getReLoginCallBack()Lcom/zqhy/sdk/callback/ReLoginCallBack;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->reLoginCallBack:Lcom/zqhy/sdk/callback/ReLoginCallBack;

    return-object v0
.end method

.method public abstract getSDKTag()Ljava/lang/String;
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSignKey()Ljava/lang/String;
.end method

.method public goToUserCenter(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    const-string v0, "SDK\u8fd8\u672a\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->d()Lcom/zqhy/sdk/model/e;

    move-result-object v0

    .line 711
    if-nez v0, :cond_1

    .line 712
    const-string v0, "\u60a8\u8fd8\u672a\u767b\u5f55\uff01"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {v0}, Lcom/zqhy/sdk/model/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-virtual {v0}, Lcom/zqhy/sdk/model/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/c;->e()Ljava/lang/String;

    move-result-object v2

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getSignKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 724
    const-string v5, "USERCENTER"

    invoke-static {v5, v3}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 727
    const-string v6, "token"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v1, "time"

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v1, "username"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v0, "gameid"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 735
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 736
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getDesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getSignKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getEncryptData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usercenter_url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 744
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->goToWebActivity(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "floatButton error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public init(Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V
    .locals 6

    .prologue
    .line 178
    iput p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mPid:I

    .line 179
    iput-object p3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mAppkey:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "SDK\u5df2\u7ecf\u521d\u59cb\u5316\u4e86"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p1}, Lcom/zqhy/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528\u3002"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->init(Landroid/app/Application;)V

    .line 189
    invoke-static {}, Lcom/lzy/okhttpserver/download/DownloadService;->getDownloadManager()Lcom/lzy/okhttpserver/download/DownloadManager;

    move-result-object v0

    invoke-static {}, Lcom/zqhy/sdk/model/b;->a()Lcom/zqhy/sdk/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/b;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadManager;->setTargetFolder(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zqhy/sdk/platform/ZqSDKApi$3;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->pollingUrls(Lcom/zqhy/sdk/callback/PollingCallBack;)V

    goto :goto_0
.end method

.method public isFloatWindowLogger()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->isFloatWindowLog:Z

    return v0
.end method

.method public logStartTime()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/zqhy/sdk/callback/LoginCallBack;)V
    .locals 3

    .prologue
    .line 333
    invoke-static {p1}, Lcom/zqhy/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528\u3002"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 335
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u518d\u8bd5\u3002"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->checkInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mPid:I

    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mAppkey:Ljava/lang/String;

    new-instance v2, Lcom/zqhy/sdk/platform/ZqSDKApi$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/zqhy/sdk/platform/ZqSDKApi$5;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/app/Activity;Lcom/zqhy/sdk/callback/LoginCallBack;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/zqhy/sdk/platform/ZqSDKApi;->init(Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login_url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 358
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getKefuInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/zqhy/sdk/ui/H5WebActivity;->goToWebActivity(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/zqhy/sdk/callback/SDKCallBack;)V

    goto :goto_0
.end method

.method protected mapAndString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 696
    const-string v0, ""

    .line 697
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 698
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 700
    goto :goto_0

    .line 701
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pay(Landroid/app/Activity;Lcom/zqhy/sdk/model/PayParams;Lcom/zqhy/sdk/callback/PayCallBack;)V
    .locals 17

    .prologue
    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->checkInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    const-string v2, "SDK\u8fd8\u672a\u521d\u59cb\u5316"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 470
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/zqhy/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    const-string v2, "\u7f51\u7edc\u4e0d\u53ef\u7528\u3002"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 371
    const-string v2, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u518d\u8bd5\u3002"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/c;->e()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/d;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 378
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getUsername()Ljava/lang/String;

    move-result-object v8

    .line 379
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 380
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getAmount()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getServerid()Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getExtendsinfo()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getServername()Ljava/lang/String;

    move-result-object v11

    .line 385
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getRole_id()Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getRole_name()Ljava/lang/String;

    move-result-object v12

    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/PayParams;->getProduct_name()Ljava/lang/String;

    move-result-object v13

    .line 389
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 390
    const-string v2, "1"

    .line 392
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 393
    const-string v3, "1"

    .line 395
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 396
    const-string v2, "servername\u5fc5\u586b"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 397
    const-string v2, "servername\u5fc5\u586b"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 400
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 401
    const-string v2, "username\u5fc5\u586b"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 402
    const-string v2, "username\u5fc5\u586b"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 405
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 406
    const-string v2, "token\u5fc5\u586b"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 407
    const-string v2, "token\u5fc5\u586b"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 410
    :cond_6
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 411
    const-string v2, "product_name\u5fc5\u586b"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 412
    const-string v2, "product_name\u5fc5\u586b"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 415
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_8

    .line 416
    const-string v2, "\u521d\u59cb\u5316gameid\u53c2\u6570\u9519\u8bef"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 417
    const-string v2, "\u521d\u59cb\u5316gameid\u53c2\u6570\u9519\u8bef"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 420
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_9

    .line 421
    const-string v2, "\u521d\u59cb\u5316pid\u53c2\u6570\u9519\u8bef"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 422
    const-string v2, "\u521d\u59cb\u5316pid\u53c2\u6570\u9519\u8bef"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 425
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 426
    const-string v4, "0"

    .line 427
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 428
    const-string v2, "role_name \u548c role_id \u5fc5\u586b\u4e00\u4e2a"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 429
    const-string v2, "\u652f\u4ed8\u5931\u8d25-\u53c2\u6570\u9519\u8bef\u3002"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 432
    :cond_a
    const-string v14, "0"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 433
    const-string v2, "role_id\u4e3a\u9ed8\u8ba4\u503c\u65f6\uff0crole_name\u5fc5\u586b"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 434
    const-string v2, "\u652f\u4ed8\u5931\u8d25-\u53c2\u6570\u9519\u8bef\u3002"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 438
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getSignKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 440
    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    .line 441
    const-string v16, "amount"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v10, "extendsinfo"

    invoke-interface {v15, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v2, "gameid"

    invoke-interface {v15, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v2, "pid"

    invoke-interface {v15, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v2, "product_name"

    invoke-interface {v15, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v2, "role_id"

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v2, "role_name"

    invoke-interface {v15, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v2, "serverid"

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v2, "servername"

    invoke-interface {v15, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v2, "time"

    invoke-interface {v15, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v2, "token"

    invoke-interface {v15, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v2, "username"

    invoke-interface {v15, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v2, "sign"

    invoke-static {v14}, Lcom/zqhy/sdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sign:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 456
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zqhy/sdk/platform/ZqSDKApi;->mapAndString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plainTextData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getDesKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/zqhy/sdk/utils/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zqhy/sdk/model/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/zqhy/sdk/utils/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pay_url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 465
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v3, v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->goToWebActivity(Landroid/app/Activity;Ljava/lang/String;ILcom/zqhy/sdk/callback/SDKCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 466
    :catch_0
    move-exception v2

    .line 467
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pay error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected pollingUrls(Lcom/zqhy/sdk/callback/PollingCallBack;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/zqhy/sdk/platform/ZqSDKApi$1;

    invoke-direct {v0, p0, p1}, Lcom/zqhy/sdk/platform/ZqSDKApi$1;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Lcom/zqhy/sdk/callback/PollingCallBack;)V

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mHandler:Landroid/os/Handler;

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method

.method public reFreshGameData(Landroid/app/Activity;Lcom/zqhy/sdk/model/GameDataParams;Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;)V
    .locals 15

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->checkInit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    if-eqz p2, :cond_0

    .line 781
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->checkGameData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 783
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/c;->e()Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zqhy/sdk/model/d;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 787
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 788
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 789
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getGame_level()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 790
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getServerid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 791
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getOp()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 793
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getServername()Ljava/lang/String;

    move-result-object v9

    .line 794
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getRole_id()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 795
    invoke-virtual/range {p2 .. p2}, Lcom/zqhy/sdk/model/GameDataParams;->getRole_name()Ljava/lang/String;

    move-result-object v11

    .line 797
    const-string v12, "android"

    .line 802
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 803
    const-string v14, "client_type"

    invoke-virtual {v13, v14, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string v12, "gameid"

    invoke-virtual {v13, v12, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v2, "game_level"

    invoke-virtual {v13, v2, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v2, "op"

    invoke-virtual {v13, v2, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v2, "pid"

    invoke-virtual {v13, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v2, "role_id"

    invoke-virtual {v13, v2, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v2, "role_name"

    invoke-virtual {v13, v2, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v2, "servername"

    invoke-virtual {v13, v2, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v2, "serverid"

    invoke-virtual {v13, v2, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v2, "token"

    invoke-virtual {v13, v2, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v2, "username"

    invoke-virtual {v13, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zqhy/sdk/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzy/okhttputils/OkHttpUtils;->post(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PostRequest;

    move-result-object v2

    .line 816
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v13}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 817
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/zqhy/sdk/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getDesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getSignKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v13, v3, v4}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getEncryptData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 823
    const-string v5, "data"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after encrypt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 826
    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-virtual {v2, v4, v3}, Lcom/lzy/okhttputils/request/PostRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 828
    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Lcom/lzy/okhttputils/request/PostRequest;->connTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v2

    check-cast v2, Lcom/lzy/okhttputils/request/PostRequest;

    const-wide/16 v4, 0x4e20

    .line 829
    invoke-virtual {v2, v4, v5}, Lcom/lzy/okhttputils/request/PostRequest;->readTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v2

    check-cast v2, Lcom/lzy/okhttputils/request/PostRequest;

    const-wide/32 v4, 0x927c0

    .line 830
    invoke-virtual {v2, v4, v5}, Lcom/lzy/okhttputils/request/PostRequest;->writeTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v2

    check-cast v2, Lcom/lzy/okhttputils/request/PostRequest;

    new-instance v3, Lcom/zqhy/sdk/platform/ZqSDKApi$11;

    move-object/from16 v0, p3

    invoke-direct {v3, p0, v0}, Lcom/zqhy/sdk/platform/ZqSDKApi$11;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;)V

    invoke-virtual {v2, v3}, Lcom/lzy/okhttputils/request/PostRequest;->execute(Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    const-string v2, "GameDataParams : \u4f20\u5165\u53c2\u6570\u9519\u8bef\u3002"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;->reFreshFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_2
    const-string v2, "\u60a8\u8fd8\u6ca1\u6709\u521d\u59cb\u5316\u3002"

    invoke-static {v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerReLoginCallBack(Lcom/zqhy/sdk/callback/ReLoginCallBack;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->reLoginCallBack:Lcom/zqhy/sdk/callback/ReLoginCallBack;

    .line 514
    return-void
.end method

.method public setFloatWindowLogger(Z)V
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->isFloatWindowLog:Z

    .line 124
    return-void
.end method

.method public setLogger(Z)V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/zqhy/sdk/utils/logger/a;->a()Lcom/zqhy/sdk/utils/logger/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/utils/logger/a$a;->a()Lcom/zqhy/sdk/utils/logger/a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/utils/logger/a$a;->a(I)Lcom/zqhy/sdk/utils/logger/a$a;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/zqhy/sdk/utils/logger/LogLevel;->FULL:Lcom/zqhy/sdk/utils/logger/LogLevel;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zqhy/sdk/utils/logger/a$a;->a(Lcom/zqhy/sdk/utils/logger/LogLevel;)Lcom/zqhy/sdk/utils/logger/a$a;

    .line 117
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/zqhy/sdk/utils/logger/LogLevel;->NONE:Lcom/zqhy/sdk/utils/logger/LogLevel;

    goto :goto_0
.end method

.method public showDownloadTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 523
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->commonDialog:Lcom/zqhy/sdk/ui/b;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/zqhy/sdk/ui/b;

    .line 525
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "zq_sdk_layout_dialog_download_tips"

    invoke-static {p1, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/high16 v1, 0x43a00000    # 320.0f

    .line 526
    invoke-static {p1, v1}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/16 v5, 0x11

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zqhy/sdk/ui/b;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->commonDialog:Lcom/zqhy/sdk/ui/b;

    .line 527
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->commonDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0, v6}, Lcom/zqhy/sdk/ui/b;->setCanceledOnTouchOutside(Z)V

    .line 528
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->commonDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0, v6}, Lcom/zqhy/sdk/ui/b;->setCancelable(Z)V

    .line 529
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->commonDialog:Lcom/zqhy/sdk/ui/b;

    const-string v1, "id"

    const-string v2, "tvUpdate"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zqhy/sdk/platform/ZqSDKApi$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/zqhy/sdk/platform/ZqSDKApi$6;-><init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi;->commonDialog:Lcom/zqhy/sdk/ui/b;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->show()V

    .line 537
    return-void
.end method
