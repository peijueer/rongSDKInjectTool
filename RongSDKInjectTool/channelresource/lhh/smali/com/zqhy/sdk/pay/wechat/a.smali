.class public Lcom/zqhy/sdk/pay/wechat/a;
.super Ljava/lang/Object;
.source "WeChatMethod_zqhy.java"


# static fields
.field private static c:Lcom/zqhy/sdk/pay/wechat/a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()Lcom/zqhy/sdk/pay/wechat/a;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/zqhy/sdk/pay/wechat/a;->c:Lcom/zqhy/sdk/pay/wechat/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/zqhy/sdk/pay/wechat/a;

    invoke-direct {v0}, Lcom/zqhy/sdk/pay/wechat/a;-><init>()V

    sput-object v0, Lcom/zqhy/sdk/pay/wechat/a;->c:Lcom/zqhy/sdk/pay/wechat/a;

    .line 41
    :cond_0
    sget-object v0, Lcom/zqhy/sdk/pay/wechat/a;->c:Lcom/zqhy/sdk/pay/wechat/a;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/zqhy/sdk/pay/wechat/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/zqhy/sdk/pay/wechat/a;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".file.fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :goto_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/zqhy/sdk/pay/wechat/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    if-eqz v2, :cond_0

    move v1, v0

    .line 164
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 165
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 166
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 125
    .line 127
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zqhy/sdk/pay/wechat/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 131
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zqhy/sdk/pay/wechat/a;->b:Ljava/lang/String;

    const-string v3, "ZqhySafePay.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 136
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 137
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 139
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 140
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 148
    :goto_1
    return v0

    .line 142
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 143
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zqhy/sdk/pay/wechat/a;->c()V

    .line 68
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zqhy/sdk/pay/wechat/a;->b:Ljava/lang/String;

    const-string v2, "ZqhySafePay.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v0, "apk file is not exists!"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/zqhy/sdk/pay/wechat/a;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/zqhy/sdk/model/b;->a()Lcom/zqhy/sdk/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/pay/wechat/a;->b:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/zqhy/sdk/pay/wechat/a;->a:Landroid/app/Activity;

    const-string v1, "ZqhySafePay.apk"

    iget-object v2, p0, Lcom/zqhy/sdk/pay/wechat/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/zqhy/sdk/pay/wechat/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iput-object p1, p0, Lcom/zqhy/sdk/pay/wechat/a;->a:Landroid/app/Activity;

    .line 49
    const-string v0, "com.zqhy.safepay"

    invoke-direct {p0, p1, v0}, Lcom/zqhy/sdk/pay/wechat/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p1}, Lcom/zqhy/sdk/pay/wechat/c;->a(Landroid/app/Activity;)Lcom/zqhy/sdk/pay/wechat/c;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p2, p3}, Lcom/zqhy/sdk/pay/wechat/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zqhy/sdk/pay/wechat/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/zqhy/sdk/pay/wechat/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v0, "\u8bf7\u8054\u7cfb\u5ba2\u670d\u5b89\u88c5\u6307\u8da3\u5b89\u5168\u6536\u94f6\u53f0"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 57
    :cond_1
    :try_start_1
    const-string v0, "\u8bf7\u5b89\u88c5\u6307\u8da3\u5b89\u5168\u6536\u94f6\u53f0"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
