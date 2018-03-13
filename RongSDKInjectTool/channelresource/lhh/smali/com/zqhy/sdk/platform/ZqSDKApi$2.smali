.class Lcom/zqhy/sdk/platform/ZqSDKApi$2;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$2;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$2;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    invoke-virtual {v1}, Lcom/zqhy/sdk/platform/ZqSDKApi;->getPollingHttps()[Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .line 158
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 160
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ok.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->get(Ljava/lang/String;)Lcom/lzy/okhttputils/request/GetRequest;

    move-result-object v0

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Lcom/lzy/okhttputils/request/GetRequest;->connTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttputils/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/GetRequest;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    aget-object v0, v2, v1

    sput-object v0, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$2;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$2;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v0, v0, Lcom/zqhy/sdk/platform/ZqSDKApi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
