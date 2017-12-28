.class final Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;
.super Landroid/os/AsyncTask;
.source "GamePluginDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkPluginVersion(Landroid/content/Context;Ljava/lang/String;ILcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 143
    const/4 v12, 0x0

    aget-object v12, p1, v12

    const/4 v13, 0x1

    aget-object v13, p1, v13

    const/4 v14, 0x2

    aget-object v14, p1, v14

    invoke-static {v12, v13, v14}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getUpdateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 146
    .local v3, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 148
    .local v4, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 149
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_2

    .line 150
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    const-string v13, "utf-8"

    invoke-static {v12, v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "result":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, "json":Lorg/json/JSONObject;
    const/4 v12, 0x1

    const-string v13, "status"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 153
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "download_url"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "downloadUrl":Ljava/lang/String;
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "md5"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "md5":Ljava/lang/String;
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "mobile_sdk_version"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "sdkVersion":Ljava/lang/String;
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "sdk_version"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "pluginVersion":Ljava/lang/String;
    const-string v2, "0"

    .line 159
    .local v2, "force_update":Ljava/lang/String;
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "force_update"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 160
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "force_update"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 163
    const-string v2, "0"

    .line 165
    :cond_1
    iget-object v12, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->val$context:Landroid/content/Context;

    invoke-static {v12, v6, v10}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->savePluginMd5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u2211"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u2211"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 181
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v2    # "force_update":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "md5":Ljava/lang/String;
    .end local v7    # "pluginVersion":Ljava/lang/String;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v10    # "sdkVersion":Ljava/lang/String;
    :goto_0
    return-object v12

    .line 171
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 181
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_2
    :goto_1
    const/4 v12, 0x0

    goto :goto_0

    .line 174
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 179
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;

    if-eqz v4, :cond_0

    .line 188
    const-string v4, "\u2211"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "temp":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 190
    .local v1, "plugin_url":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 191
    .local v2, "plugin_version":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 192
    .local v0, "force_update":Ljava/lang/String;
    iget-object v4, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;

    invoke-interface {v4, v1, v2, v0}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;->onUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v0    # "force_update":Ljava/lang/String;
    .end local v1    # "plugin_url":Ljava/lang/String;
    .end local v2    # "plugin_version":Ljava/lang/String;
    .end local v3    # "temp":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v4, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;

    invoke-interface {v4}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;->onFail()V

    goto :goto_0
.end method
