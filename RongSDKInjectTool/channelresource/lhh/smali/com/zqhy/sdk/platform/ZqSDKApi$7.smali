.class Lcom/zqhy/sdk/platform/ZqSDKApi$7;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->fileDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$apkIcon:Ljava/lang/String;

.field final synthetic val$finalFileName:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$urlPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$urlPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$finalFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$apkIcon:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 560
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$urlPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$finalFileName:Ljava/lang/String;

    const-string v4, ".apk"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$7;->val$apkIcon:Ljava/lang/String;

    # invokes: Lcom/zqhy/sdk/platform/ZqSDKApi;->initDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/zqhy/sdk/platform/ZqSDKApi;->access$100(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method
