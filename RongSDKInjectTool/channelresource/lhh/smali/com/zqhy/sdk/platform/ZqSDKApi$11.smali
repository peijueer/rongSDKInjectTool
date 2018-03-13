.class Lcom/zqhy/sdk/platform/ZqSDKApi$11;
.super Lcom/lzy/okhttputils/callback/StringCallback;
.source "ZqSDKApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->reFreshGameData(Landroid/app/Activity;Lcom/zqhy/sdk/model/GameDataParams;Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;

    invoke-direct {p0}, Lcom/lzy/okhttputils/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 852
    invoke-super {p0, p1, p2, p3}, Lcom/lzy/okhttputils/callback/StringCallback;->onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 853
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5931\u8d25\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;->reFreshFailure(Ljava/lang/String;)V

    .line 856
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

    .line 857
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .prologue
    .line 830
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .prologue
    .line 833
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;

    if-eqz v0, :cond_0

    .line 835
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 836
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 837
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 839
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;->reFreshOk()V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;

    invoke-interface {v1, v0}, Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;->reFreshFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 845
    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$11;->val$reFreshCallBack:Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nJson \u89e3\u6790\u9519\u8bef \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/zqhy/sdk/callback/GameDataReFreshCallBack;->reFreshFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
