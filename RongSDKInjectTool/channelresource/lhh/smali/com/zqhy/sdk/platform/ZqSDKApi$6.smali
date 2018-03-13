.class Lcom/zqhy/sdk/platform/ZqSDKApi$6;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->showDownloadTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$down_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$6;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$6;->val$down_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 532
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$6;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$6;->val$down_url:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zqhy/sdk/platform/ZqSDKApi;->fileDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method
