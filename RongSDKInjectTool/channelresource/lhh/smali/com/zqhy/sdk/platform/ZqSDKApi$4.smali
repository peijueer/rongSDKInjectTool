.class Lcom/zqhy/sdk/platform/ZqSDKApi$4;
.super Lcom/lzy/okhttputils/callback/StringCallback;
.source "ZqSDKApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->doInit(Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

.field final synthetic val$pid:I

.field final synthetic val$t:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;ILandroid/app/Activity;Lcom/zqhy/sdk/callback/InitCallBack;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$pid:I

    iput-object p3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$t:Landroid/app/Activity;

    iput-object p4, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    invoke-direct {p0}, Lcom/lzy/okhttputils/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/lzy/okhttputils/callback/StringCallback;->onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 222
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    const-string v1, "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38"

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/InitCallBack;->onInitFailure(Ljava/lang/String;)V

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .prologue
    .line 212
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$pid:I

    iget-object v2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$t:Landroid/app/Activity;

    iget-object v3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$4;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    # invokes: Lcom/zqhy/sdk/platform/ZqSDKApi;->handleSDKInfo(Ljava/lang/String;ILandroid/app/Activity;Lcom/zqhy/sdk/callback/InitCallBack;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/zqhy/sdk/platform/ZqSDKApi;->access$000(Lcom/zqhy/sdk/platform/ZqSDKApi;Ljava/lang/String;ILandroid/app/Activity;Lcom/zqhy/sdk/callback/InitCallBack;)V

    .line 217
    return-void
.end method
