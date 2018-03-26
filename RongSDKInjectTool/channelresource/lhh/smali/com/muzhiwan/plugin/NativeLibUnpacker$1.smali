.class final Lcom/muzhiwan/plugin/NativeLibUnpacker$1;
.super Ljava/lang/Thread;
.source "NativeLibUnpacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/plugin/NativeLibUnpacker;->unPackSOFromApk(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$toPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/muzhiwan/plugin/NativeLibUnpacker$1;->val$apkPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/muzhiwan/plugin/NativeLibUnpacker$1;->val$toPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/muzhiwan/plugin/NativeLibUnpacker$1;->val$apkPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 62
    .local v0, "apk":Ljava/util/zip/ZipFile;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/muzhiwan/plugin/NativeLibUnpacker$1;->val$toPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/muzhiwan/plugin/NativeLibUnpacker;->extractLibFile(Ljava/util/zip/ZipFile;Ljava/io/File;)Z
    invoke-static {v0, v3}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->access$000(Ljava/util/zip/ZipFile;Ljava/io/File;)Z

    move-result v2

    .line 63
    .local v2, "hasLib":Z
    if-eqz v2, :cond_0

    .line 64
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " The plugin is contains .so files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .end local v2    # "hasLib":Z
    :goto_0
    return-void

    .line 66
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    .restart local v2    # "hasLib":Z
    :cond_0
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " The plugin isn\'t contain any .so files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .end local v2    # "hasLib":Z
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
