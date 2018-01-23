.class public final Lcom/ipaynow/wechatpay/plugin/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 19
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 24
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 29
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 31
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 35
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 36
    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 38
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 39
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 48
    :goto_1
    return-void

    .line 25
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 44
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method
