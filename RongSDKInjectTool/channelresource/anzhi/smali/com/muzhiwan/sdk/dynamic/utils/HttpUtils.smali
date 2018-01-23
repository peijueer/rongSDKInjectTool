.class public Lcom/muzhiwan/sdk/dynamic/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/muzhiwan/sdk/dynamic/utils/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/dynamic/utils/HttpUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadPluginFile(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 18
    .param p0, "updateListener"    # Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;
    .param p1, "gameMainActivity"    # Landroid/app/Activity;
    .param p2, "updatePath"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onStart()V

    .line 131
    :cond_0
    const/4 v3, 0x0

    .line 132
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v13, 0x0

    .line 133
    .local v13, "inputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 134
    .local v11, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-static/range {p1 .. p1}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->getTempPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, "tempPath":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->getDestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "destPath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 139
    .local v10, "errorFlag":Z
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 140
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 141
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v16

    move/from16 v0, v16

    int-to-long v4, v0

    .line 142
    .local v4, "contentLength":J
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v12, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v16, 0x400

    :try_start_1
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 144
    .local v2, "buffer":[B
    const/4 v14, 0x0

    .line 145
    .local v14, "len":I
    const-wide/16 v6, 0x0

    .line 146
    .local v6, "currentProgress":J
    :cond_1
    :goto_0
    invoke-virtual {v13, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_3

    .line 147
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v2, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 148
    int-to-long v0, v14

    move-wide/from16 v16, v0

    add-long v6, v6, v16

    .line 149
    if-eqz p0, :cond_1

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onProgress(JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 153
    .end local v2    # "buffer":[B
    .end local v6    # "currentProgress":J
    .end local v14    # "len":I
    :catch_0
    move-exception v9

    move-object v11, v12

    .line 154
    .end local v4    # "contentLength":J
    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v10, 0x1

    .line 155
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    invoke-static {v11}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v13}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 161
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz p0, :cond_4

    if-eqz v10, :cond_4

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onError()V

    .line 174
    :cond_2
    :goto_3
    return-void

    .line 157
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "contentLength":J
    .restart local v6    # "currentProgress":J
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "len":I
    :cond_3
    invoke-static {v12}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v13}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    move-object v11, v12

    .line 159
    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 157
    .end local v2    # "buffer":[B
    .end local v4    # "contentLength":J
    .end local v6    # "currentProgress":J
    .end local v14    # "len":I
    :catchall_0
    move-exception v16

    :goto_4
    invoke-static {v11}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v13}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    throw v16

    .line 166
    :cond_4
    :try_start_3
    invoke-static {v15, v8}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LApkManager;->clearApk()V

    .line 168
    if-eqz p0, :cond_2

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->onComplete()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 171
    :catch_1
    move-exception v9

    .line 172
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 157
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "contentLength":J
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v16

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 153
    .end local v4    # "contentLength":J
    :catch_2
    move-exception v9

    goto :goto_1
.end method

.method private static getURL(Landroid/app/Activity;)Ljava/lang/String;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p0}, Lcom/muzhiwan/sdk/dynamic/utils/ParamsUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 178
    .local v1, "generalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "flag"

    const-string v7, "simplify"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "http://sdk.muzhiwan.com"

    .line 180
    .local v0, "defaultHost":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/init_config1.0.1.php"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "url":Ljava/lang/String;
    const-string v6, "data/.systemhost"

    invoke-static {v6}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "host":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/init_config1.0.1.php"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    :cond_0
    invoke-static {v5, v1}, Lcom/muzhiwan/sdk/dynamic/utils/ParamsUtils;->initGeneralKey(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "key":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v1}, Lcom/muzhiwan/sdk/dynamic/utils/ParamsUtils;->encodeParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "paramString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static parseConfig(Ljava/lang/String;)V
    .locals 13
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    const-string v11, "MZW_LOG_TAG"

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "jObj":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 79
    .local v0, "force":I
    const/4 v9, 0x1

    .line 80
    .local v9, "rollback":I
    const-string v10, ""

    .line 81
    .local v10, "updatePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 82
    .local v8, "outplugin_package":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 83
    .local v7, "outplugin_activity":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 85
    .local v4, "needupdate":Lorg/json/JSONObject;
    const-string v11, "force"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 86
    const-string v11, "force"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    :cond_0
    const-string v11, "rollback"

    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 90
    const-string v11, "rollback"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 93
    :cond_1
    const-string v11, "updatePath"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    const-string v11, "outplugin_package"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 95
    const-string v11, "outplugin_activity"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 96
    const-string v11, "needupdate"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v6, "outPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_2

    .line 102
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v5, "outActivityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 108
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 109
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "i":I
    :cond_3
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v3

    .line 114
    .local v3, "mzwSdkControllerInner":Lcom/muzhiwan/sdk/core/InnerController;
    invoke-virtual {v3, p0}, Lcom/muzhiwan/sdk/core/InnerController;->setInitJson(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v9}, Lcom/muzhiwan/sdk/core/InnerController;->setRollback(I)V

    .line 116
    invoke-virtual {v3, v10}, Lcom/muzhiwan/sdk/core/InnerController;->setUpdatePath(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v6}, Lcom/muzhiwan/sdk/core/InnerController;->setOutPackageNamePlugins(Ljava/util/List;)V

    .line 118
    invoke-virtual {v3, v5}, Lcom/muzhiwan/sdk/core/InnerController;->setOutActivityNamePlugins(Ljava/util/List;)V

    .line 120
    if-eqz v4, :cond_4

    .line 121
    const-string v11, "force_update"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/muzhiwan/sdk/core/InnerController;->setForce_update(I)V

    .line 123
    :cond_4
    return-void
.end method

.method public static requestConfig(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 38
    .local v4, "ins":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 40
    .local v7, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/muzhiwan/sdk/dynamic/utils/HttpUtils;->getURL(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, "url":Ljava/lang/String;
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 42
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 44
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 45
    .local v1, "buff":[B
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 47
    .local v6, "len":I
    :goto_0
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    .line 48
    const/4 v10, 0x0

    invoke-virtual {v8, v1, v10, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 55
    .end local v1    # "buff":[B
    .end local v6    # "len":I
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "url":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Throwable;
    .restart local v7    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    if-eqz v7, :cond_0

    .line 59
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 64
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 66
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 73
    :cond_1
    :goto_3
    return-void

    .line 50
    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buff":[B
    .restart local v6    # "len":I
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 51
    new-instance v5, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v5, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 53
    .local v5, "json":Ljava/lang/String;
    invoke-static {v5}, Lcom/muzhiwan/sdk/dynamic/utils/HttpUtils;->parseConfig(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 57
    if-eqz v8, :cond_3

    .line 59
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 64
    :cond_3
    :goto_4
    if-eqz v4, :cond_6

    .line 66
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v7, v8

    .line 69
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 60
    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 67
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 68
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 69
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 60
    .end local v1    # "buff":[B
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v9    # "url":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 67
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 68
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 57
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v7, :cond_4

    .line 59
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 64
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 66
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 69
    :cond_5
    :goto_7
    throw v10

    .line 60
    :catch_5
    move-exception v3

    .line 61
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 67
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 68
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 57
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buff":[B
    .restart local v6    # "len":I
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 54
    .end local v1    # "buff":[B
    .end local v6    # "len":I
    .end local v9    # "url":Ljava/lang/String;
    :catch_7
    move-exception v3

    goto :goto_1

    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buff":[B
    .restart local v5    # "json":Ljava/lang/String;
    .restart local v6    # "len":I
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_6
    move-object v7, v8

    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method
