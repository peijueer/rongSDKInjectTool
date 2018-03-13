.class Lcom/zhy/http/okhttp/OkHttpUtils$1;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/OkHttpUtils;->execute(Lcom/zhy/http/okhttp/request/RequestCall;Lcom/zhy/http/okhttp/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

.field final synthetic val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/OkHttpUtils;Lcom/zhy/http/okhttp/callback/Callback;I)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    iput-object p2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iput p3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    iget-object v1, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/zhy/http/okhttp/OkHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/zhy/http/okhttp/callback/Callback;I)V

    .line 128
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 135
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v5, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/zhy/http/okhttp/OkHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/zhy/http/okhttp/callback/Callback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-virtual {v2, p2, v3}, Lcom/zhy/http/okhttp/callback/Callback;->validateReponse(Lokhttp3/Response;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request failed , reponse\'s code is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v5, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/zhy/http/okhttp/OkHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/zhy/http/okhttp/callback/Callback;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    goto :goto_0

    .line 147
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-virtual {v2, p2, v3}, Lcom/zhy/http/okhttp/callback/Callback;->parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    iget-object v3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v4, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/zhy/http/okhttp/OkHttpUtils;->sendSuccessResultCallback(Ljava/lang/Object;Lcom/zhy/http/okhttp/callback/Callback;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    goto :goto_0

    .line 149
    .end local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->this$0:Lcom/zhy/http/okhttp/OkHttpUtils;

    iget-object v3, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$finalCallback:Lcom/zhy/http/okhttp/callback/Callback;

    iget v4, p0, Lcom/zhy/http/okhttp/OkHttpUtils$1;->val$id:I

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/zhy/http/okhttp/OkHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/zhy/http/okhttp/callback/Callback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 155
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    :cond_3
    throw v2
.end method
