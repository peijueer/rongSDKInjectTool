.class public final Lcom/ipaynow/qqpay/plugin/manager/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final aB:Ljava/lang/String;

.field private final aC:Ljava/lang/String;

.field private final aD:Ljava/lang/String;

.field private final aE:Ljava/lang/String;

.field private final aF:Ljava/lang/String;

.field private final aG:Ljava/lang/String;

.field private final aH:Ljava/lang/String;

.field private final aI:Ljava/lang/String;

.field private final aJ:Ljava/lang/String;

.field private final aK:Ljava/lang/String;

.field private final aL:Ljava/lang/String;

.field private final aM:Ljava/lang/String;

.field private final aN:Ljava/lang/String;

.field private final aO:Ljava/lang/String;

.field private final aP:Ljava/lang/String;

.field private final aQ:Ljava/lang/String;

.field private aR:Ljava/lang/String;

.field private aS:Ljava/lang/String;

.field private ax:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->ax:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "so"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    const-string v0, "arm64-v8a"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aD:Ljava/lang/String;

    const-string v0, "armeabi"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aF:Ljava/lang/String;

    const-string v0, "armeabi-v7a"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aH:Ljava/lang/String;

    const-string v0, "mips"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aI:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aJ:Ljava/lang/String;

    const-string v0, "mips64"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mips64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aL:Ljava/lang/String;

    const-string v0, "x86"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aN:Ljava/lang/String;

    const-string v0, "x86_64"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aO:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aB:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aP:Ljava/lang/String;

    const-string v0, "libplugin_phone.so"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aQ:Ljava/lang/String;

    iput-object v2, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/qqpay/plugin/manager/b/a;-><init>()V

    return-void
.end method

.method public static F()Lcom/ipaynow/qqpay/plugin/manager/b/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/b/b;->J()Lcom/ipaynow/qqpay/plugin/manager/b/a;

    move-result-object v0

    return-object v0
.end method

.method private H()Z
    .locals 3

    const-string v0, "arm64-v8a"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "armeabi"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "armeabi"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aF:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->ax:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "libplugin_phone.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "armeabi-v7a"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "armeabi-v7a"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aH:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "mips"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mips"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "mips64"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mips64"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "x86"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "x86"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aN:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "x86_64"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "x86_64"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aP:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "arm64-v8a"

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aS:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aD:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private I()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->ax:Landroid/content/Context;

    const-string v2, "lib"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "libplugin_phone.so"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->ax:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->aR:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "libplugin_phone.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/ipaynow/qqpay/plugin/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final G()Z
    .locals 1

    invoke-direct {p0}, Lcom/ipaynow/qqpay/plugin/manager/b/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ipaynow/qqpay/plugin/manager/b/a;->I()Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    :try_start_0
    const-string v0, "onlyqq_plugin"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c(Landroid/content/Context;)Lcom/ipaynow/qqpay/plugin/manager/b/a;
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/manager/b/a;->ax:Landroid/content/Context;

    return-object p0
.end method
