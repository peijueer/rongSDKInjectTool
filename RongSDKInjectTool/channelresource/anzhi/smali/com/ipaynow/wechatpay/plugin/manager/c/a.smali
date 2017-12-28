.class public final Lcom/ipaynow/wechatpay/plugin/manager/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bc:Landroid/content/Context;

.field private final bh:Ljava/lang/String;

.field private final bi:Ljava/lang/String;

.field private final bj:Ljava/lang/String;

.field private final bk:Ljava/lang/String;

.field private final bl:Ljava/lang/String;

.field private final bm:Ljava/lang/String;

.field private final bn:Ljava/lang/String;

.field private final bo:Ljava/lang/String;

.field private final bp:Ljava/lang/String;

.field private final bq:Ljava/lang/String;

.field private final br:Ljava/lang/String;

.field private final bs:Ljava/lang/String;

.field private final bt:Ljava/lang/String;

.field private final bu:Ljava/lang/String;

.field private final bv:Ljava/lang/String;

.field private final bw:Ljava/lang/String;

.field private bx:Ljava/lang/String;

.field private by:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bc:Landroid/content/Context;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "so"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    .line 18
    const-string v0, "arm64-v8a"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bi:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bj:Ljava/lang/String;

    .line 20
    const-string v0, "armeabi"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bk:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bl:Ljava/lang/String;

    .line 22
    const-string v0, "armeabi-v7a"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bm:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bn:Ljava/lang/String;

    .line 24
    const-string v0, "mips"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bo:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bp:Ljava/lang/String;

    .line 26
    const-string v0, "mips64"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bq:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->br:Ljava/lang/String;

    .line 28
    const-string v0, "x86"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bs:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bt:Ljava/lang/String;

    .line 30
    const-string v0, "x86_64"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bu:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bh:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bv:Ljava/lang/String;

    .line 32
    const-string v0, "libonlywechat_plugin.so"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bw:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;-><init>()V

    return-void
.end method

.method public static K()Lcom/ipaynow/wechatpay/plugin/manager/c/a;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/c/b;->O()Lcom/ipaynow/wechatpay/plugin/manager/c/a;

    move-result-object v0

    return-object v0
.end method

.method private M()Z
    .locals 3

    .prologue
    .line 68
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "armeabi"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 70
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "libonlywechat_plugin.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 68
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "armeabi-v7a"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bn:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mips"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bp:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mips64"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->br:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "x86"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bt:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "x86_64"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bv:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "arm64-v8a"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->by:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bj:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    goto/16 :goto_0

    .line 75
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private N()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bc:Landroid/content/Context;

    const-string v2, "lib"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/io/File;

    const-string v3, "libonlywechat_plugin.so"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bc:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bx:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "libonlywechat_plugin.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/ipaynow/wechatpay/plugin/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final L()Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->N()Z

    .line 64
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 59
    :cond_0
    :try_start_0
    const-string v0, "onlywechat_plugin"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bc:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public final e(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/manager/c/a;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->bc:Landroid/content/Context;

    .line 51
    return-object p0
.end method
