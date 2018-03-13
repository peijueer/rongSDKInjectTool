.class public Lcom/zqhy/sdk/platform/LehihiGameSDKApi;
.super Lcom/zqhy/sdk/platform/ZqSDKApi;
.source "LehihiGameSDKApi.java"


# static fields
.field private static volatile instance:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zqhy/sdk/platform/ZqSDKApi;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->instance:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->instance:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    invoke-direct {v0}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;-><init>()V

    sput-object v0, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->instance:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->instance:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "9K!5s36M"

    return-object v0
.end method

.method public getKefuInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "\u5ba2\u670d-\u8d1d\u8d1d\uff1a3202631348\n\u5b98\u65b9\u73a9\u5bb6\u7fa4\uff1a122510665\n\u5ba2\u670d\u7535\u8bdd\uff1a027-88108655"

    return-object v0
.end method

.method public getPf(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p1}, Lcom/zqhy/sdk/utils/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPollingHttps()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/zqhy/sdk/a;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getSDKTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "BTGAME"

    return-object v0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "f8v*A39.H23rDc58Jd"

    return-object v0
.end method
